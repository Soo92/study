function loginCheck(){
	if(document.login.id.value==""){
		alert("아이디를 입력해 주세요.");
		document.login.id.focus();
		return;
	}
	if(document.login.pass.value==""){
		alert("비밀번호를 입력해 주세요.");
		document.login.pass.focus();
		return;
	}
	document.login.submit();
}

function memberReg(){
	document.location="Register.jsp";
}

function inputCheck(){
	if(document.regForm.id.value==""){
		alert("아이디를 입력해 주세요.");
		document.regForm.id.focus();
		return;
	}
	if(document.regForm.pass.value==""){
		alert("비밀번호를 입력해 주세요.");
		document.regForm.pass.focus();
		return;
	}
	if(document.regForm.repass.value==""){
		alert("비밀번호를 확인해 주세요");
		document.regForm.repass.focus();
		return;
	}
	if(document.regForm.pass.value != document.regForm.repass.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.regForm.repass.focus();
		return;
	}
	if(document.regForm.name.value==""){
		alert("이름을 입력해 주세요.");
		document.regForm.name.focus();
		return;
	}
	if(document.regForm.email.value==""){
		alert("이메일을 입력해 주세요.");
		document.regForm.email.focus();
		return;
	}

    var str=document.regForm.email.value;	   
    var atPos = str.indexOf('@');
    var atLastPos = str.lastIndexOf('@');
    var dotPos = str.indexOf('.'); 
    var spacePos = str.indexOf(' ');
    var commaPos = str.indexOf(',');
    var eMailSize = str.length;
    if (atPos > 1 && atPos == atLastPos && 
	   dotPos > 3 && spacePos == -1 && commaPos == -1 
	   && atPos + 1 < dotPos && dotPos + 1 < eMailSize);
    else {
          alert('E-mail주소 형식이 잘못되었습니다.\n\r다시 입력해 주세요!');
	      document.regForm.email.focus();
		  return;
    }

	if(document.regForm.phone.value==""){
		alert("연락처를 입력해 주세요.");
		document.regForm.phone.focus();
		return;
	}
	if(document.regForm.job.value=="0"){
		alert("직업을 선택해 주세요.");
		document.regForm.job.focus();
		return;
	}
	document.regForm.submit();
}


function idCheck(id){
	if(id == ""){
		alert("아이디를 입력해 주세요.");
		document.regForm.id.focus();
	}else{
		url="IdCheck.jsp?id=" + id;
		window.open(url,"post","width=300,height=150");
	}
}

function zipCheck(){
		url="ZipCheck.jsp?check=y";
		window.open(url,"post","toolbar=no ,width=500 ,height=300 ,directories=no,status=yes,scrollbars=yes,menubar=no");
}

function win_close(){
	self.close();
}


//Product
	function productDetail(no) {
		document.detail.no.value=no;
		document.detail.submit();
	}
	
//Cart
	function cartUpdate(form){
		form.flag.value="update"
		form.submit();
	}
	
	function cartDelete(form) {
		form.flag.value="del";
		form.submit();
	}

//OrderList
