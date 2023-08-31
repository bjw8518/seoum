


$(function() {
    
 
	var checkdays = $("input[name=p_dayweek]").val().split(',');
    $("input[name=p_dayweeks]").each(function() {
    	for(var i = 0; i<checkdays.length; i++){
    	 if($(this).val() == checkdays[i]){
            $(this).prop('checked', true);
         }   
    	}
    });
 
 
	var checktgs = $("input[name=p_target]").val().split(' ');
    $("input[name=p_type]").each(function() {
    	for(var i = 0; i<checktgs.length; i++){
    	 if($(this).val() == checktgs[i]){
            $(this).prop('checked', true);
         }   
    	}
    });
 
 
 
 
  $('#regBtn').on('click', function(){
 modycheck();
  });


    var check = $('.is-invalid');
function modycheck(){
setdayweek(); settype();
    $('#reg_go').submit();

}

// 시간 만들기 


// 요일 만들기
function setdayweek() {
	var dayarr = new Array(); // 배열 선언
        $("input[name=p_dayweeks]:checked").each(function() {    
        	dayarr.push(this.value);
        });
        var day = dayarr.toString();
        
        $('#totalday').val(day);
	};
	// 타입 만들기 
function settype() {
	var dayarr = new Array(); // 배열 선언
        $("input[name=p_types]:checked").each(function() {    
        	dayarr.push(this.value);
        });
        var ty = dayarr.toString();
        $('#totaltype').val(dayarr.toString());
	};






}) // jquery end 