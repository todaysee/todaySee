<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="../../resources/css/style.css">
</head>
<body>
	<div class="search">
		<div class="input-bar input-group w-50">
			<input type="text" placeholder="검색어 입력" autocomplete="off">
			<button type="button" class="dictate btn btn-secondary">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
					fill="currentColor" class="bi bi-mic-fill" viewBox="0 0 16 16">
				   <path d="M5 3a3 3 0 0 1 6 0v5a3 3 0 0 1-6 0V3z"/>
 				    <path d="M3.5 6.5A.5.5 0 0 1 4 7v1a4 4 0 0 0 8 0V7a.5.5 0 0 1 1 0v1a5 5 0 0 1-4.5 4.975V15h3a.5.5 0 0 1 0 1h-7a.5.5 0 0 1 0-1h3v-2.025A5 5 0 0 1 3 8V7a.5.5 0 0 1 .5-.5z"/></svg>
			</button>
		</div>
	</div>

	<script>
	const $ = (el) => document.querySelector(el);
	
	const store = {
		texts : '',
		isRecognizing: true
	};

	(() => {
		/* Speech API start */
		let SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;
		if(!("webkitSpeechRecognition" in window)){
			alert("지원 안되는 브라우저 입니다. !")
		} else {			
			const recognition = new SpeechRecognition();
			recognition.interimResults = true; // true면 음절을 연속적으로 인식하나 false면 한 음절만 기록함
			recognition.lang = 'ko-KR'; // 값이 없으면 HTML의 <html lang="en">을 참고합니다. ko-KR, en-US
			recognition.continuous = false; //각 인식에 대해 연속 결과가 반환되는지 아니면 단일 결과만 반환되는지를 제어합니다. 기본값은 단일( false.)
			recognition.maxAlternatives = 20000; // maxAlternatives가 숫자가 작을수록 발음대로 적고, 크면 문장의 적합도에 따라 알맞은 단어로 대체합니다.

			recognition.onspeechend = function() { // 음성 감지가 끝날때 실행될 이벤트
				recognition.stop();
				$('.dictate').classList.remove("on");
				store.isRecognizing = true;
			};

			recognition.onresult = function(e) { //result이벤트는 음성 인식 서비스가 결과를 반환할 때 시작됩니다.
				store.texts = Array.from(e.results)
								.map(results => results[0].transcript).join("");

				console.log(store.texts)
				$('input').value = store.texts;
			};
			/* // Speech API END */

			const active = () => {
				$('.dictate').classList.add('on')
				recognition.start();
				store.isRecognizing = false;
			};

			const unactive = () => {
				$('.dictate').classList.remove('on')
				recognition.stop();
				store.isRecognizing = true;
			};

			$('.dictate').addEventListener('click', () => {
				if(store.isRecognizing){
					active();
				} else {
					unactive();
				}
			});
		}
	})();
</script>
</body>
</html>
