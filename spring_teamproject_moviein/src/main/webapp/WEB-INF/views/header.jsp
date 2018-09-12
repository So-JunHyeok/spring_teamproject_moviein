<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="resources/css/header.css">
 <link rel="stylesheet" href="resources/css/reset.css">
 <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">  <!-- 로그인 -->
 <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">  <!-- 메뉴바 -->
 <link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">  <!-- 로그인,회원가입 제목 -->
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
 <script src="resources/js/jquery-3.3.1.min.js"></script>
 <script src="resources/js/jquery.bpopup.min.js"></script>
 <script type="text/javascript" src="resources/js/application.js"></script>
 <script src="resources/js/join.js"></script>
 <script src="resources/js/daumpost.js"></script>
 <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>
<script>
function gotojoin(){
	  
    bpopup=$('.join').bPopup({
        fadeSpeed: 'slow', //can be a string ('slow'/'fast') or int
        followSpeed: 1000, //can be a string ('slow'/'fast') or int
        modalColor: '#F2F2F2'
        
    });
 }

// 로그인
$(document).ready(function(){
  var bpopup='';

  $('.login').find('a').on('click', function(e){
    e.preventDefault();

    bpopup=$('.login1').bPopup({
        fadeSpeed: 'slow', //can be a string ('slow'/'fast') or int
        followSpeed: 1000, //can be a string ('slow'/'fast') or int
        modalColor: '#F2F2F2'
    })
  })
  // 검색창
  $('.search-contents').find('input').on('focus', function() {
    $('.search-contents').find('input').closest('div').animate({width : 300}, 500);
    $('.search-contents').find('input').closest('div').find('i').css('color', 'black');
  })

  $('.search-contents').find('input').on('blur', function() {
    $('.search-contents').find('input').closest('div').animate({width : 200}, 500);
    $('.search-contents').find('input').closest('div').find('i').css('color', 'gray');
  })
  
  $(".logout").find('a').on("click", function(e) {
	  $.ajax({
		  type: "GET",
		  url: "logout",
		  success: function(data) {
			  alert("로그아웃 되었습니다.");
			  var ctx=window.location.pathname.substring(0, window.location.pathname.indexOf("/MImovielist",2));
 				window.location.href=ctx + "/MImovielist";
		  }
	  })
  })
})
// 회원가입
$(document).ready(function(){
  var bpopup='';

  $('.sign-up').find('a').on('click', function(e){
    e.preventDefault();

    bpopup=$('.join').bPopup({
        fadeSpeed: 'slow', //can be a string ('slow'/'fast') or int
        followSpeed: 1000, //can be a string ('slow'/'fast') or int
        modalColor: '#F2F2F2'
    })
  })
})
</script>
<body>

 <div id="header">
    <div class="container">
      <div id="content-list">
                <dl id="rank-list">
                <i class="fas fa-bell"></i>
                    <dt>실시간 급상승 검색어</dt>
                    <dd>
                        <ol>
                            <li><a href="#">1. 공작</a></li>
                            <li><a href="#">2. 신과함께</a></li>
                            <li><a href="#">3. 맘마미아!2</a></li>
                            <li><a href="#">4. 몬스터 호텔</a></li>
                            <li><a href="#">5. 미션 임파서블</a></li>
                            <li><a href="#">6. 명탐정 코난</a></li>
                            <li><a href="#">7. 극장판 헬로로봇</a></li>
                            <li><a href="#">8. 인크래더블 2</a></li>
                            <li><a href="#">9. 어느 가족</a></li>
                            <li><a href="#">10. 노인을 위한 나라는 없다</a></li>
                        </ol>
                    </dd>
                </dl>
            </div>


            <div class="searchbox">
              <div class="search-contents">
                <form action="#">
                <i class="fas fa-search"></i>
                <input type="search" id="search" placeholder="Search..">
                </form>
              </div>
            </div>



        <div class="topmenu">
          <div class="menu">
            <a href="/">Main</a>
          </div>
          <div class="menu">
            <a href="MImovielist">Independent Film</a>
          </div>
          <div class="menu">
            <a href="recommend_list">Recommendation</a>
          </div>
          <div class="menu">
            <a href="people_list">Interview</a>
          </div>
          <c:if test="${sessionScope.id == null}">
          <div class="login">
            <a href="#" ><i class="fas fa-sign-in-alt"></i></a>
          </div>
          <div class="sign-up">
            <a href="#"><i class="fas fa-user-plus"></i></a>
          </div>
          </c:if>
          <c:if test="${sessionScope.id != null}">
          <div class="logout">
            <a href="#"><i class="fas fa-sign-out-alt"></i></a>
          </div>
          <div class="information">
            <a href="RSinfor"><i class="fas fa-address-card"></i></a>
          </div>
          </c:if>
        </div>
      </div>
    </div>

