$(function() {
    
    
    $("#find_pw").on("click", function(){  
        setemail();


   
});


function setemail() {
		const email = $("#user_email").val();
		const middle = $("#middle").text();
		const address = $("#domain-txt").val();
		if(email != "" && address != "") {
			$("#totalemail").val(email+middle+address);
		}
};


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





}) // jquery end 

