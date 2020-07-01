	<%@ page contentType="text/html; charset=utf-8"%> 
	<%@ page import="com.oreilly.servlet.*" %>
	<%@ page import="com.oreilly.servlet.multipart.*" %>
	<%@ page import="java.util.*" %>
	<%@ page import="dto.RealEstate"%> <%@ page import="dao.RealEstateRepo"%> 
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
    <script type="text/javascript"
        src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=35ywr5ao21"></script>

</head>




<body>

<%
	//String id = request.getParameter("id");
	String id= "34121162";
	if (id == null || id.trim().equals("")) {
	    response.sendRedirect("main.jsp");
	    return;
	}
	RealEstateRepo dao = RealEstateRepo.getInstance();
	
	RealEstate re = dao.getProductById(id); 
%>
        <div class="container col-8 alert alert-info"> 
        <h1 style = "text-align:center; margin-top : 3%;"><%=re.getAddress() %></h2><br>

        <div class = "col-md-5" style = "display : inline-flex; max-width : 100%;">
            <div style = "flex :1; ">
        	<img src = "./images/<%=re.getHouseimage() %>" style = "width : 100%"/>
            </div>
            <div style = "flex :1;">
            <div id="map" style="width:400px;height:300px; margin : 0 auto;"></div>
            </div>
            <script>
                var mapOptions = {
                    center: new naver.maps.LatLng(35.881103, 128.608919),
                    zoom: 18
                };

                var map = new naver.maps.Map('map', mapOptions);
            </script>
        </div>  

        <div class="container">
            <div class="row">

        <div class = "col-md-6">
            <br><br>
        	<p> <b>매매 가격</b> : <%=re.getPrice() %> <br>
            <p> <b>면적</b> : <%=re.getSize() %> &nbsp;&nbsp;&nbsp;
            <b>동</b> : <%=re.getHouseDong() %> &nbsp;&nbsp;&nbsp;
             <b>층</b> : <%=re.getHouseStair() %> <br><hr>

            <p> <b>매물상세정보</b><br>
            <p> <b>방향</b> : <%=re.getDirection() %> <br>
            <p> <b>입주가능일</b> : <%=re.getPossibleDate() %> <br>
            <p> <b>등록번호</b> : <%=re.getRegiNum() %> <br>

            <!-- 발화의도 선택 모달폼 -->
				<button class="btn btn-info" id="editbutton" data-target="#Intent_Modal" data-toggle="modal" style = "width : 400px;margin-left : 50%;">판매자와 연락하기</button><br/>
				   <!-- 여기 수정 ##################################################################################################-->
                        <div class="modal fade" id="Intent_Modal">
                            <div class="modal-dialog">
							
                                <div class="modal-content">

                                    <!-- body -->

                                    <div class="modal-body">
                                       <h2 style = "text-align:center; margin-top : 10%; ">판매자의 연락처는 <br><%=re.getSellernum() %>입니다.</h2><br>
                                    </div>
                                    <!-- Footer -->
                                    <div class="modal-footer">
                                      
                                        <button type="button" class="btn btn-default" data-dismiss="modal" style = "width : 100px; margin-right : 40%;"><h4>확 인</h4></button>
                                    </div>
                                </div>
								
                            </div>
                        </div>
                         <!-- 여기 수정 ##################################################################################################-->
				<!-- 모달폼 끝 -->
        	</div>
        	</div>
        	<hr>
        </div>

        </div>

</body>
</html>