<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>

<%
	request.setCharacterEncoding("UTF-8");

	System.out.println("processSignIn.jsp");

	String email = request.getParameter("email");
	String passwd = request.getParameter("pass");
	
	Connection conn = null;	
	PreparedStatement pstmt = null;
	try {
		// jdbc 연결
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/goguma?user=webfinal&password=webfinal");
		
		// query문 작성
		Statement stmt = conn.createStatement();
		String sql = "SELECT NORMAL_ACCOUNT.* FROM NORMAL_ACCOUNT WHERE NORMAL_ACCOUNT.EMAIL=? AND NORMAL_ACCOUNT.PASSWD=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, email);
		pstmt.setString(2, passwd);
		
		
		// query 실행
		ResultSet rs = pstmt.executeQuery();
		
		session.setAttribute("email", email);
		
		System.out.println("로그인 정보 조회 성공");
	} 
	catch(SQLException ex) {
		ex.printStackTrace();
	} finally {
		if (pstmt != null) pstmt.close();
		if (conn != null) conn.close();
	}
	
	response.sendRedirect("main.jsp");
%>
