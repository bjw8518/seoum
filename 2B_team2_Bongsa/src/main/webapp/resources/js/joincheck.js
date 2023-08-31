

$(function() {
    
 
  $('#joinbtn').on('click', function(){
 	 joincheck();
  });


    var check = $('.is-invalid');
function joincheck(){
	setemail();
    if($("#selectRole").val() == "구분"){
        $("#selectRole").addClass('is-invalid');
        $("#selectRole").next().text("필수 입력 항목입니다.");
    }else {
        if($("#selectRole").hasClass('is-invalid') === true){ $("#selectRole").removeClass('is-invalid'); }
    }
    if(check != null){
        
        $('#userJoin').submit();
    } else {

    }

}

// email 만듬. 
function setemail() {
		const email = $("#user_email").val();
		const middle = $("#middle").text();
		const address = $("#domain-txt").val();
		if(email != "" && address != "") {
			$("#totalemail").val(email+middle+address);
		}
	};
// 생일만듬.. 
function setbday() {
		const year = $("#user_by").val();
		const month = $("#user_bm").val();
		const day = $("#user_bd").val();
		if(year != "" && month != "") {
			$("#totalBday").val(year+"-"+month+"-"+day);
		}
	};



// 회원 구분에따라 구분내용이 다름 

    $('input[name=mem_select]').change(function(){
        $('#selectRole > option').remove();
     
        if($(this).val() =="1"){
			$('#ubday input').attr("disabled",false)
                $('#selectRole').append('<option value="구분">구분</option><option value="성인">성인</option><option value="청소년">청소년</option><option value="기타">기타</option>');
        } else {
         	$('#ubday input').attr("disabled",true)

            $('#selectRole').append('<option value="구분">구분</option><option value="공공기관">공공기관</option><option value="공공시설">공공시설</option><option value="민간기관">민간기관</option><option value="민간시설">민간시설</option> <option value="행정기관">행정기관</option>');
        }
    });


// 아이디 체크
var idck = 0;
//idck 버튼을 클릭했을 때 

var u_id = $('#user_id');
var msg = $('#user_id + .invalid-feedback');
u_id.blur(function(){
    if($(this).val() == ""){
        $(this).addClass('is-invalid');
        msg.text("필수 입력 항목입니다.")
    } else {
        if($(this).hasClass('is-invalid') === true){ $(this).removeClass('is-invalid'); }
        
        $.ajax({
            async: true,
            type : 'POST',
            data : u_id.val(),
            url : "idcheck.do",
            dataType : "json",
            contentType: "application/json; charset=UTF-8",
            success : function(data) {
                if (data.cnt > 0) {
                    u_id.addClass('is-invalid');
                    msg.text("이미 사용중인 아이디 입니다.");
                } else {
                    if($(this).hasClass('is-invalid') === true){ $(this).removeClass('is-invalid'); }
                    idck = 1;
                }
            },
            error : function(error) {

            }
        });
    }
});

// 비밀번호 
var u_pw = $('#user_pw');
u_pw.blur(function(){
    if(u_pw.val() == ""){
        $(this).addClass('is-invalid');
        u_pw.next().text("필수 입력 항목입니다.")
    } else {
        if($(this).hasClass('is-invalid') === true){ $(this).removeClass('is-invalid'); }
    }
})
$('#user_pw_ck').blur(function(){
    if($(this).val() != u_pw.val()) {
        $(this).addClass('is-invalid');
        $(this).next().text("비밀번호가 일치하지 않습니다.");
    }else {
        if($(this).hasClass('is-invalid') === true){ $(this).removeClass('is-invalid'); }
    }
})
$('#user_nm').blur(function(){
    if($(this).val() != u_pw.val()) {
        $(this).addClass('is-invalid');
        $(this).next().text("필수 입력 항목입니다.");
    }else {
        if($(this).hasClass('is-invalid') === true){ $(this).removeClass('is-invalid'); }
    }
})
$('#user_nm').blur(function(){
    if($(this).val() == "") {
        $(this).addClass('is-invalid');
        $(this).next().text("필수 입력 항목입니다.");
    }else {
        if($(this).hasClass('is-invalid') === true){ $(this).removeClass('is-invalid'); }
    }
});
$('#user_tel').blur(function(){
    if($(this).val() == ""){
        $(this).addClass('is-invalid');
        $(this).next().text("필수 입력 항목입니다.")
    } else {
        if($(this).hasClass('is-invalid') === true){ $(this).removeClass('is-invalid'); }
    }
})

$('#user_email').blur(function(){
    if($(this).val() == ""){
        $(this).addClass('is-invalid');
        $('#user_email ~ .invalid-feedback ').text("이메일을 입력하세요.")
    } else {
        if($(this).hasClass('is-invalid') === true){ 
            $(this).removeClass('is-invalid'); 
        }
    }
})
$('#u_addr').blur(function(){
    if($(this).val() == ""){
        $(this).addClass('is-invalid');
        $("#u_addr").addClass('is-invalid');
        $("#user_dtaddr").addClass('is-invalid');
        $(".addrmsg").text("주소를 입력하세요.")
    } else {
        if($(this).hasClass('is-invalid') === true){ 
            $(this).removeClass('is-invalid'); 
            $("#u_addr").removeClass('is-invalid');
        $("#user_dtaddr").removeClass('is-invalid');
        }
    }
})




// 연락처 - 생성

var autoHypenPhone = function(str){
str = str.replace(/[^0-9]/g, '');
var tmp = '';
if( str.length < 4){
    return str;
}else if(str.length < 7){
    tmp += str.substr(0, 3);
    tmp += '-';
    tmp += str.substr(3);
    return tmp;
}else if(str.length < 11){
    tmp += str.substr(0, 3);
    tmp += '-';
    tmp += str.substr(3, 3);
    tmp += '-';
    tmp += str.substr(6);
    return tmp;
}else{              
    tmp += str.substr(0, 3);
    tmp += '-';
    tmp += str.substr(3, 4);
    tmp += '-';
    tmp += str.substr(7);
    return tmp;
}

return str;
}

var phoneNum = document.getElementById('user_tel');

phoneNum.onkeyup = function(){
console.log(this.value);
this.value = autoHypenPhone( this.value ) ;  
}

// 연락처 - 생성 끝





// email, 이메일 직접입력으로 변경 시작
const domainListEl = document.querySelector('#domain-list')
const domainInputEl = document.querySelector('#domain-txt')
// select 옵션 변경 시
domainListEl.addEventListener('change', (event) => {
// option에 있는 도메인 선택 시
if(event.target.value !== "1") {
// 선택한 도메인을 input에 입력하고 disabled
domainInputEl.value = event.target.value
domainInputEl.disabled = true
} else { // 직접 입력 시
// input 내용 초기화 & 입력 가능하도록 변경
domainInputEl.value = ""
domainInputEl.disabled = false
}
})
// email, 이메일 직접입력으로 변경 끝




// 우편번호 찾기 다음에서 가져왔습니다~~ 

function sample6_execDaumPostcode() { 
new daum.Postcode({
    oncomplete: function(data) {
        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

        // 각 주소의 노출 규칙에 따라 주소를 조합한다.
        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
        var addr = ''; // 주소 변수
        var extraAddr = ''; // 참고항목 변수

        //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
        if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
            addr = data.roadAddress;
        } else { // 사용자가 지번 주소를 선택했을 경우(J)
            addr = data.jibunAddress;
        }

        // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
        if(data.userSelectedType === 'R'){
            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
                extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            // if(extraAddr !== ''){
            //     extraAddr = ' (' + extraAddr + ')';
            // }
            // 조합된 참고항목을 해당 필드에 넣는다.
            // document.getElementById("sample6_extraAddress").value = extraAddr;
        
        } else {
            // document.getElementById("sample6_extraAddress").value = '';
        }

        // 우편번호와 주소 정보를 해당 필드에 넣는다.
        document.getElementById('u_post').value = data.zonecode;
        document.getElementById("u_addr").value = addr;
        // 커서를 상세주소 필드로 이동한다.
        document.getElementById("u_dtaddr").focus();
    }
}).open();
}

// 우편번호 찾기 버튼이랑 연결
    $("#button-addon2").on("click", function(){
    	sample6_execDaumPostcode();    
    })
    




}) // jquery end 