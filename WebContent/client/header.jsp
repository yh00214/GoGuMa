<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<style>

@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);

header{
}
 .title{
 	color: black; line-height: 75px; float:left; margin-left:20px;
		font-family: 'Noto Sans KR', sans-serif;
 }
 
 .menu{float: right;}
.menu li{float: left;}

.menu a{
text-decoration:none;
font-family: 'Noto Sans KR', sans-serif; line-height: 75px; color: black; padding: 0 15px; display: block;}

li{list-style: none;}
</style>
</head>
<body>
	<%	
		String btn, href;
		String email = (String)session.getAttribute("email");
		String role = (String)session.getAttribute("role");
		if (email != null) {
			btn = "Logout";
			href="processLogout.jsp";
		}
		else {
			btn = "Login";
			href = "sign/signin.html";
		}
	%>
    <header>
			
			<nav>
			<img src = "./images/logo.png" style = "width : 200px; height : 200px; margin-top : -50px; margin-left : 50px;">
				<ul class="menu" >
					<li><a href="../Goguma_Web/myPage_renter.jsp" class="introduction"><b>내 매물 현황</b></a></li>
					<% if (role == "renter") { %>				
					<li ><a href="../colorlib-regform-4/addRoom.html" class="introduction"><b>매물 등록</b></a></li>
					<% }else { %>
					<li ><a href="../Goguma_Web/contract.html" class="introduction"><b>계약 생성</b></a></li>
					<% }  %>
					<li><a href=<%=href %> class="introduction"><b><%=btn %></b></a></li>
				</ul>
			</nav>
	</header>
</body>
</html>