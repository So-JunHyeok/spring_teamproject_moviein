<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
</head>
<script>
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
  $('.search-contents').find('input').on('focus', () => {
    $('.search-contents').find('input').closest('div').animate({width : 300}, 500);
    $('.search-contents').find('input').closest('div').find('i').css('color', 'black');
  })

  $('.search-contents').find('input').on('blur', () => {
    $('.search-contents').find('input').closest('div').animate({width : 200}, 500);
    $('.search-contents').find('input').closest('div').find('i').css('color', 'gray');
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
            <a href="#">Main</a>
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
          <div class="login">
            <a href="#" ><i class="fas fa-sign-in-alt"></i></a>
          </div>
          <div class="sign-up">
            <a href="#"><i class="fas fa-user-plus"></i></a>
          </div>
          <div class="logout">
            <a href="#"><i class="fas fa-sign-out-alt"></i></a>
          </div>
          <div class="information">
            <a href="RSinfor"><i class="fas fa-address-card"></i></a>
          </div>
        </div>
      </div>
    </div>

</body>
<section>
    <div class="login1" style="display:none">

        <form class="#">
        <div class="login-container">

        <div class="login-box">
          <h2 class="login-h">LOGIN</h2>

        <div class="login-idbox">
          <i class="fas fa-unlock"></i>
          <input type="text" placeholder="ID">
        </div>

        <div class="login-idbox">
          <i class="fas fa-key"></i>
          <input type="password" placeholder="Password"
          maxlegnth="16"><br>
        </div>

          <!-- 아직 회원가입 창으로 넘어갈 수 있는 링크는 지정 안 함 -->
        <div class="login-button">
          <input class="btn1" type="submit" value="login" onclick="login">
          <input class="btn1" type="submit" value="Sing-up" onclick="join">
        </div>
    </div>
    </div>
      </form>
    </div>

    <div class="join" style="display:none">
    <form action="#">
    <div class="join-container">

    <div class= "join-box">

    <h2 class="join-signup">Sign-up</h2>

    <!-- 아이디, 비밀번호, 비밀번호 재입력 -->
    <div class="join-box2">
      <i class="fas fa-id-card"></i>
      <input type="text" id="id" placeholder="ID" size="14">
      <input class="idcheck" type="button" value="중복체크">
    </div>

    <div class="join-box2">
      <i class="fas fa-key"></i>
      <input type="password" id="password"
      placeholder="Password" maxlegnth="16" size="25">
    </div>

    <div class="join-box2">
      <i class="fas fa-key"></i>
      <input type="password" id="repassword" placeholder="Repassword" size="25">
    </div>

    <!-- 이름, 생년월일 -->
    <div class="join-box2">
      <i class="fab fa-amilia"></i>
      <input type="text" id="name" placeholder="Name" size="25"></td>
    </div>

    <div class="join-box2">
      <i class="fas fa-birthday-cake"></i>
      <input type="text" id="birth" placeholder="Birth" size="25">
    </div>

    <!-- 전화번호 및 이메일 주소 -->
    <div class="join-box2">
      <i class="fas fa-phone"></i>
      <input type="text" id="phone" placeholder="Tel" size="25">
    </div>

    <div class="join-box2">
      <i class="fas fa-envelope"></i>
      <input type="text" id="email" placeholder="Email" size="25">
    </div>
    <div class="join-box2">
      <input type="radio" id="man" name="gender" value="남자" checked>
      <label for="man">남자</label>
      <input type="radio" id="woman" name="gender" value="여자">
      <label for="woman">여자</label>
    </div>
    <div class="join-box2">
      <!-- <textarea placeholder="좋아하는 장르를 입력하세요." cols="35" rows="5"></textarea> -->
      <select name="genre">
      	<option value="comedy">코미디</option>
      	<option value="romantic">멜로</option>
      	<option value="action">액션</option>
      	<option value="horror">호러</option>
      	<option value="crime">범죄</option>
      	<option value="none">없음</option>
      </select>
    </div>


    <!-- 가입 버튼 및 취소 버튼(합침) -->
    <!-- 가입 버튼은 가입된 메인 페이지로 넘어가도록 함, 로그인이 정상적으로 되었다는 메시지 출력 -->
    <!-- 취소 버튼은 메인 페이지로 이동하되, 처음과 같은 페이지여야 함 취소되었다는 메시지 출력-->
    <div class="join-box2">
      <input class="btn2" type="submit" value="Sing-up" onclick="join">
      <input class="btn2" type="reset" value="Cancle" onclick="cancle">
    </div>

  </div>
  </div>
  </form>
  </div>
  </section>
</html>