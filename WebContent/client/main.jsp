<%@ page contentType="text/html; charset=utf-8"%> 
<%@ page import="java.net.URLDecoder"%> 
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "dto.RealEstate" %>
<%@ page import = "dao.RealEstateRepo" %>

<jsp:useBean id="productDAO" class = "dao.RealEstateRepo" scope = "session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="main.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css">

<style>
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
  .card_contract{
	
   height: 100px;

   width: 700px;

   border-radius: 15px;

   display: inline-block;

   margin-top: 30px;

   margin-left: 15px;
   margin-right: 15px;
   
   margin-bottom: 30px;

   position: relative;

   box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);

   overflow: hidden;
	background-color: white;
}

	.contract_content{
		display: inline-block;
		width: 220px;
		font-family: 'Noto Sans KR', sans-serif;
		    vertical-align: middle;
    text-align: center;
    padding-top: 25px; }
		
	.sub_title{
		color: #83a4d4;	
	}
	.text_complete{
		font-weight: bold;
		font-size: larger;
	}
</style>
</head>

<body>
            <%
    					RealEstateRepo dao = RealEstateRepo.getInstance();
                    	ArrayList<RealEstate> listOfProducts = dao.getAllProducts();
   			 %>
    <script src="https://unpkg.com/swiper/js/swiper.js"></script>
    <script src="https://unpkg.com/swiper/js/swiper.min.js"></script>

	<jsp:include page = "header.jsp" />

    <div class="div_middle" style="background: linear-gradient(45deg, #b6fbff, #cf8bf3, #fdb99b)">
        <div class="wrapper"> <!-- 찐 바디-->
	    <h1 class="h1_text" style="text-align: center">방찾기</h1>
	        
	        <div class="swiper-container swiper1">
	            <!-- Additional required wrapper -->
	            <div class="swiper-wrapper">
	                <!-- Slides -->
	                <%
            					for(int i =0; i< listOfProducts.size();i++)
                             {
                                   		RealEstate re = listOfProducts.get(i);
                                   		
                                   		
            			%>
	                <div class="swiper-slide">
	                
	                	<a href="../Goguma_Web/detailedHouse.jsp?regiNum=<%=re.getRegiNum()%>">
		                	<div class="card" >
		                    <!-- ī�� ��� -->
		                
		                        <div class="card-header" style="background-color : white; background-image : url('images/<%=re.getHouseimage() %>')" >
		                            <div class = "card-header-is_closed"  > 
		                                <div class = "card-header-text" > 계약 가능 </div > 
		                                <div class = "card-header-number" > </div > 
		                            </div >
		                        </div>
		                
		                        <!--  ī�� �ٵ� -->
		                
		                        <div class="card-body" style="background-color : white">
		                            <!--  ī�� �ٵ� ��� -->
		                            <div class="card-body-header">
		                                <h1><%=re.getAddress() %></h1>
                                <p class="card-body-hashtag"><%=re.getAptname() %></p>
                                 <p class = "card-body-nickname"> 

                                            </p>
                            
                             <p class="card-body-description"  style="background-color : white">
		                                    <b>매매 가격</b> : <%=re.getPrice() %> <br>
            						 <b>면적</b> : <%=re.getSize() %> <br>
            						<b>동</b> : <%=re.getHouseDong() %> <br>
             						<b>층</b> : <%=re.getHouseStair() %><br>
		                            </p>
                            </div>
                					
		                
		                           
		                
		                            <!--  ī�� �ٵ� ���� -->
		                
		                            <!--  ī�� �ٵ� Ǫ�� -->
		                
		                            <div class="card-body-footer">
		                                <hr style="margin-bottom: 8px; opacity: 0.5; border-color: #EF5A31">
		                                <i class="reg_date"> 2018/04/12 </i>
		                            </div>
		                        </div>
		                    </div>
	                	</a>
	                    
	                
	                </div>
	                <%
                             }
	                %>

	                
	            </div>
	            <!-- If we need pagination -->
	            <div class="swiper-pagination"></div>
	        
	        
	            <!-- If we need scrollbar -->
	            <div class="swiper-scrollbar"></div>
	        </div>
    
    	</div>
    	</div>
    	
    <div class="wrapper"> <!-- 찐 바디-->
    	<h1 class="h1_text" style="text-align: center">실시간 계약 현황</h1>
    	
        <div class="swiper-container swiper2">
            <div class="swiper-wrapper">

                <div class="swiper-slide">
                	<div class="card_contract">
                		<div class="contract_content">
                		<div class="sub_title">판매자</div>
                		최**
                		</div>
                		<div class="contract_content">
                		<div class="sub_title">구매자</div>
                		이**
                		</div>
                		<div class="contract_content">
                		
                		<div class="text_complete">
                			계약 완료
                		</div>
                		
                		</div>
                	</div>
                </div>
                <div class="swiper-slide">
                	<div class="card_contract">
                		<div class="contract_content">
                		<div class="sub_title">판매자</div>
                		유**
                		</div>
                		<div class="contract_content">
                		<div class="sub_title">구매자</div>
                		고**
                		</div>
                		<div class="contract_content">
                		
                		<div class="text_complete">
                			계약 완료
                		</div>
                		
                		</div>
                	</div>
                </div>
                <div class="swiper-slide">
					<div class="card_contract">
                		<div class="contract_content">
                		<div class="sub_title">판매자</div>
                		류**
                		</div>
                		<div class="contract_content">
                		<div class="sub_title">구매자</div>
                		구**
                		</div>
                		<div class="contract_content">
                		
                		<div class="text_complete">
                			계약 완료
                		</div>
                		
                		</div>
                	</div>                
                </div>
                <div class="swiper-slide">
                	<div class="card_contract">
                		<div class="contract_content">
                		<div class="sub_title">판매자</div>
                		박**
                		</div>
                		<div class="contract_content">
                		<div class="sub_title">구매자</div>
                		서**
                		</div>
                		<div class="contract_content">
                		
                		<div class="text_complete">
                			계약 완료
                		</div>
                		
                		</div>
                	</div>
                </div>
                <div class="swiper-slide">
                	<div class="card_contract">
                		<div class="contract_content">
                		<div class="sub_title">판매자</div>
                		김**
                		</div>
                		<div class="contract_content">
                		<div class="sub_title">구매자</div>
                		강**
                		</div>
                		<div class="contract_content">
                		
                		<div class="text_complete">
                			계약 완료
                		</div>
                		
                		</div>
                	</div>
                </div>
            </div>
        
            <!-- 페이징 -->
            <div class="swiper-pagination"></div>
        </div>

   	</div>


	<jsp:include page = "footer.jsp" />
		
    <script>
        var mySwiper = new Swiper ('.swiper1', {
          // Optional parameters
          slidesPerView: 3,
        centeredSlides: true,
        
        loop: true,

          // If we need pagination
          pagination: {
            el: '.swiper-pagination',
            clickable: true,
          },
      
          // Navigation arrows
          navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
          },
      
          // And if we need scrollbar
          scrollbar: {
            el: '.swiper-scrollbar',
            draggable: true,
        },

          autoplay: {
            delay: 2000,
        },
        })

        new Swiper('.swiper2', {
            slidesPerView: 3,
        centeredSlides: true,
        spaceBetween: 30,
            loop : true,
            direction : 'vertical',
            pagination : {
                el : '.swiper-pagination',
            },

            autoplay: {
            delay: 2000,
        },
        });
        </script>
</body>
</html>
