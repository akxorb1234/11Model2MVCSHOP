<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR" %>

<!DOCTYPE html>

<html lang="ko">
	<head>
		<meta charset="EUC-KR">
		
		<!-- 참조 : http://getbootstrap.com/css/ 참조 -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		
		<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
		<!-- ///////////////////////// Bootstrap, jQuery CDN ///////////////////////// -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
		
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
		<!-- ///////////////////////// CSS ///////////////////////// -->
		<style>
			body {
				
			}
		</style>
		
		<!-- ///////////////////////// JavaScript ///////////////////////// -->
		<script type="text/javascript">
			//============= "등록" Event 연결 =============
			$( function(){
				$("button.btn.btn-primary").on("click", function(){
					fncAddProduct();
				});
			});
			
			//============= "취소" Event 처리 및  연결 =============
			$( function(){
				$("a[href='#']").on("click", function(){
					$("form")[0].reset();
				});
			});
		
			function fncAddProduct() {
				// Form 유효성 검증
				var name = $("input[name='prodName']").val();
				var detail = $("input[name='prodDetail']").val();
				var manuDate = $("input[name='manuDate']").val();
				var price = $("input[name='price']").val();
				
				if(name == null || name.length < 1) {
					alert("상품명은 반드시 입력하여야 합니다.");
					return;
				}
				if(detail == null || detail.length < 1) {
					alert("상품상세정보는 반드시 입력하여야 합니다.");
					return;
				}
				if(manuDate == null || manuDate.length < 1) {
					alert("제조일자는 반드시 입력하셔야 합니다.");
					return;
				}
				if(price == null || price.length < 1) {
					alert("가격은 반드시 입력하셔야 합니다.");
					return;
				}
			
				$("form").attr("method", "POST").attr("action", "/product/addProduct").submit();
			}
			
			//============= "Calendar" Event 처리 및  연결 =============
			$( function(){
				$("input[name='manuDate']").datepicker({
				    dateFormat:'yy-mm-dd'
				});
			});
		</script>
	</head>
	
	<body bgcolor="#ffffff" text="#000000">
		<!-- ToolBar Start ///////////////////////////////////// -->
		<div class="navbar navbar-default">
			<div class="container">
				<a class="navbar-brand" href="/index.jsp">마탱이 정육점#</a>
			</div>
		</div>
		<!-- ToolBar End ///////////////////////////////////// -->
	
		<!-- 화면구성 div Start ///////////////////////////////////// -->
		<div class="container">
			<h1 class="bg-primary text-center">상품등록</h1>
			
			<!-- form Start ///////////////////////////////////// -->
			<form class="form-horizontal">
				<div class="form-group">
					<label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">상 품 명</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="prodName" name="prodName">
					</div>
				</div>
				<div class="form-group">
					<label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">상품상세정보</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="prodDetail" name="prodDetail">
					</div>
				</div>
				<div class="form-group">
					<label for="manuDate" class="col-sm-offset-1 col-sm-3 control-label">제조일자</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="manuDate" name="manuDate">
					</div>
				</div>
				<div class="form-group">
					<label for="price" class="col-sm-offset-1 col-sm-3 control-label">가격</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="price" name="price" style="width:80%; float:left;">
						<span style="float:left; padding:7px 0 0 15px;">원</span>
					</div>
				</div>
				<div class="form-group">
					<label for="file" class="col-sm-offset-1 col-sm-3 control-label">상품이미지</label>
					<div class="col-sm-4">
						<input type="file" class="form-control" id="fileName" name="fileName">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-4 text-center">
						<button type="button" class="btn btn-primary">등&nbsp;록</button>
						<a class="btn btn-primary btn" href="#" role="button">취&nbsp;소</a>
					</div>
				</div>
			</form>
			<!-- form End ///////////////////////////////////// -->
		</div>
		<!-- 화면구성 div End ///////////////////////////////////// -->			
	</body>
</html>