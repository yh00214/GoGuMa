<%@ page contentType="text/html; charset=utf-8"%> 
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dto.RealEstate"%> <%@ page import="dao.RealEstateRepo"%> 
<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<%
	request.setCharacterEncoding("UTF-8"); 
	
	String filename="";
	String realFolder = "images/";
	int maxSize=5*1024*1024;
	String encType = "utf-8";
	
	ServletContext context = getServletContext();
	String savePath = context.getRealPath(realFolder);
	
	MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encType, new DefaultFileRenamePolicy()); 
	
	String aptname = multi.getParameter("aptname");
	int price =  Integer.parseInt( multi.getParameter("price") );
	int area = Integer.parseInt(multi.getParameter("size"));
	String address = multi.getParameter("address");
	String houseDong = multi.getParameter("houseDong");
	String houseStair = multi.getParameter("houseStair");
	String direction = multi.getParameter("direction");
	String date = multi.getParameter("possibleDate");
	String sellerNum = multi.getParameter("sellernum");
	String houseimage = multi.getParameter("houseimage");
	
	SimpleDateFormat transFormat = new SimpleDateFormat("dd/MM/yyyy");
	Date possibleDate = transFormat.parse(date);
	
	Enumeration files = multi.getFileNames(); 
	String fname = (String) files.nextElement(); 
	String fileName = multi.getFilesystemName(fname); 
	
	System.out.println(fileName);
	
	Connection conn = null;	
	PreparedStatement pstmt = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/goguma?user=webfinal&password=webfinal");
		
		Statement stmt = conn.createStatement();
		String sql = "INSERT INTO estate(name, price, address, area, housedong, housestair,possibledate, direction,phonenum) VALUES(?,?,?,?,?,?,?,?,?)";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, aptname);
		pstmt.setInt(2, price);
		pstmt.setString(3, address);
		pstmt.setInt(4, area);
		pstmt.setString(5, houseDong);
		pstmt.setString(6, houseStair);
		pstmt.setDate(7, new java.sql.Date(possibleDate.getTime()));
		pstmt.setString(8, direction);
		pstmt.setString(9, sellerNum);

		
		int ret = pstmt.executeUpdate();
		System.out.println(ret);
		out.println("INSERT estate 성공");
	} 
	catch(SQLException ex) {
		ex.printStackTrace();
	} finally {
		if (pstmt != null) pstmt.close();
		if (conn != null) conn.close();
	}
	
	RealEstateRepo dao = RealEstateRepo.getInstance();
	
	RealEstate newProduct = new RealEstate();
	newProduct.setAddress(address);
	newProduct.setAptname(aptname);
	newProduct.setDirection(direction);
	newProduct.setHouseDong(houseDong);
	newProduct.setHouseStair(houseStair);
	newProduct.setPossibleDate(possibleDate.toString());
	newProduct.setPrice(Integer.toString(price));
	newProduct.setSize(Integer.toString(area));
	newProduct.setSellernum(sellerNum);
	newProduct.setHouseimage(fileName);
	System.out.println(fileName);
	dao.addProduct(newProduct);
	
	response.sendRedirect("myPage_renter.jsp");
%>
