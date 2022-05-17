$(function(){
		
		const page = document.title

		
		if('관리자 영화차트' == page){
			$('#clickAdmin').addClass('menu-open')
			$('#titleChart').addClass('active')
			$('#chart1').addClass('active')
			$('#clickChart').addClass('menu-open')
		}

		if('관리자 고객차트' == page){
			$('#clickChart').addClass('menu-open')
			$('#clickAdmin').addClass('menu-open')
			$('#titleChart').addClass('active')
			$('#chart2').addClass('active')
		
		}
		
		if('영상 관리' == page){
			$('#clickChart').addClass('menu-open')
			$('#titleAdmin').addClass('active')
			$('#clickAdmin').addClass('menu-open')
			
			$('#movieAdmin').addClass('active')
			$('admin').addClass('active')
		}


		if('유저 신고관리' == page){
			$('#clickChart').addClass('menu-open')
			$('#clickAdmin').addClass('menu-open')
			$('#titleAdmin').addClass('active')
			$('#admin').addClass('active')
		
			
		}


		if('회원관리' == page){
			$('#clickChart').addClass('menu-open')
			$('#clickAdmin').addClass('menu-open')
			$('#titleUserList').addClass('active')
			$('#clickUserList').addClass('menu-open')
			
			
		}
		
		$('#userDetail').css(function(){
			display: "none"
		})
		

		
		  
	

	  
		
		
		
})