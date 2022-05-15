$(function(){
		
		const page = document.title

		
		if('관리자 영화차트' == page){
			$('#titleChart').addClass('active')
			$('#chart1').addClass('active')
			$('#clickChart').addClass('menu-open')
		}

		if('관리자 고객차트' == page){
			$('#titleChart').addClass('active')
			$('#chart2').addClass('active')
			$('#clickChart').addClass('menu-open')
		}
})