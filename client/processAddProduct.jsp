	<%@ page contentType="text/html; charset=utf-8"%> 
	<%@ page import="com.oreilly.servlet.*" %>
	<%@ page import="com.oreilly.servlet.multipart.*" %>
	<%@ page import="java.util.*" %>
	<%@ page import="dto.RealEstate"%> <%@ page import="dao.RealEstateRepo"%> 
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
	</head>
	<body>
	<% 
	request.setCharacterEncoding("UTF-8"); 
	
	String filename="";
	String realFolder = "C:\\upload";
	int maxSize=5*1024*1024;
	String encType = "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy()); 
	
	String aptname = multi.getParameter("aptname");
	String price = multi.getParameter("price");
	String size = multi.getParameter("size");
	String address = multi.getParameter("address");
	String houseDong = multi.getParameter("houseDong");
	String houseStair = multi.getParameter("houseStair");
	String direction = multi.getParameter("direction");
	String possibleDate = multi.getParameter("possibleDate");
	String regiNum = multi.getParameter("regiNum");
	String sellernum = multi.getParameter("sellernum");
	String houseimage = multi.getParameter("houseimage");
	
	
	
	Enumeration files = multi.getFileNames(); 
	String fname = (String) files.nextElement(); 
	String fileName = multi.getFilesystemName(fname); 
	
	RealEstateRepo dao = RealEstateRepo.getInstance();
	
	RealEstate newProduct = new RealEstate();
	newProduct.setAddress(address);
	newProduct.setAptname(aptname);
	newProduct.setDirection(direction);
	newProduct.setHouseDong(houseDong);
	newProduct.setHouseStair(houseStair);
	newProduct.setPossibleDate(possibleDate);
	newProduct.setPrice(price);
	newProduct.setRegiNum(regiNum);
	newProduct.setSize(size);
	newProduct.setSellernum(sellernum);
	newProduct.setHouseimage(houseimage);
	
	dao.addProduct(newProduct);
	
	response.sendRedirect("Mycontracts.jsp");
	%>
	</body>
	</html>
	
