/* homeList_ott.jsp */

let page = 0;
let totalPages;
$('#genresLoadMoreBtn').click(function(){
	page = page+1;
	// 현재 url에서 genreNumber 얻기
	const urlParams = new URL(location.href).searchParams;
	let ottNumber = urlParams.get('ottNumber');
	$.ajax({
		type : "GET",	// 요청 메소드 방식
		url : "/search/ott/paging",
		data : {
				ottNumber : ottNumber,
				page : page
				},
		contentType : 'application/x-www-form-urlencoded;charset=utf-8',
		success : function(contentList){
			totalPages = contentList.totalPages
			$.each(contentList.content, (i, content) => {
				let contentRow = '<div class="col-xl-3 col-lg-4 col-md-6">'
					+ ' <div class="gen-carousel-movies-style-3 movie-grid style-3">'
					+ ' <div class="gen-movie-contain">'
					+ ' <div class="gen-movie-img">'
					+ ' <img src="'+content.contentMainImagesUrl+'" alt="streamlab-image">'
					+ ' <div class="gen-movie-action">'
					+ ' <a href="/details/'+content.contentNumber+'" class="gen-button">'
					+ ' <i class="fa fa-play"></i>'
					+ ' </a>'
					+ ' </div>'
					+ ' </div>'
					+ ' <div class="gen-info-contain">'
					+ ' <div class="gen-movie-info">'
					+ ' <h3><a href="/details/'+content.contentNumber+'">'+content.contentTitle+'</a></h3>'
					+ ' </div>'
					+ ' <div class="gen-movie-meta-holder">'
					+ ' <ul>'
					+ ' <li>'+content.contentRunningTime+'</li>'
					+ ' </li><span>'
				$.each(content.contentGenre, (i, genres) => {
					contentRow = contentRow 
						+ '<a href="/search/genres?genreNumber='+genres.genre.genreNumber+'&page=1">'
						+ genres.genre.genreName+'</a> '
				});// end of $.each - 장르
				contentRow = contentRow 
						+ '</span></li></ul></div></div></div></div>'
				$('.contentList').append(contentRow);
				});// end of $.each - 콘텐츠
				
								
				if(page == (totalPages-1)){
					$('#genresLoadMoreBtn').css("visibility", "hidden");
				}// end of if - 현재페이지와 totalPage가 같으면 스타일을 visibility: hidden 로 바꿔주기
		},
		error : function(e){
			console.log("ERROR: ", e);
			alert('실패')
		}
	})// end of Ajax
})//end of $('#genresLoadMoreBtn').click





/* homeList_content.jsp */