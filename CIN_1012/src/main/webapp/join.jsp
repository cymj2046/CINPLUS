<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript" src="autoHyphen.js"></script>
<script type="text/javascript" src="validationForm.js"></script>
<script type="text/javascript" src="jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="checkbox.js"></script>
</head>
<body>

<h2>회원가입</h2>
	
<form name ="frm" action="join_ok.jsp" method="get">
	이름:
	<input type="text" name="name" maxlength="6">&nbsp;*한글만 가능(최대6글자)
	<br/>
	
	주민번호:
	<input type="text" name="residentNum1" maxlength="6">-
	<input type="text" name="residentNum2" maxlength="1" size="1">XXXXXX
	<br/>
	
	통신사:  <!-- onchange="changeCarrier(this);compDisabled(this);" -->
	<input type="checkbox" id="SK" name="carrier" value="SK">
	<label for="SK">SK</label>
	<input type="checkbox" id="KT" name="carrier" value="KT">
	<label for="KT">KT</label> 
	<input type="checkbox" id="LG" name="carrier" value="LG">
	<label for="LG">LG</label> 
	<input type="checkbox" id="알뜰" name="carrier" value="알뜰" >
	<label for="알뜰">알뜰</label>
	<select name="comp" disabled="disabled">
		<option value="">선택▽</option>
		<option value="SK알뜰">SK알뜰</option>
		<option value="KT알뜰">KT알뜰</option>
		<option value="CJ모바일">CJ모바일</option>
	</select>
	<br/>
			
	전화번호:
	<input type="text" name="phone" oninput="autoHyphen(this)" maxlength="13">&nbsp;ex "-"없이 숫자만 입력
	<br/>
		
	이메일:
	<input type="text" name="email" maxlength="20">@
	<select name="domain">
		<option value="">선택▽</option>
		<option value="naver.com">naver.com</option>
		<option value="gmail.com">gmail.com</option>
		<option value="daum.net">daum.net</option>
	</select>
	<br/>
	
	<input type="button" value="확인" onclick="validationForm()" >
</form>
</body>
</html>