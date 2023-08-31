
		var idAvailable = false; // 아이디 중복체크
		var mid = ""; // 체크 된 아이디
		var regExpPhone = /^\d{4}/; // 번호체크
		// 이메일 체크
		var regExpEmail =  /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	
		//폼체크
		function formCheck() {
			if($('#mid').val() == "") {
				alert("아이디를 입력해주세요.");
				$('#mid').focus();
				return;
			}
			
			if(idAvailable == false) {
				alert("아이디 중복체크를 해주세요.");
				$('#mid').focus();
				return;
			}
			
			// 중복체크 후 아이디 변경
			if(mid != $('#mid').val()) {
				alert("아이디 중복체크를 해주세요.");
				$('#mid').focus();
				idAvailable = false;
				return;
			}
			
			if($('#mPwd').val() != $('#mPwCheck').val() || $('#mPwd').val()=="") {
				alert("비밀번호를 확인해 주세요.");
				$('#mPwd').focus();
				return;
			}
			
			if($('#mName').val() == "") {
				alert("이름을 입력해주세요.");
				$('#mName').focus();
				return;
			}

			if($('#mEmail').val() == "") {
				alert("이메일을 입력해주세요.");
				$('#mEmail').focus();
				return;
			}
			
			if(!regExpEmail.test($('#mEmail').val())) {
				alert("이메일을 확인해주세요.");
				$('#mEmail').focus();
				return;
			}
			
			if($('#mPostcode').val() == "") {
				alert("주소를 입력해주세요.");
				$('#mPostcode').focus();
				return;
			}
			
			
			if($('#mPhone2').val() == "") {
				alert("전화번호를 입력해주세요.");
				$('#mPhone2').focus();
				return;
			}
			
			if(!regExpPhone.test($('#mPhone2').val())) {
				alert("전화번호를 확인해주세요.");
				$('#mPhone2').focus();
				return;
			}
			
			if($('#mPhone3').val() == "") {
				alert("전화번호를 입력해주세요.");
				$('#mPhone3').focus();
				return;
			}
			
			if(!regExpPhone.test($('#mPhone3').val())) {
				alert("전화번호를 확인해주세요.");
				$('#mPhone3').focus();
				return;
			}
			
			signupDo();
		}
		
		// 아이디 중복체크 
		function idCheck() {
			if($('#mid').val() == "") {
				alert("아이디를 입력해주세요.");
				$('#mid').focus();
				return;
			}
	 		 
			$.ajax({
		            type : 'POST',
		            url : '/checkId.do',
		            data : {
		            	mid : $('#mid').val(),
		            	fun : 'idCheck'
		            },
		            dataType : 'json',
		            success : function(data){
		                alert(data.message);
		                if(data.result == "success"){
		                	idAvailable = true;
		                	mid = data.mid;
		                }
		            },
		        });
		}
		
		// 주소 찾기
    	function getAddr() {
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
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                    
                    } else {
                        document.getElementById("sample6_extraAddress").value = '';
                    }
					
                    
                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('mPostcode').value = data.zonecode;
                    document.getElementById("mAddress").value = addr;
                    // 커서를 상세주소 필드로 이동한다.
                    document.getElementById("mDetailAddress").focus();
    	        }
    	    }).open();
		}
		
		// 회원가입 
		function signupDo() {
			
			var serializeData = $("#form-signup").serialize();
			serializeData += "&fun=signup";
			
	 		 $.ajax({
		            type : 'POST',
		            url : '/join.do',
		            data : serializeData
		            ,
		            dataType : 'json',
		            success : function(data){
		                alert(data.result);
		                if(data.result == "성공"){
		                	window.location.replace('./login.jsp')
		                }
		            },
		        });
		}
		
		
		// 이메일
		$('#selectEmail').change(function(){
   $("#selectEmail option:selected").each(function () {
		
		if($(this).val()== '1'){ //직접입력일 경우
			 $("#str_email02").val('');                        //값 초기화
			 $("#str_email02").attr("disabled",false); //활성화
		}else{ //직접입력이 아닐경우
			 $("#str_email02").val($(this).text());      //선택값 입력
			 $("#str_email02").attr("disabled",true); //비활성화
		}
   });
});