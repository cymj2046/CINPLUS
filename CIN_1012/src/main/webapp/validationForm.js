//joinform_check 함수로 유효성 검사
function validationForm() {
	/*
	let frm = document.frm;
	let name = frm.name;
	let residentNum1 = frm.residentNum1;
	let residentNum2 = frm.residentNum2;
	let carrier = frm.carrier;
	let phone = frm.phone;
	let email = frm.email;
	let domain = frm.domain;
	*/
	
	// 정규식
	var regName = /^[가-힣]{2,6}$/; // 이름/^[가-힣]+$/;
	var regResidentNum1 = /^\d{6}$/; //주민번호
	var regResidentNum2 = /^[12]$/; //주민번호
	var regPhone = /^[0-9]{3}[-]+[0-9]{4}[-]+[0-9]{4}$/;  //전화번호
	var regEmail =/^[a-zA-Z]{1,20}$/; //이메일

	//이름 유효성체크
	if (document.frm.name.value == "" || !regName.test(document.frm.name.value)) {
		alert("이름을 입력하세요. 한글만 입력가능");
		document.frm.name.focus();
		return false;
	};
	
	//주민번호 유효성체크
	if (document.frm.residentNum1.value == "" 
		|| !regResidentNum1.test(document.frm.residentNum1.value)) {
		alert("주민번호를 입력하세요.");
		document.frm.residentNum1.focus();
		return false;
	  };
	  
	 if (document.frm.residentNum2.value == ""
		|| !regResidentNum2.test(document.frm.residentNum2.value)) {
		alert("주민번호를 입력하세요.");
		document.frm.residentNum2.focus();
		return false;
	  }; 
	
	

	//통신사 유효성체크
	if(document.querySelectorAll("[name=carrier]:checked").length == 0){
		alert("통신사를 선택하세요.");
		//document.frm.carrier.focus();
		return false;
	}
	
	// 알뜰 선택시에만 select 선택 체크
	if(document.querySelector("[name=carrier]:checked").value == "알뜰"
	&&document.frm.comp.value == ""){
		alert("알뜰 : 선택하세요.");
		//document.frm.phone.focus();
		return false;
	}

	
	//전화번호 유효성체크
	if (document.frm.phone.value == "" || !regPhone.test(document.frm.phone.value)
		) {
		alert("전화번호를 입력하세요. 숫자만 입력가능");
		document.frm.phone.focus();
		return false;
	  }
	  
	//이메일 유효성체크
	  if (document.frm.email.value == "" || !regEmail.test(document.frm.email.value)) {
		alert("이메일을 입력하세요.");
		document.frm.email.focus();
		return false;
	  }
	  if (document.frm.domain.value == "") {
		alert("이메일 도메인을 선택하세요.");
		document.frm.domain.focus();
		return false;
	  }
	  
	//입력 값 전송
	document.frm.submit(); //유효성 검사의 포인트 

}


/*
function changeCarrier(t){
	let frm = document.frm;
	let isChecked = t.checked; // 현재 상태 저장
	
	frm.comp.disabled = true;
	
	// 전체 해제
	frm.carrier.forEach((checkbox) => {
		checkbox.checked = false;
	});
	
	t.checked = isChecked; // 현재 상태로 복원
	
	if(document.querySelector("[name=carrier]:checked") != null 
	&& document.querySelector("[name=carrier]:checked").value == "알뜰"){
		frm.comp.disabled = !t.checked;
	}
}

function compDisabled(t){
	let frm = document.frm;
	
	frm.comp.disabled = !t.checked;
}
*/
