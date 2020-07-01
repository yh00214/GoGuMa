<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLDecoder"%> 
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "dto.RealEstate" %>
<%@ page import = "dao.RealEstateRepo" %>

<jsp:useBean id="productDAO" class = "dao.RealEstateRepo" scope = "session"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link href="myPage_renter.css" rel="stylesheet" media="all">

</head>
<body>
	<h1 class="h1_text" style = "text-align : center;">내 매물 현황</h1><br><br>
            <%
    					RealEstateRepo dao = RealEstateRepo.getInstance();
                    	ArrayList<RealEstate> listOfProducts = dao.getAllProducts();
   			 %>
   			 

	<div class="container">
	   			 
		<div class="row">
					<%
            					for(int i =5; i< listOfProducts.size();i++)
                             {
                                   		RealEstate re = listOfProducts.get(i);
                                   		
                                   		
            			%>	
			<div class="col-sm">
			
				 <div class="card" style="width: 18rem;">
				 		<% out.println("./images/"+re.getHouseimage()); %>
					  <img class="card-img-top" src="./images/<%=re.getHouseimage() %>" alt="Card image cap">
					  <div class="card-body">
					    <h5 class="card-title"><%=re.getAddress() %>
                                <p class="card-body-hashtag"><%=re.getAptname() %></p></h5>
					    <p class="card-text">                                
					    
					 

                                            </p>
                            
                					<p> <b>매매 가격</b> : <%=re.getPrice() %> <br>
            						<p> <b>면적</b> : <%=re.getSize() %> &nbsp;&nbsp;&nbsp;
            						<b>동</b> : <%=re.getHouseDong() %> &nbsp;&nbsp;&nbsp;
             						<b>층</b> : <%=re.getHouseStair() %><br><hr>
             						</div>
				 	 </div>
				
				
				
				</div>
				<%
        	} 
        %>
			</div>

                 







		</div>
	</div>
	
</body>
</html>