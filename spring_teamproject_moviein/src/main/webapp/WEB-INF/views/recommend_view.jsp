<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/recommendview.css">
<title>Insert title here</title>
</head>
<body>
  <div id="wrap">
    
      <jsp:include page="header.jsp"></jsp:include>
      
    <div id="contents">
      <div id="left-col">

      </div>
      <div id="right-col">

      </div>
      <div class="re-view-container">
        <div class="lee-co">
          <h4>회원들의 추천 영화</h4>
        </div>
        <div class="re-view-title">
          <p>${recommend_view.dAI_Title }</p>
        </div>
        <div class="view-content">
        	${recommend_view.dAI_Content}
        </div>
      </div>

    </div>
  </div>

  <jsp:include page="footer.jsp"></jsp:include>
  
</body>
</html>