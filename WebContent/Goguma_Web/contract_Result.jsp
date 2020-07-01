<%@ page contentType="text/html; charset=utf-8"%> 
<%@ page import="java.net.URLDecoder"%> 
<!DOCTYPE html>
<html>



<head>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Goguma</title>
	<meta name="viewport" content="width=device-width" , initial-scale="1">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">

	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
        <!-- naver map api -->

</head>




<body>

        <div class="container col-8 alert alert-info"> 
    <div class="container"> 
        <h2 class="alert alert-danger">계약이 완료되었습니다!</h2>
        <h1 style = "text-align:center; margin-top : 2%;">계약 정보</h2><br>
        </div> 
        <p><b>구매자</b>       <%=request.getParameter("buyer")%><br>
        <p><b>판매자</b>       <%=request.getParameter("seller")%><br>
        <p><b>매물명</b>       <%=request.getParameter("housename")%><br>
        <p><b>계약 타입</b>     <%=request.getParameter("contracttype")%><br>
        <p><b>계약 일자</b>     <%=request.getParameter("contractDate")%><br>
        <p><b>등록 번호</b>     <%=request.getParameter("zipCode")%><br>
        <p><b>주소</b>        <%=request.getParameter("address")%><br><br>
        <button class="btn btn-info" id="editbutton"   onclick="location.href='myPage_renter.jsp'" style = "width : 300px;margin-left : 33%;">내 계약 현황</button><br/>
        </div>
       

</body>

</html>
