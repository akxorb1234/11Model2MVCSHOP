<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR" %>

<!DOCTYPE html>

<html lang="ko">
	<head>
		<meta charset="EUC-KR">
		
		<!-- ���� : http://getbootstrap.com/css/ ���� -->
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
			//============= "���" Event ���� =============
			$( function(){
				$("button.btn.btn-primary").on("click", function(){
					fncAddProduct();
				});
			});
			
			//============= "���" Event ó�� ��  ���� =============
			$( function(){
				$("a[href='#']").on("click", function(){
					$("form")[0].reset();
				});
			});
		
			function fncAddProduct() {
				// Form ��ȿ�� ����
				var name = $("input[name='prodName']").val();
				var detail = $("input[name='prodDetail']").val();
				var manuDate = $("input[name='manuDate']").val();
				var price = $("input[name='price']").val();
				
				if(name == null || name.length < 1) {
					alert("��ǰ���� �ݵ�� �Է��Ͽ��� �մϴ�.");
					return;
				}
				if(detail == null || detail.length < 1) {
					alert("��ǰ�������� �ݵ�� �Է��Ͽ��� �մϴ�.");
					return;
				}
				if(manuDate == null || manuDate.length < 1) {
					alert("�������ڴ� �ݵ�� �Է��ϼž� �մϴ�.");
					return;
				}
				if(price == null || price.length < 1) {
					alert("������ �ݵ�� �Է��ϼž� �մϴ�.");
					return;
				}
			
				$("form").attr("method", "POST").attr("action", "/product/addProduct").submit();
			}
			
			//============= "Calendar" Event ó�� ��  ���� =============
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
				<a class="navbar-brand" href="/index.jsp">������ ������#</a>
			</div>
		</div>
		<!-- ToolBar End ///////////////////////////////////// -->
	
		<!-- ȭ�鱸�� div Start ///////////////////////////////////// -->
		<div class="container">
			<h1 class="bg-primary text-center">��ǰ���</h1>
			
			<!-- form Start ///////////////////////////////////// -->
			<form class="form-horizontal">
				<div class="form-group">
					<label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">�� ǰ ��</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="prodName" name="prodName">
					</div>
				</div>
				<div class="form-group">
					<label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">��ǰ������</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="prodDetail" name="prodDetail">
					</div>
				</div>
				<div class="form-group">
					<label for="manuDate" class="col-sm-offset-1 col-sm-3 control-label">��������</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="manuDate" name="manuDate">
					</div>
				</div>
				<div class="form-group">
					<label for="price" class="col-sm-offset-1 col-sm-3 control-label">����</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="price" name="price" style="width:80%; float:left;">
						<span style="float:left; padding:7px 0 0 15px;">��</span>
					</div>
				</div>
				<div class="form-group">
					<label for="file" class="col-sm-offset-1 col-sm-3 control-label">��ǰ�̹���</label>
					<div class="col-sm-4">
						<input type="file" class="form-control" id="fileName" name="fileName">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-4 text-center">
						<button type="button" class="btn btn-primary">��&nbsp;��</button>
						<a class="btn btn-primary btn" href="#" role="button">��&nbsp;��</a>
					</div>
				</div>
			</form>
			<!-- form End ///////////////////////////////////// -->
		</div>
		<!-- ȭ�鱸�� div End ///////////////////////////////////// -->			
	</body>
</html>