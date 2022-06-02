var ws;
	window.onload = function(){
		getRoom();
		createRoom();
	}

	function getRoom(){
		commonAjax('/getRoom', "", 'post', function(result){
			createChatingRoom(result);
		});
	}
	
	function createRoom(){
		$("#createRoom").click(function(){
			var msg = {	roomName : $('#roomName').val()	};

			commonAjax('/createRoom', msg, 'post', function(result){
				createChatingRoom(result);
			});

			$("#roomName").val("");
		});
	}

	function goRoom(number, name){
		location.href="/moveChating?roomName="+name+"&"+"roomNumber="+number;
	}

	function createChatingRoom(res){
		console.log(res)
		if(res != null){
			/*var tag = "<tr><th class='num'>순서</th><th class='room'>방 이름</th><th class='go'></th></tr>";*/
			var tag = ''
			var tag1 = ''
			res.forEach(function(d, idx){
				console.log(d)
				
				var rn = d.chatroomName.trim();
				var roomNumber = d.chatroomNumber;
				tag += '<div class="item d-flex justify-content-between align-items-center cricle">'+
					'<div class="figure">'+
						'<img src="../images/mypageCommunity/user/user-55.jpg" class="rounded-circle" alt="image" onclick="goRoom(\''+roomNumber+'\', \''+rn+'\')">'+
					'</div>'+
					'<div class="text">'+
						'<h4>'+
						/*'<a>'+ "<"+(idx+1)+">" +'</a>'+*/
						'<a>'+ rn +'</a>'+
						'</h4>'+
						'<span>'+ '행복한 시간 보내세요.' +'</span>'+
					'</div>'+
				'</div>'
				
				tag1 +=
            '<div class="contact-item">'+
                '<a href="#">' + '<img src="/images/mypageCommunity/user/user-18.jpg" class="rounded-circle" alt="image" onclick="goRoom(\''+roomNumber+'\', \''+rn+'\')">'+'</a>'+
               '<span class="name"><a>' + rn + '</a></span>'+
            '</div>'
			});
			$('.all-notifications-body').empty().append(tag);
			$('.contact-body').empty().append(tag1);
		}
	}

	function commonAjax(url, parameter, type, calbak, contentType){
		$.ajax({
			url: url,
			data: parameter,
			type: type,
			contentType : contentType!=null?contentType:'application/x-www-form-urlencoded; charset=UTF-8',
			success: function (res) {
				calbak(res);
			},
			error : function(err){
				console.log('error');
				calbak(err);
			}
		});
	}
$(function(){
	
$('#target_img').click(function (e) {
    document.signform.target_url.value = document.getElementById( 'target_img' ).src;
    e.preventDefault();
    $('#file').click();
}); 
})
  



