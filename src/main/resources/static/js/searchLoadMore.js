//ajax 처리가 아닌 프론트단에서 검색 기능 밑 더보기 기능 구현 소스코드
/*
* 페이지 로딩시 불러와진 값들을 해당하는 범위에서 필터를 통해서 태그안에 텍스트를 검색함
* 마찬가지로 더보기 역시 css통해서 해당하는 범위를 display:none 처리하고 버튼 이벤트로 
* 정해진 수량만큼 공개처리함
*
* */


$("#search").on("keyup", function () {
    let value = $(this).val().toLowerCase();
    if(value === ''){ // 검색칸이 비었을때 창을 다시 세팅함
        $('.reviewBody').css('display','none');
        $('.reviewBody').slice(0, 8).show();
    }else {
        $(".reviewBody").filter(function () {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
    }
});
plusReview();
function plusReview(){
    $(".reviewBody").slice(0, 8).show(); // select the first ten
    $("#load").click(function(e){ // click event for load more
        e.preventDefault();
        $(".reviewBody:hidden").slice(0, 4).show(); // select next 10 hidden divs and show them
        if($(".reviewBody:hidden").length == 0){ // check if any hidden divs still exist
            $("#load").css('display','none');
            $("#end").show();
        }
    });
}