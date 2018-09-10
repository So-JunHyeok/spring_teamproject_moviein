<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="UTF-8">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery.bpopup.min.js"></script>
  <script src="js/swiper.min.js"></script>
  <link rel="stylesheet" href="css/reset.css"/>
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  <link rel="stylesheet" href="resources/css/style.css">
  <link rel="stylesheet" href="css/swiper.min.css">
  <title>Document</title>
</head>

<body>

    <jsp:include page="header.jsp"></jsp:include>


  <div id="wrap">
    
    
    <div id="content"><!-- 영영구분 중간(내용) -->
      <div id="introduce">
        <h3 id="title">글이 작품이 되는 공간, 브런치</h3>
        <p>
          <span class="intro">브런치에 담긴 아름다운 작품을 감상해 보세요.</span><br>
          <span class="intro">그리고 다시 꺼내 보세요.</span><br>
          <span class="intro">서랍 속 간직하고 있는 글과 감성을.</span><br>
        </p>
      </div>


      <div class="magazines">
        <div class="main-img">
          <div class="cover"></div>
            <img src="./img/Ex_01.jpg" class="imgs">
  
        </div>
        <div class="main-img">
          <div class="cover"></div>
            <img src="./img/Ex_02.jpg" class="imgs">
        
        </div>
        <div class="main-img">
          <div class="cover"></div>
            <img src="./img/Ex_03.jpg" class="imgs">
           
        </div>
        <div class="main-img">
          <div class="cover"></div>
            <img src="./img/Ex_04.jpg" class="imgs">
          
        </div>
        <input type="submit" src="write_view">
      </div>


      <div id="moveweekly">
        <div id="moveweeklyimgarea">
          <div id="wtitle">
          <h2 class="ti3">WEEKLY MOVE</h2>
          <h4 id="ti4">comcept</h4>

          </div>

            <div class="moveimg"><img class="imgmove" src="./img/move/mo1.jpg"></div>
            <div class="moveimg"><img class="imgmove" src="./img/move/mo2.jpg"></div>
            <div class="moveimg"><img class="imgmove" src="./img/move/mo3.jpg"></div>
            <div class="moveimg"><img class="imgmove" src="./img/move/mo4.jpg"></div>
            <div class="moveimg"><img class="imgmove" src="./img/move/mo5.jpg"></div>

        </div>


      </div>
        <div id="content_review_area">
        <div id="reviewtitle">
          <h2 class"ti3">I N D P E N D E N T &nbsp; M O V I E &nbsp; M A G A Z I N E S</h2>
                    <h4>좋은 영화가 모여있는 공간</h4>

        </div>
        </div>


</div>


         


  <jsp:include page="footer.jsp"></jsp:include>

</div>


</body>

<script>
  var swiper = new Swiper('.swiper-container', {
    pagination: {
      el: '.swiper-pagination',
      type: 'fraction',
    },
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  });
</script>

</html>