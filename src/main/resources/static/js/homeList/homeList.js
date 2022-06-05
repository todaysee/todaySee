/* homeList_genres.jsp */

$('#genresLoadMoreBtn').click(function(){
	
	// 현재 url에서 genreNumber 얻기
	const urlParams = new URL(location.href).searchParams;
	let genreNumber = urlParams.get('genreNumber');
	$.ajax({
		type : "GET",	// 요청 메소드 방식
		url : "/search/genres",
		data : {
				genreNumber : genreNumber,
				page:startPage,
				size:16
				},
		contentType : 'application/x-www-form-urlencoded;charset=utf-8',
		success : function(contentList){
			
		},
		error : function(){
			
		}
	})// end of ajax
	
})//end of $('#genresLoadMoreBtn').click
