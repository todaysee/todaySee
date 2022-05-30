/* homeList_genres.jsp */

// 무한 스크롤을 위한 코드
/*
$('#scrollGenres').scroll(function(){
	let scrollTop = $(this).csrollTop();	// 스크롤바의 상단 위치
	let scrollHeight = $(this).height(); 	//스크롤바를 갖는 div의 높이
	let contentHeight = $('.container').height();//문서 전체 내용을 갖는 div의 높이
    if (scrollTop + scrollHeight + 1 >= contentHeight) { // 스크롤바가 아래 쪽에 위치할 때r
        $('#testScrollNext').trigger('click'); // 버튼 클릭하여 페이징 작동
    }
});

let totalPages = 1;

function fetchNotes(startPage){
	$.ajax({
		type:"GET",
		url:"http://localhost:8080/search/genres",
		data:{
			page:startPage,
			size:16	// 가져올 글의 개수
		}
	})
}
*/