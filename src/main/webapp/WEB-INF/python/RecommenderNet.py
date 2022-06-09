import pandas
import numpy

import tensorflow
from tensorflow import keras
from tensorflow.keras import layers
model_path = "../pythonProject/model/"
data_content = pandas.read_csv('C:\python\pythonProject\crawling\data_content.csv')
data_ratings = pandas.read_csv('C:\python\pythonProject\\archive\\ratings.csv')

data = pandas.merge(data_content, data_ratings, on='contentNumber', how='inner') # 평가 테이블에 콘텐츠 정보 합치기

# userId 중복 제거 후 리스트에 담기
user_numbers = data["userNumber"].unique().tolist()
content_numbers = data["contentNumber"].unique().tolist()

# key=id , value=인덱스 인 딕셔너리 생성
user2user_encoded = {x:i for i, x in enumerate(user_numbers)}
content2content_encoded = {x:i for i, x in enumerate(content_numbers)}


# key=인덱스 , value=id 인 딕셔너리 생성
user_encoded2user = {i:x for i, x in enumerate(user_numbers)}
content_encoded2content = {i:x for i, x in enumerate(content_numbers)}

# userId와 movieId를 숫자로 변경
data["user"] = data["userNumber"].map(user2user_encoded)
data["content"] = data["contentNumber"].map(content2content_encoded)

data["rating"] = data["rating"].values.astype(numpy.float32)

# 전체 사용자 수와 영화 수
num_users = len(user2user_encoded)  # 671
num_content = len(content2content_encoded)   # 614
print("num_users",num_users)
print("num_content",num_content)

min_rating = min(data["rating"])
max_rating = max(data["rating"])


# training set, validation set 만들기
data = data.sample(frac=1, random_state=42)
x = data[["user", "content"]].values

# 정규화 - 학습하기 쉽게 0~1사이로 만들어줌
y = data["rating"].apply(lambda x: (x - min_rating) / (max_rating - min_rating)).values

# training set : 80%, validation set : 20%
train_indices = int(0.8 * data.shape[0])  # shape[0] 행의 개수, shape[1] 열의 개수

x_train, x_val, y_train, y_val = (
    x[:train_indices],
    x[train_indices:],
    y[:train_indices],
    y[train_indices:],
)


##################################################
# 모델
EMBEDDING_SIZE = 50

class RecommenderNet(keras.Model):
    def __init__(self, num_users, num_movies, embedding_size, **kwargs):
        super(RecommenderNet, self).__init__(**kwargs)
        self.num_users = num_users
        self.num_movies = num_movies
        self.embedding_size = embedding_size
        self.user_embedding = layers.Embedding(
            num_users,
            embedding_size,
            embeddings_initializer="he_normal",
            embeddings_regularizer=keras.regularizers.l2(1e-6),
        )
        self.user_bias = layers.Embedding(num_users, 1)
        self.movie_embedding = layers.Embedding(
            num_movies,
            embedding_size,
            embeddings_initializer="he_normal",
            embeddings_regularizer=keras.regularizers.l2(1e-6),
        )
        self.movie_bias = layers.Embedding(num_movies, 1)

    def call(self, inputs):
        user_vector = self.user_embedding(inputs[:, 0])
        user_bias = self.user_bias(inputs[:, 0])
        movie_vector = self.movie_embedding(inputs[:, 1])
        movie_bias = self.movie_bias(inputs[:, 1])
        dot_user_movie = tensorflow.tensordot(user_vector, movie_vector, 2)
        # Add all the components (including bias)
        # 모든 구성 요소 추가 ( 편향 포함 )
        x = dot_user_movie + user_bias + movie_bias
        # The sigmoid activation forces the rating to between 0 and 1
        # 시그모이드를 통해 rating이 0과 1사이의 값으로 조절됨
        return tensorflow.nn.sigmoid(x)

model = RecommenderNet(num_users, num_content, EMBEDDING_SIZE)
model.compile(
    loss=tensorflow.keras.losses.BinaryCrossentropy(), optimizer=keras.optimizers.Adam(lr=0.001)
)

# 쪼갠 데이터를 베이스로 모델 학습시키기
history = model.fit(
    x=x_train,
    y=y_train,
    batch_size=64,
    epochs=5,    # 전체 데이터를 몇 번 반복하여 학습할 것인가
    verbose=1,
    validation_data=(x_val, y_val),
)
score = model.evaluate(x_train, y_train, verbose=0)

# 모델 저장하기
model.save_weights(model_path)