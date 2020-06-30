<%@ page contentType="text/html; charset=utf-8"%> 
<%@ page import="java.net.URLDecoder"%> 
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
        
        <div class="swiper-container swiper1">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <!-- Slides -->
                <div class="swiper-slide">
                    <div class="card">
                			
                        <div class="card-header" >
                        	
                            <div class = "card-header-is_closed" > 
                                <div class = "card-header-text" > 계약완료 </div > 
                                <div class = "card-header-number" > </div > 
                            </div >
                            <img src = "./images/apt1.jpg" style = "width : 100%;height : 70%;">
                        </div>
                
                
                        <div class="card-body">
                            <div class="card-body-header">
                                <h1>서초구 반포동</h1>
                                <p class="card-body-hashtag">그랑빌 아파트 15층</p>
                                 <p class = "card-body-nickname"> 
                                            </p>
                            </div>
                
                            <p class="card-body-description">
									<b>구매자 : </b><br>
									<b>판매자 : </b><br>
									<b>매물명 : </b><br>
									<b>계약 일자 : </b><br>
									<b>등록 번호 : </b><br>
									<b>주소 : </b><br>
									<b>구매자 : </b><br>
                            </p>
                
                
                            <div class="card-body-footer">
                                <hr style="margin-bottom: 8px; opacity: 0.5; border-color: #EF5A31">
                                <i class="reg_date"> 2020/06/20 </i>
                            </div>
                        </div>
                    </div></div>
                <div class="swiper-slide">                    <div class="card">
                
                        <div class="card-header" >
                        
                            <div class = "card-header-is_closed" > 
                                <div class = "card-header-text" > 계약완료 </div > 
                                <div class = "card-header-number" > </div > 
                            </div >
                            <img src = "./images/apt2.jpg" style = "width : 100%;height : 70%;">
                        </div>
                
                
                        <div class="card-body">
                            <div class="card-body-header">
                                <h1>대구 달서구</h1>
                                <p class="card-body-hashtag">그레니엄 아파트 3층</p>
                                 <p class = "card-body-nickname"> 
                                            </p>
                                            
                            </div>
                
                            <p class="card-body-description">
									<b>구매자 : </b><br>
									<b>판매자 : </b><br>
									<b>매물명 : </b><br>
									<b>계약 일자 : </b><br>
									<b>등록 번호 : </b><br>
									<b>주소 : </b><br>
									<b>구매자 : </b><br>
                            </p>
                
                
                            <div class="card-body-footer">
                                <hr style="margin-bottom: 8px; opacity: 0.5; border-color: #EF5A31">
                                <i class="reg_date"> 2020/06/20 </i>
                            </div>
                        </div>
                    </div></div>
                <div class="swiper-slide">                    <div class="card">
                
                        <div class="card-header" >
                            <div class = "card-header-is_closed" > 
                                <div class = "card-header-text" > 계약완료 </div > 
                                <div class = "card-header-number" > </div > 
                                
                            </div >
                            <img src = "./images/apt3.jpg" style = "width : 100%;height : 70%;">
                        </div>
                
                
                        <div class="card-body">
                            <div class="card-body-header">
                                <h1>창원 팔용동</h1>
                                <p class="card-body-hashtag">트리비앙 아파트 16층</p>
                                 <p class = "card-body-nickname"> 
                                            </p>
                            </div>
                
                            <p class="card-body-description">
									<b>구매자 : </b><br>
									<b>판매자 : </b><br>
									<b>매물명 : </b><br>
									<b>계약 일자 : </b><br>
									<b>등록 번호 : </b><br>
									<b>주소 : </b><br>
									<b>구매자 : </b><br>
                            </p>
                
                
                            <div class="card-body-footer">
                                <hr style="margin-bottom: 8px; opacity: 0.5; border-color: #EF5A31">
                                <i class="reg_date"> 2020/06/20 </i>
                            </div>
                        </div>
                    </div></div>
                
            </div>
            <!-- If we need pagination -->
            <div class="swiper-pagination"></div>
        
            <!-- If we need navigation buttons -->
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
        
            <!-- If we need scrollbar -->
            <div class="swiper-scrollbar"></div>
        </div>
        
        
        
        
        
        

