<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>목록</title>

    <!-- The jQuery library is a prerequisite for all jqSuite products -->
    <script type="text/ecmascript" src="../resources/js/jquery.min.js"></script> 
    <!-- We support more than 40 localizations -->
    <script type="text/ecmascript" src="../resources/js/trirand/i18n/grid.locale-kr.js"></script>
    <!-- This is the Javascript file of jqGrid -->   
    <script type="text/ecmascript" src="../resources/js/trirand/jquery.jqGrid.min.js"></script>
    <!-- This is the localization file of the grid controlling messages, labels, etc.
    <!-- A link to a jQuery UI ThemeRoller theme, more than 22 built-in and many more custom -->
    <link rel="stylesheet" type="text/css" media="screen" href="../resources/css/jquery-ui.css" />
    <!-- The link to the CSS that the grid needs -->
    <link rel="stylesheet" type="text/css" media="screen" href="../resources/css/trirand/ui.jqgrid.css" />

</head>
<body>
<form name="form1" method="post" action="${path}/board/list">
	<div>
	    <label for="searchMBR_NM">회원명:</label>
	    <input type="text" id="searchMBR_NM" />
	    <label for="searchBZPP_NM">사업자명:</label>
	    <input type="text" id="searchBZPP_NM" />
	    <input type="button" id="list_btn" value="조회"/>
	</div>
	<!--회원명:  <input type="text" name="MBR_NM">&nbsp;-->
	<!-- 주문번호: <input type="text" name="BZPP_ORDER_NO">&nbsp; -->
	<!--사업자명: <input type="text" name="BZPP_NM">&nbsp;&nbsp;-->
	<!-- <input type="hidden" name="searchOn" value="Y"> -->		
	<!--<input type="button" id="list_btn" value="조회"/>-->
</form>


<table id="jqGrid"></table> <!-- jqGrid를 표시할 테이블을 정의 -->
<div id="jqGridPager"></div> <!--  jqGrid의 페이징을 위한 영역을 정의 -->

<script type="text/javascript"> 

$(document).ready(function () {
  
	// $("#jqGrid").jqGrid({...});: jqGrid를 초기화하고 설정
	$("#jqGrid").jqGrid({
		datatype: "local", // 초기에는 로컬 데이터만 사용하도록 설정
		colModel: [ //colModel: 각 열(column)의 속성을 정의
			{label: '회원명', name: 'mbr_NM', align: 'center', width: 100},
			{label: '회원아아디', name: 'mbr_USER_ID', align: 'center', width: 150},
			{label: '회원폰번호', name: 'mbr_PHONE', align: 'center', width: 200, 
				formatter : function(cellvalue, options, rowObject) {
                // '-'를 추가한 전화번호 형식으로 포맷팅
                var formattedPhoneNumber_mbr = cellvalue.substring(0, 3) + '-' +
                                         cellvalue.substring(3, 7) + '-' +
                                         cellvalue.substring(7);
                return formattedPhoneNumber_mbr;}},
			{label:'주문번호', name: 'bzpp_ORDER_NO', align: 'center', width: 150},	
			{label: '제품번호', name: 'pdt_NO', align: 'center', width: 150},
			{label:'제품명', name: 'pdt_NM', align: 'center', width: 200},
			{label:'사업자명', name: 'bzpp_NM', align: 'center', width: 150},
			{label:'사업자폰', name: 'bzpp_PHONE', align: 'center', width: 200, 
				formatter : function(cellvalue, options, rowObject) {
                // '-'를 추가한 전화번호 형식으로 포맷팅
                var formattedPhoneNumber_mbr = cellvalue.substring(0, 3) + '-' +
                                         cellvalue.substring(3, 7) + '-' +
                                         cellvalue.substring(7);
                return formattedPhoneNumber_mbr;}},
			{label:'사업자주소', name: 'bzpp_ADDR', align: 'center', width: 400},
			{label:'삭제유무', name: 'del_YN', align: 'center', width: 150},
		],
		viewrecords: true,
		width: 1000,
		height: 150,
		rowNum: 20,
		pager: "#jqGridPager" //그리드 아래에 표시될 페이징 컨트롤을 설정
	});

    // 검색 버튼 클릭 이벤트 핸들러
$('#list_btn').click(function () {
	var searchMbrName = $('#searchMBR_NM').val(); //입력 상자에서 회원명을 가져옴
    var searchBizName = $('#searchBZPP_NM').val();
    
    $("#jqGrid").jqGrid("clearGridData", true); //그리드의 데이터를 초기화

    // 조회 버튼을 클릭했을 때 데이터를 불러오도록 변경
    //$("#jqGrid").setGridParam({...}).trigger('reloadGrid');: 그리드의 설정을 변경, 데이터를 새로 불러옴
    $("#jqGrid").setGridParam({
        url: "http://localhost:8080/cip/board/listData",
        mtype: "POST",
        datatype: "json",
        postData: {MBR_NM: searchMbrName,BZPP_NM: searchBizName},
        loadComplete: function (data) {
            console.log(searchMbrName);
            console.log(data);
            },

        page: 1
    }).trigger('reloadGrid');
});
});

/*
function formatPhoneNumber(cellValue, options, rowObject) {
	// 전화번호에 하이픈 추가
	return cellValue.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
}
*/

/*
 $(document).ready(function () {
     $("#jqGrid").jqGrid({
         url: "http://localhost:8080/cip/board/listData",
         mtype: "POST",
         datatype: "json",
         colModel: [
             { label: '회원명', name: 'mbr_NM', width: 75 },
             { label: '회원아아디', name: 'mbr_USER_ID', width: 150 },
             
             { label: '회원폰번호', formatter : 'formatPhoneNumber', name: 'mbr_PHONE', width: 150},
             { label:'주문번호', name: 'bzpp_ORDER_NO', width: 150 },	
             { label: '제품번호', name: 'pdt_NO', width: 150 },
             { label:'제품명', name: 'pdt_NM', width: 150 },
             { label:'사업자명', name: 'bzpp_NM', width: 150 },
             { label:'사업자폰', name: 'bzpp_PHONE', width: 150 },
             { label:'사업자주소', name: 'bzpp_ADDR', width: 150 },
             { label:'삭제유무', name: 'del_YN', width: 150 },
         ],
		viewrecords: true,
		width: 780,
		height: 150,
		rowNum: 20,
		pager: "#jqGridPager"
     });
 });
 */

</script>


<!--  

function formatPhoneNumber(phoneNumber) { //전화번호 하이픈
    return phoneNumber.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
}
-->

</body>
</html>