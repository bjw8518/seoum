

$(function() {
    
 
     $('.modalbtn').on('click', function(e){
        var datas =  $(this).data('applyinfo').split(',');
        modalval(datas);
        
    });

    $("#exampleModal").on('hidden.bs.modal', function(){
   	 	$(this).find('input[type=text]').val("");
    });
    
    $("#liveTBtn").on('click', function(){
        appliSubmit();
    });


    
    // 모달에 보여주는 값
function modalval(datas){


$("#apid_val").val(datas[0]);
	$("#ptitle").text(datas[1]);
	$("#aname").val(datas[2]);
        $("#pdate").val(datas[3] +" "+datas[4]);
        $("#apdate").val(datas[5]);
        $("#apstate").val(datas[6]);
        
}

		function appliSubmit(){
			if(confirm("신청을 취소 하시겠습니까? 취소된 신청은 변경이 불가 합니다.") ==true)
			$('#appli_form').submit();
		}

		



}) // jquery end 

