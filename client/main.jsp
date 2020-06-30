<%@ page contentType="text/html; charset=utf-8"%> 
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

</head>

<body>
    <script src="https://unpkg.com/swiper/js/swiper.js"></script>
    <script src="https://unpkg.com/swiper/js/swiper.min.js"></script>

    <header>
			<h1 class="title">맛동산부동산</h1>
			<nav>
				<ul class="menu">
					<li><a href="sign/signin.html" class="introduction">Login</a></li>
				</ul>
			</nav>
	</header>

    <div class="wrapper"> <!-- 찐 바디-->
    
    
    <h1 class="h1_text">방찾기</h1>
        
        <div class="swiper-container swiper1">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <!-- Slides -->
                <div class="swiper-slide">
                    <div class="card">
                    <!-- ī�� ��� -->
                
                        <div class="card-header" >
                            <div class = "card-header-is_closed" > 
                                <div class = "card-header-text" > 모집중 </div > 
                                <div class = "card-header-number" > 2 / 5 </div > 
                            </div >
                        </div>
                
                        <!--  ī�� �ٵ� -->
                
                        <div class="card-body">
                            <!--  ī�� �ٵ� ��� -->
                            <div class="card-body-header">
                                <h1>ㅁㅁㅁㅁㅁㅁㅁ!</h1>
                                <p class="card-body-hashtag">#ㅁㅁ #ㅁㅁ #ㅁㅁ</p>
                                 <p class = "card-body-nickname"> 
                                               ㅁㅁㅁ
                                            </p>
                            </div>
                
                            <p class="card-body-description">
                                    ㅁㅁㅁㅁ
                            </p>
                
                            <!--  ī�� �ٵ� ���� -->
                
                            <!--  ī�� �ٵ� Ǫ�� -->
                
                            <div class="card-body-footer">
                                <hr style="margin-bottom: 8px; opacity: 0.5; border-color: #EF5A31">
                                <i class="reg_date"> 2018/04/12 </i>
                            </div>
                        </div>
                    </div></div>
                <div class="swiper-slide">Slide 2</div>
                <div class="swiper-slide">Slide 3</div>
                
            </div>
            <!-- If we need pagination -->
            <div class="swiper-pagination"></div>
        
            <!-- If we need navigation buttons -->
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
        
            <!-- If we need scrollbar -->
            <div class="swiper-scrollbar"></div>
        </div>
    
    
    	<h1 class="h1_text">실시간 계약 현황</h1>
        <div class="swiper-container swiper2">
            <div class="swiper-wrapper">

                <div class="swiper-slide">aaa</div>
                <div class="swiper-slide">bbb</div>
                <div class="swiper-slide">ccc</div>
                <div class="swiper-slide">ddd</div>
                <div class="swiper-slide">eee</div>
            </div>
        
            <!-- 페이징 -->
            <div class="swiper-pagination"></div>
        </div>


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
