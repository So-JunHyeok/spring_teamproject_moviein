<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="resources/css/peopleview.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Header -->
	<jsp:include page="header.jsp"></jsp:include>
	<div id="wrap" class="people-container">

		<div class="people-left"></div>
		<div class="people-center">
			<div class="view-title">
				<h3>${director_view.dAI_Title }</h3>
				<h4>
					2018-8-18 | <a href="">박은영 기자</a>
				</h4>
			</div>
			<div class="view-content">
				<h3>[무비스트=박은영 기자]</h3>
				<div class="view-content-img">
					<img src="resources/img/p1-1.jpg" alt="">
				</div>
				<div class="view-content-p">
						<video width="960" height="480" controls> <source
						src="<c:url value='/upload_test/${people_view.safeFile2.substring(15)}'/>"
						type="video/ogg"> <source
						src="<c:url value='/upload_test/${people_view.safeFile2.substring(15)}'/>"
						type="video/mp4"> <source
						src="<c:url value='/upload_test/${people_view.safeFile2.substring(15)}'/>"
						type="video/webm"></video>
				${director_view.dAI_Content }
				</div>
			</div>
			<a href="director_modify?dAI_Id=${director_view.dAI_Id }">수정</a><a
				href="people_list">목록보기</a> &nbsp;&nbsp; <a
				href="dir_delete?dAI_Id=${director_view.dAI_Id }">삭제</a>
		</div>
		<div class="people-right"></div>

	</div>
		<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>