import pandas
import numpy
from RecommenderNet import RecommenderNet
import socket
import threading

EMBEDDING_SIZE = 50
model_path = "../pythonProject/model/"

# 테이블 정보
data_content = pandas.read_csv('C:\python\pythonProject\crawling\data_content.csv')
data_ratings = pandas.read_csv('C:\python\pythonProject\\archive\\ratings.csv')

data = pandas.merge(data_content, data_ratings, on='contentNumber', how='inner') # 평가 테이블에 영화 정보 합치기

# userId 중복 제거 후 리스트에 담기
user_numbers = data["userNumber"].unique().tolist()
content_numbers = data["contentNumber"].unique().tolist()

# key=id , value=인덱스 인 딕셔너리 생성
user2user_encoded = {x:i for i, x in enumerate(user_numbers)}
content2content_encoded = {x:i for i, x in enumerate(content_numbers)}

# key=인덱스 , value=id 인 딕셔너리 생성
user_encoded2user = {i:x for i, x in enumerate(user_numbers)}
content_encoded2content = {i:x for i, x in enumerate(content_numbers)}

# userNumber contentNumber 숫자로 변경
data["user"] = data["userNumber"].map(user2user_encoded)
data["content"] = data["contentNumber"].map(content2content_encoded)

data["rating"] = data["rating"].values.astype(numpy.float32)

# 전체 사용자 수와 영화 수
num_users = len(user2user_encoded)  # 671
num_content = len(content2content_encoded)   # 614
min_rating = min(data["rating"])
max_rating = max(data["rating"])

def binder(client_socket, addr):
    print("Connected by ", addr)
    try:
        while True:
            login_userNumber = client_socket.recv(4)
            login_userNumber_length = int.from_bytes(login_userNumber, "little")
            login_userNumber = client_socket.recv(login_userNumber_length)
            userNumber = login_userNumber.decode()
            print("자바에서 넘어온 userNumber : {}".format(userNumber))
            print(type(userNumber))
            userNumber = int(userNumber)

            content_watched_by_user = data[data.userNumber == userNumber]  # 사용자가 본 영화 담기

            content_not_watched = data_content[~data_content["contentNumber"].isin(
                content_watched_by_user.contentNumber.values)]["contentNumber"]
            content_not_watched = list(set(content_not_watched).intersection(
                set(content2content_encoded.keys())))
            content_not_watched = [[content2content_encoded.get(x)] for x in content_not_watched]

            user_encoder = user2user_encoded.get(userNumber)
            user_contnet_array = numpy.hstack(
                ([[user_encoder]] * len(content_not_watched), content_not_watched)
            )

            # flatten() : 다차원 배열 공간을 1차원으로 평탄화해주는 함수
            model = RecommenderNet(num_users, num_content, EMBEDDING_SIZE)
            ratings = model.predict(user_contnet_array).flatten()
            top_ratings_indices = ratings.argsort()[-10:][::-1]

            recommended_content_numbers = [content_encoded2content.get(content_not_watched[x][0]) for x in top_ratings_indices]

            print("예상 평점 TOP 10")
            recommended_content = data_content[data_content["contentNumber"].isin(recommended_content_numbers)]
            for row in recommended_content.itertuples():
                print(row.contentNumber)
                content_data = "{}\n".format(row.contentNumber)
                content_data_length = len(content_data)
                client_socket.send(content_data_length.to_bytes(4, byteorder="little"))
                client_socket.send(content_data.encode())
            client_socket.close()

    except Exception as e:
        print(e)
        print("Except: ", addr)

# 소켓 객체 생성 - 패밀리, 타입(스트림소켓) 두 가지 인자를 받음
server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
# WinError 10048 에러 해결을 위한 코드
server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
# 서버가 소켓을 포트에 맵핑 - 호스트와 포트번호를 튜플로 감싸서 전달
server_socket.bind(("", 9001))
# 서버가 클라이언트의 접속을 허용
server_socket.listen()

try:
    # 클라이언트가 접속하기 전까지 서버는 실행되어야함
    while True:
        # accrpt()에서 대기하다가 클라이언트가 접속하면 새로운 소켓을 리턴
        client_socket, addr = server_socket.accept()
        print("접속한 클라이언트 주소",addr)
        # 쓰레드를 사용해서 대기
        th = threading.Thread(target=binder, args=(client_socket, addr))
        th.start()

except:
    print("server")

finally:
    # 종료
    server_socket.close()


