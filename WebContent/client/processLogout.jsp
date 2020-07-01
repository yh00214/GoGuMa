<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>

<%
	session.removeAttribute("email");
	session.removeAttribute("role");
	response.sendRedirect("main.jsp");
%>
