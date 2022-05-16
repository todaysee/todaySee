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
		if(res != null){
			/*var tag = "<tr><th class='num'>순서</th><th class='room'>방 이름</th><th class='go'></th></tr>";*/
			var tag = ''
			res.forEach(function(d, idx){
				var rn = d.roomName.trim();
				var roomNumber = d.roomNumber;
				tag += '<div class="item d-flex justify-content-between align-items-center cricle">'+
					'<div class="figure">'+
						'<a href="my-profile.html">'+
						'<img src="../images/mypageCommunity/user/user-55.jpg" class="rounded-circle" alt="image"></a>'+
					'</div>'+
					'<div class="text">'+
						'<h4>'+
						'<a>'+ rn +'</a>'+
						'</h4>'+
						'<span>'+ '행복한 시간 보내세요.' +'</span>'+
					'</div>'+
				'</div>'
			});
			$('.all-notifications-body').empty().append(tag);
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

/*$(function(){
	$('#createRoom').click(function(){
		$('.input-search').val()
	})
	$('.text')
})*/