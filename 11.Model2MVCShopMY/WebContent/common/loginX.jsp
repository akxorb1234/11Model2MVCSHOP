		<%@ page contentType="text/html; charset=EUC-KR"%>
		<%@ page pageEncoding="EUC-KR"%>
		
		
		<!--  ///////////////////////// JSTL  ////////////////////////// -->
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		
		<!-- ///////////////////////////// 로그인시 Forward  /////////////////////////////////////// -->
		<c:if test="${ ! empty user }">
			<jsp:forward page="main.jsp" />
		</c:if>
		<!-- //////////////////////////////////////////////////////////////////////////////////////////////////// -->
		
		
		<!DOCTYPE html>
		
		<html lang="ko">
		
		<head>
		<meta charset="EUC-KR">
		
		<!-- 참조 : http://getbootstrap.com/css/   -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		
		<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<script type="text/javascript">
		
		//============= 회원원가입 화면이동 =============
		$( function() {
			//==> 추가된부분 : "addUser"  Event 연결
			$("a[href='#' ]:contains('회원가입')").on("click" , function() {
				self.location = "/user/addUser"
			});
		});
		
		//============= 로그인 화면이동 =============
		$( function() {
			//==> 추가된부분 : "addUser"  Event 연결
			$("a[href='#' ]:contains('로 그 인')").on("click" , function() {
				self.location = "/user/login"
			});
		});
		
		</script>
		
		</head>
		<body>
			<div class="text-center">
		<h1>
		로그인 후 이용하실 수 있습니다.
		</h1>
				<a class="btn btn-info btn-lg" href="javascript:history.go(-1)" role="button">뒤로가기</a> 
				<a class="btn btn-info btn-lg" href="#" role="button">로 그 인</a> 
				<a class="btn btn-info btn-lg" href="#" role="button">회원가입</a> 
			</div>
		</body>
		</html>