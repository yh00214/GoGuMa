<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>

<%
	request.setCharacterEncoding("UTF-8");
	
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String passwd = request.getParameter("pass");
	
	Connection conn = null;	
	PreparedStatement pstmt = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/goguma?user=webfinal&password=webfinal");
		
		Statement stmt = conn.createStatement();
		String sql = "INSERT INTO normal_account(name, email, passwd) VALUES(?,?,?)";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, email);
		pstmt.setString(3, passwd);
		
		pstmt.executeUpdate();
		
		out.println("INSERT account 성공");
	} 
	catch(SQLException ex) {
		ex.printStackTrace();
	} finally {
		if (pstmt != null) pstmt.close();
		if (conn != null) conn.close();
	}
	
	response.sendRedirect("sign/signin.html");
%>
