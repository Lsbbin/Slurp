<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
	<head>
	<title>Slurp</title>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<!-- header -->
	<%@include file="../header.jsp" %>
	
	<style type="text/css">
		th{
			text-align: center;
			border-top: 1px solid e6e6e6;
			font-size: 17px;
			font-weight: normal;
			border-bottom: 1px solid e6e6e6;
		}
		table,td,tr{
			border-collapse: collapse;
			font-size: 15px;;
		}
		td{
			border-bottom: 1px solid #e6e6e6;
			color: black;
			padding: 20px;
		}
		input[type="text"] {
    		height: 30px !important;
    		width: 250px;
		}
		.btn1{
			color: black;
			font-family: 'Do Hyeon', sans-serif;
			font-size: 15px;
			font-weight: 100;
			cursor: pointer;
			border-radius: 5px;
			background-color: #f0f0f0;
			border: 0;
			padding: 5px 10px 5px 10px;
			margin-top: 20px;
			letter-spacing: 1px;
		}
		.btn1:hover{
			background-color: gray;
			color: white;
		}
		.btn1:focus{
			outline: 0;
			border: 0;
		}
	</style>

	</head>
	
	<body>
		
	
	
	<div id="page">
	
		<!-- 상단메뉴 시작 -->
		<%@include file="../topbar.jsp" %>
		<!-- 상단메뉴 끝 -->
		<div class="container" style="margin-top: 150px;">
			<div style="background-color: #f0f0f0; margin-bottom: 50px;">
			<h5 style="margin-left: 10px; letter-spacing: 2px;">이벤트 게시판</h5></div>
			<div>
			<form action="eventRegist" method="post" enctype="multipart/form-data">
				<input type="hidden" name="aid" value="${sessionScope.loginId }">
				<table style="width: 100%;">
				
					<tr>
						<th>글제목</th>
						<td><input type="text" name="etitle" id="input_title"></td>
					</tr>
					<tr>
						<th>글내용</th>
						<td><textarea cols="100" rows="10" name="econtent" style="resize: none;" id="input_content"></textarea></td>
					</tr>
					<tr>
						<th>IMG</th>
						<td><input type="file" name="efile" id="input_img"></td>
					</tr>

				</table>
				
				<input type="submit" style="float: right;" class="btn1" value="등록하기" onclick="return inputBtn()">				
				
			</form>
			
				<button class="btn1" style="margin-left: 20px; width: 50px;" onclick="location.href='eventList'">목록</button>
			
			</div>
			
		</div>
		
		
		
		</div>
		<!-- footer -->
		<%@include file="../footer.jsp" %>

	</body>
	
	<script type="text/javascript">
	
	
		// 제목 미작성, 이미지 미첨부시 등록하기 버튼 비활성화	
		function inputBtn() {
			
			if($("#input_title").val() != "" && $("#input_img").val() != ""){
				return true
			}
			return false;
		}
	</script>
	
	
</html>


