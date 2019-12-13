		<%@ page contentType="text/html; charset=EUC-KR"%>
		<%@ page pageEncoding="EUC-KR"%>
		
		
		<!--  ///////////////////////// JSTL  ////////////////////////// -->
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		
		<!-- ///////////////////////////// �α��ν� Forward  /////////////////////////////////////// -->
		<c:if test="${ ! empty user }">
			<jsp:forward page="main.jsp" />
		</c:if>
		<!-- //////////////////////////////////////////////////////////////////////////////////////////////////// -->
		
		
		<!DOCTYPE html>
		
		<html lang="ko">
		
		<head>
		<meta charset="EUC-KR">
		
		<!-- ���� : http://getbootstrap.com/css/   -->
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
		
		//============= ȸ�������� ȭ���̵� =============
		$( function() {
			//==> �߰��Ⱥκ� : "addUser"  Event ����
			$("a[href='#' ]:contains('ȸ������')").on("click" , function() {
				self.location = "/user/addUser"
			});
		});
		
		//============= �α��� ȭ���̵� =============
		$( function() {
			//==> �߰��Ⱥκ� : "addUser"  Event ����
			$("a[href='#' ]:contains('�� �� ��')").on("click" , function() {
				self.location = "/user/login"
			});
		});
		
		</script>
		
		</head>
		<body>
			<div class="text-center">
		<h1>
		�α��� �� �̿��Ͻ� �� �ֽ��ϴ�.
		</h1>
				<a class="btn btn-info btn-lg" href="javascript:history.go(-1)" role="button">�ڷΰ���</a> 
				<a class="btn btn-info btn-lg" href="#" role="button">�� �� ��</a> 
				<a class="btn btn-info btn-lg" href="#" role="button">ȸ������</a> 
			</div>
		</body>
		</html>