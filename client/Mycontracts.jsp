<%@ page contentType="text/html; charset=utf-8"%> 
<%@ page import="java.net.URLDecoder"%> 
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "dto.RealEstate" %>
<%@ page import = "dao.RealEstateRepo" %>

<jsp:useBean id="productDAO" class = "dao.RealEstateRepo" scope = "session"></jsp:useBean>



<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="main.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css">
</head>

<body>
    <script src="https://unpkg.com/swiper/js/swiper.js"></script>
    <script src="https://unpkg.com/swiper/js/swiper.min.js"></script>


	<!-- 내 매물 리스트 -->
        <h1 class="h1_text" style = "text-align : center;">내가 올린 매물 리스트</h1>
            <%
    					RealEstateRepo dao = RealEstateRepo.getInstance();
                    	ArrayList<RealEstate> listOfProducts = dao.getAllProducts();
   			 %>
               
               
               
               
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
                    <div class="card">
                
                        <div class="card-header" >
                            <div class = "card-header-is_closed" > 
                            
                                <div class = "card-header-text" > 계약완료 </div > 
                                <div class = "card-header-number" ></div > 
                            </div>
                            <% out.println(re.getHouseimage()); %>
                            <img src = "./images/<%=re.getHouseimage() %>" style = "width : 100%;height : 70%;">
                        </div>
                
                
                        <div class="card-body">
                            <div class="card-body-header">
                                <h1><%=re.getAddress() %></h1>
                                <p class="card-body-hashtag"><%=re.getAptname() %></p>
                                 <p class = "card-body-nickname"> 

                                            </p>
                            </div>
                					<p> <b>매매 가격</b> : <%=re.getPrice() %> <br>
            						<p> <b>면적</b> : <%=re.getSize() %> &nbsp;&nbsp;&nbsp;
            						<b>동</b> : <%=re.getHouseDong() %> &nbsp;&nbsp;&nbsp;
             						<b>층</b> : <%=re.getHouseStair() %><br><hr>

            						<p> <b>매물상세정보</b><br>
            						<p> <b>방향</b> : <%=re.getDirection() %> <br>
            						<p> <b>입주가능일</b> : <%=re.getPossibleDate() %> <br>
            						<p> <b>등록번호</b> : <%=re.getRegiNum() %> <br>
                            <p class="card-body-description">

                            </p>
                
                            <div class="card-body-footer">
                                <hr style="margin-bottom: 8px; opacity: 0.5; border-color: #EF5A31">
                                <i class="reg_date"> 2020/06/25 </i>
                            </div>
                        </div>
                    </div></div>
                    
                    
                 <%
        	} 
        %>
            </div>
            <!-- If we need pagination -->
            <div class="swiper-pagination"></div>
        
            <!-- If we need navigation buttons -->
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
        
            <!-- If we need scrollbar -->
            <div class="swiper-scrollbar"></div>
        
       
        </div>
               
               
               
               
               
               
               
               
        
        
        
        
        
 
        
        
        
        
        
        
        
        <script>
        var mySwiper = new Swiper ('.swiper1', {
          // Optional parameters
          slidesPerView: 3,
        centeredSlides: true,
        spaceBetween: 30,
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
            direction : 'vertical', // 무한 루프 슬라이드, 반복이 되며 슬라이드가 끝이 없다.
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