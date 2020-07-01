<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>

<%
	request.setCharacterEncoding("UTF-8");

	String email = request.getParameter("email");
	String contractAddr = request.getParameter("contractAddr");

	System.out.println(email);
	System.out.println(contractAddr);
	
	// DB 처리하기
	if (email == null) out.println("session not set error");
	
	Connection conn = null;	
	PreparedStatement pstmt = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/goguma?user=webfinal&password=webfinal");
		
		Statement stmt = conn.createStatement();
		String sql = "INSERT INTO table_contractaddr(email, addr) VALUES(?,?)";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, email);
		pstmt.setString(2, contractAddr);
		
		pstmt.executeUpdate();
		
		out.println("INSERT contractAddr 성공");
	} 
	catch(SQLException ex) {
		ex.printStackTrace();
	} finally {
		if (pstmt != null) pstmt.close();
		if (conn != null) conn.close();
	}
	
	response.sendRedirect("contract_Result.jsp");
%>