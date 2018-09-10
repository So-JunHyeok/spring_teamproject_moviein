<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/recommendview.css">
<title>Insert title here</title>
</head>
<body>
	<div id="wrap">
		<!-- Header -->
		<jsp:include page="header.jsp"></jsp:include>
		<div id="contents">
			<div id="left-col"></div>
			<div id="right-col"></div>
			<div class="re-view-container">
				<div class="lee-co">
					<h4>회원들의 추천 영화</h4>
				</div>
				<div class="re-view-title">
					<p>${recommend_view.dAI_Title}</p>
				</div>
				<div class="view-content">

					<video width="960" height="480" controls> <source
						src="<c:url value='/upload_test/${recommend_view.safeFile2.substring(15)}'/>"
						type="video/ogg"> <source
						src="<c:url value='/upload_test/${recommend_view.safeFile2.substring(15)}'/>"
						type="video/mp4"> <source
						src="<c:url value='/upload_test/${recommend_view.safeFile2.substring(15)}'/>"
						type="video/webm"></video>
					${recommend_view.dAI_Content}

				</div>
			</div>
			<a href="recommend_modify?dAI_Id=${recommend_view.dAI_Id }">수정</a> <a
				href="recommend_list">목록보기</a> &nbsp;&nbsp; <a
				href="rec_delete?dAI_Id=${recommend_view.dAI_Id }">삭제</a>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>