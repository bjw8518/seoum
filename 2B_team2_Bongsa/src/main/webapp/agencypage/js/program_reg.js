


$(function() {
    
 
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



// 아이디 체크


}) // jquery end 