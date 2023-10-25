<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 목록</title>
<script type="text/javascript" src="../resources/js/jquery-3.7.1.min.js"></script>
</head>
<body>
<form name="form1" method="post" action="${path}/board/list">
	회원명:  <input type="text" name="MBR_NM">&nbsp;
	<!-- 주문번호: <input type="text" name="BZPP_ORDER_NO">&nbsp; -->
	사업자명: <input type="text" name="BZPP_NM">&nbsp;&nbsp;
	<!-- <input type="hidden" name="searchOn" value="Y"> -->		
	<input type="button" id="list_btn" value="조회"/>
</form>
<table border="1" id="t" style="width:1200px; text-align:center;" >
	<tr>
		<th>회원명</th>
		<th>회원아이디</th>
		<th>회원폰번호</th>
		<th>주문번호</th>
		<th>제품번호</th>
		<th>제품명</th>
		<th>사업자명</th>
		<th>사업자폰</th>
		<th>사업자주소</th>
		<th>삭제유무</th>
       </tr>
       <tbody id="dataBody"></tbody>
</table>
<script type="text/javascript">

$(document).ready(function () {
	//getList(); // 페이지 로드시에 바로 나오게 할 때 사용
	
	$("#list_btn").on('click', function() { // 조회 버튼 클릭 시 실행
		getList(); // 리스트조회
	});
});

function getList(){
 	let url = "http://localhost:8080/cip/board/listData"; 
	let data = $(document.form1).serialize(); //폼 데이터를 시리얼라이즈하여 가져옴
	
	// $.ajax({...}); : AJAX를 사용하여 서버에 데이터를 요청
	$.ajax({
		url:url, // 가져올 주소
		data:data, // 보낼 데이터(여기서는 검색 조건)
	    type:"POST", // 메소드 방식. 기본값은 GET
		cache:false, // 캐시 설정. 기본값은 true
		success:function(data,textStatus,jqXHR){ // 성공시
			var html = new Array(); // 결과를 담을 HTML 배열을 생성
			
			if(data.length > 0){
				for(let i in data){
					html.push('<tr>');
					html.push(	'<td>'+ data[i].mbr_NM +'</td>');
					html.push(	'<td>'+ data[i].mbr_USER_ID +'</td>');
					html.push(	'<td>'+ formatPhoneNumber(data[i].mbr_PHONE) +'</td>');
					html.push(	'<td>'+ data[i].bzpp_ORDER_NO +'</td>');
					html.push(	'<td>'+ data[i].pdt_NO +'</td>');
					html.push(	'<td>'+ data[i].pdt_NM +'</td>');
					html.push(	'<td>'+ data[i].bzpp_NM +'</td>');
					html.push(	'<td>'+ formatPhoneNumber(data[i].bzpp_PHONE) +'</td>');
					html.push(	'<td>'+ data[i].bzpp_ADDR +'</td>');
					html.push(	'<td>'+ data[i].del_YN +'</td>');
					html.push('</tr>');
				}
			}else{
				html.push('<tr>');
				html.push(	'<td colspan="10" style="text-align:center;">조회된 데이터가 없습니다.</td>');
				html.push('</tr>');
			}
			
			$("#dataBody").html(html.join("")); // 순수JS의 innterHTML이 jQuery에선 html임.   .join("")은 배열을 String으로 변환.
		}
	});
}

function formatPhoneNumber(phoneNumber) { //전화번호 하이픈
    return phoneNumber.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
}

</script>
</body>
</html>