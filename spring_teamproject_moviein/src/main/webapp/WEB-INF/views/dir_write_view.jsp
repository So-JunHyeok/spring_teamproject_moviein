<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>게시판</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.js"></script>
<script src="//cdn.ckeditor.com/4.7.1/full/ckeditor.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		CKEDITOR.replace('content', {//해당 이름으로 된 textarea에 에디터를 적용
			width : '100%',
			height : '400px',
			filebrowserImageUploadUrl : '/community/imageUpload' //여기 경로로 파일을 전달하여 업로드 시킨다.
		});
		CKEDITOR.on('dialogDefinition', function(ev) {
			var dialogName = ev.data.name;
			var dialogDefinition = ev.data.definition;

			switch (dialogName) {
			case 'image': //Image Properties dialog
				//dialogDefinition.removeContents('info');
				dialogDefinition.removeContents('Link');
				dialogDefinition.removeContents('advanced');
				break;
			}
		});
	});
</script>
</head>

  <jsp:include page="header.jsp"></jsp:include>

<body>
	<input type="hidden" id="board_id" name="board_id"
		value="${boardView.id}" />
	<div align="center">
		<form name="fileForm" action="requestupload3" method="post" enctype="multipart/form-data">
			<table width="1200px">
				<tr>
					<td>제목: <input type="text" id="subject" name="dAI_Title" style="width: 600px;" placeholder="제목" /> 
						작성자: <input type="text" id="writer" name="dAI_Name" style="width: 170px;" maxlength="10" placeholder="작성자" /> 
						<input type="submit" name="업로드" value="게시글 쓰기"> 
					</td>
				</tr>
				<tr>
					<td><textarea name="dAI_Content" id="content" rows="10" cols="80"></textarea>
					<input type="file" name="safeFile" />
					</td>
				</tr>
			</table>
		</form>
	</div>
	  <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>