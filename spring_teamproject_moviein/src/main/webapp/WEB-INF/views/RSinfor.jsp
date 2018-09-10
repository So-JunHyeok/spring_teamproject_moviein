<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 정보보기</title>
    <link rel="stylesheet" href="resources/css/reset.css">
    <link rel="stylesheet" href="resources/css/information.css">
</head>
<body>
<div id="wrap">
<!-- Header -->
<jsp:include page="header.jsp"></jsp:include>



		<div id="contents">
			<div class="container">
				<div class="myinfor">
					<div class="ticketing">
						<div class="ticketing-ctn">
							<div class="ticketing-id" style="margin-top: 50px">
								<h4>아이디</h4>
								<input type="text" name="id" value="${member.id}" disabled>
							</div>
							<div class="ticketing-name">
								<h4>이름</h4>
								<input type="text" name="name" value="${member.name}" disabled>
							</div>
							<div class="ticketing-number">
								<h4>예매 수</h4>
								<input type="text" name="ticketing" value="" disabled>
							</div>
							<div class="ticketing-btn">
								<input type="button" value="예매 정보" onclick="location.href=''">
							</div>
						</div>
					</div>
					
					<div class="infor">
						<div class="infor-ctn">
							<div class="infor-id" style="margin-top: 10px">
								<h4>아이디</h4>
								<input type="text" name="id" value="${member.id}" disabled>
							</div>
							<div class="infor-name">
								<h4>이름</h4>
								<input type="text" name="name" value="${member.name}" disabled>
							</div>
							<div class="infor-addr">
								<h4>주소</h4>
								<input type="text" name="addres" value="${member.address2}" disabled>
							</div>
							<div class="infor-tel">
								<h4>휴대전화</h4>
								<input type="tel" name="tel" value="${member.tel}" disabled>
							</div>
							<div class="infor-btn">
								<input type="button" value="정보수정" onclick="location.href='RSmodify_view'">
							</div>
						</div>
					</div>
					<div class="password">
						<div class="password-ctn">
						<form action="#" method="post">
							<div class="password-ept" style="margin-top: 50px">
								<h4>현재비밀번호</h4>
								<input type="password" name="password" placeholder="password">
							</div>
							<div class="password-ept">
								<h4>새로운 비밀번호</h4>
								<input type="password" name="newpassword" placeholder="newpassword">
							</div>
							<div class="password-ept">
								<h4>새로운 비밀번호 확인</h4>
								<input type="password" name="newrepassword" placeholder="newrepassword">
							</div>
							<div class="repassword-btn">
								<input type="submit" value="비밀번호 변경" >
							</div>
						</form>
						</div>
					</div>
					
					<div class="secession">
						<div class="secession-ctn">
							<form action="RSdelete" method="post">
							<div class="secession-name" style="margin-top: 95px">
								<h4>비밀번호</h4>
								<input type="password" name="password" placeholder="password">
							</div>
							<div class="secession-btn">
								<input type="submit" value="회원탈퇴">
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--Contents -->


<jsp:include page="footer.jsp"></jsp:include>
  </div>
</body>
</html>