

$(function() {
    
 
     $('.modalbtn').on('click', function(e){
        var datas =  $(this).data('applyinfo').split(',');
        modalval(datas);
        
    });

    $("#exampleModal").on('hidden.bs.modal', function(){
   	 	$(this).find('input[type=checkbox]:checked').prop('checked','false');
    });
    
    $("#liveTBtn").on('click', function(){
        appliSubmit();
    });


    
    // 모달에 보여주는 값
function modalval(datas){
	$("input[name=r_apid]").val(datas[0]);
	$("input[name=r_pid]").val(datas[1]);
        $("input[name=r_aid]").val(datas[2]);
        $("input[name=r_mid]").val(datas[3]);
        
        $('input:checkbox').each(function(){
        if($('this').is(":checked")){
        	
        
        }else {
        	$('this').val("");
        }
        	
        
        })

        
}

		function appliSubmit(){
			if(confirm("후기를 등록 하시겠습니까? 등록된 후기는 변경이 불가 합니다.") ==true)
			$('#appli_form').submit();
		}

		



}) // jquery end 

