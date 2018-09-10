<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>영화 소개</title>
    <link rel="stylesheet" href="resources/css/style-index.css"/>
    <link rel="stylesheet" href="resources/css/swiper.min.css">
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Markazi+Text" rel="stylesheet">
    <script src="resources/js/jquery-3.3.1.min.js"></script>
    <script src="resources/js/swiper.min.js"></script>
    <script type="text/javascript" src="resources/js/application.js"></script>
  </head>
  <body>
<div id="wrap">
<!-- Header -->
<jsp:include page="header.jsp"></jsp:include>


    <!--Contents -->
    <div id="contents">
      <div class="container">
        <div class="content-area">
          <div class="movie">
          	<input type="hidden" name="dNum" value="${idccontent_view.dNum}">
          	 <div class="introduction">  <!-- 영화 제목 -->
          		${idccontent_view.dTitle}
          	 </div>
          	 
          	<div class="movie-trailer">
          	<video width="960" height="480" controls> <source
						src="<c:url value='/upload_test/${idccontent_view.safeFile2.substring(15)}'/>"
						type="video/ogg"> <source
						src="<c:url value='/upload_test/${idccontent_view.safeFile2.substring(15)}'/>"
						type="video/mp4"> <source
						src="<c:url value='/upload_test/${idccontent_view.safeFile2.substring(15)}'/>"
						type="video/webm"></video>
          	</div>
          	
            <div class="aboutmovie">  <!-- 영화 소개 -->
              ${idccontent_view.dContent}
        	</div>
        	
        	
        <div class="swiper-container">
          <div class="swiper-wrapper">
          <div class="swiper-slide"><img class="img" src="resources/img/gongjak1.jpg"><h2 class="htag">공작</h2></div>
          <div class="swiper-slide"><img class="img" src="resources/img/gongjak2.jpg"><h2 class="htag">공작</h2></div>
          <div class="swiper-slide"><img class="img" src="resources/img/gongjak3.jpg"><h2 class="htag">공작</h2></div>
          <div class="swiper-slide"><img class="img" src="resources/img/gongjak4.jpg"><h2 class="htag">공작</h2></div>
          <div class="swiper-slide"><img class="img" src="resources/img/gongjak5.jpg"><h2 class="htag">공작</h2></div>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
    </div>
    
    	<div class="introduction-release">
    	<i class="fas fa-calendar-alt" style="margin-right: 17px;"></i>
    		 ${idccontent_view.dRelease}
    	</div>
    	<div class="introduction-hit">
    	<i class="fas fa-shoe-prints" style="margin-right: 10px;"></i>
    		${idccontent_view.dHit}
    	</div>
    
    	<div class="introduction-info">
    		<div class="modify-btn">	
    			<a href="MImovielist">목록</a>
    		</div>
    		<div class="modify-btn">
    			<a href="MIidcdelete?dNum=${idccontent_view.dNum}">삭제</a>
    		</div>
    		<div class="modify-btn">
    			<a href="MIidcmodify_view?dNum=${idccontent_view.dNum}">수정</a>
    		</div>
    	</div>



          <div class="reply-box">
            <div class="reply-head">내 평점</div>
            <div class="reply-rating">
              별점: ☆☆☆☆☆
            </div>
            <div class="reply-write">
              <div class="reply-text">
                <textarea name="reply-content" cols="100" rows="7" style="resize: none" placeholder="내용을 입력하세요."></textarea>
              </div>
              <div class="reply-btn">
                <input class="contents-btn" type="button" name="" value="등록">
              </div>
            </div>
          </div>

          <div class="reply-view">
            댓글 박스
          </div>
      </div>
    </div>
    <!--Contents -->
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
