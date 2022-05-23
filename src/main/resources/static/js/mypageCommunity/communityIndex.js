/* 모달창 버튼 닫기 */
$(function(){
	$('.close').click(function(){
		$('#modalReport').modal('hide');
})
$('.btn-secondary').click(function(){
		$('#modalReport').modal('hide');
})

      let com_list = false;
      $('.community_like').click(function(){

         // 클릭 시 하트 색 빨간색으로 변경
         if(!com_list){
            $(this).children('i').css('color', '#e50916')
            com_list = true;
         }else{
            $(this).children('i').css('color', '#6B7C8F')
            com_list = false;
         }
         
      })// end of $('.community_like').click()

	
})

