$("#search").on("keyup", function () {
    var value = $(this).val().toLowerCase();
    if(value === ''){
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