<!-- 내 계약 리스트 -->
    <h1 class="h1_text" style = "text-align : center;">내 완료된 계약 리스트</h1>
        
        <div class="swiper-container swiper1">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <!-- Slides -->
                <div class="swiper-slide">
                    <div class="card">
                			
                        <div class="card-header" >
                        	
                            <div class = "card-header-is_closed" > 
                                <div class = "card-header-text" > 계약완료 </div > 
                                <div class = "card-header-number" > </div > 
                            </div >
                            <img src = "./images/apt1.jpg" style = "width : 100%;height : 70%;">
                        </div>
                
                
                        <div class="card-body">
                            <div class="card-body-header">
                                <h1>서초구 반포동</h1>
                                <p class="card-body-hashtag">그랑빌 아파트 15층</p>
                                 <p class = "card-body-nickname"> 
                                            </p>
                            </div>
                
                            <p class="card-body-description">
									<b>구매자 : </b><br>
									<b>판매자 : </b><br>
									<b>매물명 : </b><br>
									<b>계약 일자 : </b><br>
									<b>등록 번호 : </b><br>
									<b>주소 : </b><br>
									<b>구매자 : </b><br>
                            </p>
                
                
                            <div class="card-body-footer">
                                <hr style="margin-bottom: 8px; opacity: 0.5; border-color: #EF5A31">
                                <i class="reg_date"> 2020/06/20 </i>
                            </div>
                        </div>
                    </div></div>
                <div class="swiper-slide">                    <div class="card">
                
                        <div class="card-header" >
                        
                            <div class = "card-header-is_closed" > 
                                <div class = "card-header-text" > 계약완료 </div > 
                                <div class = "card-header-number" > </div > 
                            </div >
                            <img src = "./images/apt2.jpg" style = "width : 100%;height : 70%;">
                        </div>
                
                
                        <div class="card-body">
                            <div class="card-body-header">
                                <h1>대구 달서구</h1>
                                <p class="card-body-hashtag">그레니엄 아파트 3층</p>
                                 <p class = "card-body-nickname"> 
                                            </p>
                                            
                            </div>
                
                            <p class="card-body-description">
									<b>구매자 : </b><br>
									<b>판매자 : </b><br>
									<b>매물명 : </b><br>
									<b>계약 일자 : </b><br>
									<b>등록 번호 : </b><br>
									<b>주소 : </b><br>
									<b>구매자 : </b><br>
                            </p>
                
                
                            <div class="card-body-footer">
                                <hr style="margin-bottom: 8px; opacity: 0.5; border-color: #EF5A31">
                                <i class="reg_date"> 2020/06/20 </i>
                            </div>
                        </div>
                    </div></div>
                <div class="swiper-slide">                    <div class="card">
                
                        <div class="card-header" >
                            <div class = "card-header-is_closed" > 
                                <div class = "card-header-text" > 계약완료 </div > 
                                <div class = "card-header-number" > </div > 
                                
                            </div >
                            <img src = "./images/apt3.jpg" style = "width : 100%;height : 70%;">
                        </div>
                
                
                        <div class="card-body">
                            <div class="card-body-header">
                                <h1>창원 팔용동</h1>
                                <p class="card-body-hashtag">트리비앙 아파트 16층</p>
                                 <p class = "card-body-nickname"> 
                                            </p>
                            </div>
                
                            <p class="card-body-description">
									<b>구매자 : </b><br>
									<b>판매자 : </b><br>
									<b>매물명 : </b><br>
									<b>계약 일자 : </b><br>
									<b>등록 번호 : </b><br>
									<b>주소 : </b><br>
									<b>구매자 : </b><br>
                            </p>
                
                
                            <div class="card-body-footer">
                                <hr style="margin-bottom: 8px; opacity: 0.5; border-color: #EF5A31">
                                <i class="reg_date"> 2020/06/20 </i>
                            </div>
                        </div>
                    </div></div>
                
            </div>
            <!-- If we need pagination -->
            <div class="swiper-pagination"></div>
        
            <!-- If we need navigation buttons -->
            <div class="swiper-button-prev">123123</div>
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