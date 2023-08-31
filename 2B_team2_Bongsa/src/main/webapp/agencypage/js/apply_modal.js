

$(function() {
    
	$("input[name=state_val]").on('click', function(){
	
	        nowhy_OnOff($(this).val(), 'nowhy');
	    });
	    
    $("#exampleModal").on('hidden.bs.modal', function(){
   	 	$(this).find('input[type=text]').val("");
    });
    
    $("#liveTBtn").on('click', function(){
        appliSubmit();
    });
    
    $('.modalbtn').on('click', function(e){ // 완료 제외 페이지 
        var datas =  $(this).data('applyinfo').split(',');
        modalval(datas);
        
    });
    $('.modalbtnend').on('click', function(e){ // 완료페이지 
        var datas =  $(this).data('applyinfo').split(',');
        modalvalend(datas);
        
    });


    
	// 모달에 보여주는 값(미승인 승인)
	function modalval(datas){
		$("#apid_val").val(datas[0]);
		$("#ptitle").text(datas[1]);
	    $("#ap_pdate").val(datas[2] +" "+datas[3]);
	    $("#mem_name").val(datas[4]+" ("+datas[5]+")");
	    $("#ap_state").val(datas[6]);
	        
	}
	/*신청 > 승인/반려 반려시 사유창 보여주기 */
	function nowhy_OnOff(v,id){
	 // 라디오 버튼 value 값 조건 비교
		 if(v == "반려"){
		  document.getElementById(id).style.display = ""; // 보여줌
		 }else{
		  document.getElementById(id).style.display = "none"; // 숨김
		 }
	}
	
	function toastopen(){

		var toastTrigger = document.getElementById('liveTBtn');
		var toastLiveExample = document.getElementById('liveToast');
		if (toastTrigger) {	
			var toast = new bootstrap.Toast(toastLiveExample);
	    	toast.show();
	    	toastTrigger.addEventListener('click', function () {})
		}
	}
	  		


// 미승인/승인게시판에서 사용 
		function appliSubmit(){
		
			var ap_check = $('input[name=state_val]:checked').val();
			var select_check = $("#apck_rs option:selected").val();
		
			if( ap_check == "확정(승인)"){
				$("#set_ap_state").val("확정(승인)");
				if(confirm("봉사 신청을 승인하였습니다. 저장 시 수정이 불가합니다.") ==true)
					confirm_appli();
				
			} else if( ap_check  == "반려" ){
				$("input[name=ap_state]").val("반려");
				if(select_check == ""){
					 toastopen();
						return;
				} else {
					if(confirm("봉사 신청을 반려하였습니다. 저장 시 수정이 불가합니다.") ==true)
						confirm_appli();
				}

			} else if( ap_check  == "활동완료" ){
				$("#set_ap_state").val("활동완료");
				if(confirm("활동완료 처리됩니다. 저장 시 수정이 불가합니다.") ==true)
					confirm_appli();
			}else if( ap_check  == "활동미완료" ){
				$("#set_ap_state").val("활동미완료");
				if(confirm("활동 미완료 내역으로 변경됩니다. 저장 시 수정이 불가합니다.") ==true)
					confirm_appli();
			}
		
		}
	function confirm_appli(){
		$(appli_form).submit();
	
	}
	
	// 미승인/승인게시판에서 사용 end



	// 모달에 보여주는 값 완료건에 대해  
	function modalvalend(datas){
		$("#apid_val").val(datas[0]);
		$("#ptitle").text(datas[1]);
	    $("#ap_pdate").val(datas[2] +" "+datas[3]);
	    $("#mem_name").val(datas[4]+" ("+datas[5]+")");
	    $("#ap_state").val(datas[6]);
	    
	    if(datas[7] != null){ // 리뷰가 있으면 
	    reviewOpen(); // ap_r_content 들어있는 부분 열림 
		    var r_apid = datas[0].toString();
		    $.ajax({
				async: true,
            	type : 'POST',
            	data : r_apid,
	        	url:"getReview.do",
	        	dataType: 'json', 
            	contentType: "application/json; charset=UTF-8",
	       		success:function(data){
					$("#ap_r_content").text(data.content); // 가져와서 값을 넣는당
		        }
		    });    // ajax end
			
		} else { 
				$("#ap_r_content").text("등록된 후기가 없습니다."); // 없으면 안넣는다! 	
		} 
		
	}
	
	
		function reviewOpen(){

		  document.getElementById("isreview").style.display = ""; // 보여줌

	}
	


}) // jquery end 