</body>
<section>
    <div class="login1" style="display:none">

        <div class="login-container">

        <div class="login-box">
          <h2 class="login-h">LOGIN</h2>

        <div class="login-idbox">
          <i class="fas fa-unlock"></i>
          <input type="text" id="lid" name="id" placeholder="ID">
        </div>

        <div class="login-pwbox">
          <i class="fas fa-key"></i>
          <input type="password" id="lpassword" name="password" placeholder="Password" maxlength="16"><br>
        </div>

          <!-- 아직 회원가입 창으로 넘어갈 수 있는 링크는 지정 안 함 -->
        <div class="login-button">
          <input class="login-btn" type="submit" value="login" onclick="login();">
          <input class="login-btn" type="button" value="Sing-up" onclick="gotojoin();">
        </div>
    </div>
    </div>
    </div>

    <div class="join" style="display:none">
    <div class="join-container">

    <div class= "join-box">

    <h2 class="join-signup">Sign-up</h2>

    <!-- 아이디, 비밀번호, 비밀번호 재입력 -->
    <div class="join-box2">
      <i class="fas fa-id-card"></i>
      <input type="text" id="id" name="id" placeholder="ID" size="40">
     </div>
     <div class="check-btn">
      <input class="idcheck" type="button" value="중복체크" onclick="idcheck()">
    </div>

    <div class="join-box2">
      <i class="fas fa-key"></i>
      <input type="password" id="password"
      name="password" placeholder="Password" maxlength="16" size="40">
    </div>

    <div class="join-box2">
      <i class="fas fa-key"></i>
      <input type="password" id="repassword" name="repassword" placeholder="Repassword" maxlength="16" size="40">
    </div>

    <!-- 이름, 생년월일 -->
    <div class="join-box2">
      <i class="fab fa-amilia"></i>
      <input type="text" id="name"  name="name" placeholder="Name" size="40">
    </div>

    <div class="birth-box">
      <i class="fas fa-birthday-cake"></i>
      <input type="date" id="birth" name="birth">
    </div>
    
	<div class="join-box2">
		<i class="fas fa-home"></i>
		<input type="text" id="postcode" placeholder="우편번호" size="40">
	</div>
	<div class="post-btn">
		<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
	</div>
	<div class="join-box2">
		<i class="fas fa-home"></i>
		<input type="text" id="address" placeholder="주소" size="40">
	</div>
	<div class="join-box2">
		<i class="fas fa-home"></i>
		<input type="text" id="address2" placeholder="상세주소" size="40">
	</div>
	
    <!-- 전화번호 및 이메일 주소 -->
    <div class="join-box2">
      <i class="fas fa-phone"></i>
      <input type="tel" id="tel" name="tel" placeholder="Tel" size="40">
    </div>

    <div class="join-box2">
      <i class="fas fa-envelope"></i>
      <input type="email" id="email" name="email" placeholder="Email" size="40">
    </div>
    <div class="join-box2">
      <input type="radio" id="man" name="gender" value="남자" checked>
      <label for="man">남자</label>
      <input type="radio" id="woman" name="gender" value="여자">
      <label for="woman">여자</label>
    </div>
    <div class="join-box2">
      <select name="genre" id="genre">
      	<option value="comedy" selected>코미디</option>
      	<option value="romantic">멜로</option>
      	<option value="action">액션</option>
      	<option value="horror">호러</option>
      	<option value="crime">범죄</option>
      	<option value="none">없음</option>
      </select>
    </div>
    <div class="join-box2">
      <input class="btn2" type="submit" value="Sign-Up" onclick="signup();" id="join-btn" disabled>
      <input class="btn2" type="button" value="Cancle" onclick="location.href='MImovielist'">
    </div>

  </div>
  </div>
  </div>
  </section>
</html>