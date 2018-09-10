<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>정보 수정</title>
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/information.css">
<script src="resources/js/daumpost.js"></script>
</head>
<body>

	<div id="wrap">
		<!-- Header -->
		<jsp:include page="header.jsp"></jsp:include>



		<div id="contents">
			<div class="container">
				<div class="modifyform">
					<div class="modify-box">
						<div class="teamname-title">
							<img src="resources/img/movieinside-black.png">
						</div>
						<div class="name">
							<h2>Modify Information</h2>
						</div>
						<form action="RSmodify_prc" method="post">
							<div class="modify-box">
								<input type="text" size="33" name="id" value="${member.id}"
									readonly>
							</div>

							<div class="modify-box">
								<input type="text" size="33" name="name" value="${member.name}"
									readonly>
							</div>

							<div class="modify-box">
								<input type="text" size="33" name="birth"
									value="${member.birth}" readonly>
							</div>

							<div class="modify-box">
								<input type="tel" size="33" name="tel" placeholder="tel">
							</div>

							<div class="modify-box">
								<input type="email" size="33" name="email" placeholder="email">
							</div>

							<div class="modify-box">
								<select name="genre">
									<option value="comedy">코미디</option>
									<option value="romantic">멜로</option>
									<option value="action">액션</option>
									<option value="horror">호러</option>
									<option value="crime">범죄</option>
									<option value="none">없음</option>
								</select>
							</div>

							<div class="modify-box">
								<input class="modify-btn" type="submit" value="저장"> <input
									class="modify-btn" type="button" value="취소"
									onclick="location.href='RSinfor'">

							</div>
						</form>
					</div>
				</div>

			</div>
		</div>
		<!--Contents -->


		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>
