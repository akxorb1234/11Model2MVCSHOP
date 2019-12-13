<%@ page contentType="text/html;charset=EUC-KR" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
	<head>
		<title>�������� ����</title>
		
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		
		<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
		<!-- ///////////////////////// Bootstrap, jQuery CDN ///////////////////////// -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
		
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
	<style>
	
	body{
	padding : 50px;
	}
	
	</style>

<script type="text/javascript">
			function fncUpdatePurchase() {
				
				$("form").attr("method", "post").attr("action", "/purchase/updatePurchase?tranNo=${purchase.tranNo}").submit();
			}
			$( function(){

				$("button.btn.btn-primary").on("click", function(){
					// Debug..
					// alert($("td.ct_btn01:contains('����')").html());
					fncUpdatePurchase();
				});
				 
				$("td.ct_btn01:contains('���')").on("click", function(){
					// Debug..
					// alert($("td.ct_btn01:contains('���')").html());
					history.go(-1);
				});
				
				
			});
			
			$( function(){
				$("input[name='divyDate']").datepicker({
				    dateFormat:'yy-mm-dd'
				});
			});
		</script>
	</head>
	
	<body>

	<!-- ToolBar Start ////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
	<!-- ToolBar End /////////////////////////////////////-->

	<!-- ȭ�鱸�� div Start -->
	<div class="container">
	
		<div class="page-header text-center">
			<h3 class="text-info">������������</h3>
			<h5 class="text-muted"><strong class="text-danger">�����</strong>���� ��ǰ���� ������ �����մϴ�</h5>
		</div>
	
		<!-- form Start -->
		<form class="form-horizontal" method="post" name="detailForm">
		<input type="hidden" name="prodNo" value="${product.prodNo }"/>
		<input type="hidden" name="menu" value="${param.menu }"/>
		
			<div class="form-group">
				<label for="buyerId" class="col-sm-offset-1 col-sm-3 control-label">�����ھ��̵�</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="buyerId" name="buyerId" value="${user.userId }" readonly>
				</div>
			</div>
			
			<div class="form-group">
				<label for="paymentOption" class="col-sm-offset-1 col-sm-3 control-label">���Ź��</label>
				<div class="col-sm-4">
					<select 	name="paymentOption" 	class="ct_input_g" style="width: 100px; height: 30px" maxLength="20">
						<option value="1" ${ ! empty purchase.paymentOption && purchase.paymentOption == "1" ? "selected" : ""  } >���ݱ���</option>
						<option value="2" ${ ! empty purchase.paymentOption && purchase.paymentOption == "2" ? "selected" : ""  } >�ſ뱸��</option>
					</select>
					<span id="helpBlock" class="help-block">
						<strong class="text-danger">�������ּ���</strong>
					</span>
				</div>
			</div>
			
			<div class="form-group">
				<label for="receiverName" class="col-sm-offset-1 col-sm-3 control-label">�������̸�</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="receiverName" name="receiverName" value="${purchase.receiverName }">
				</div>
			</div>
			
			<div class="form-group">
				<label for="receiverPhone" class="col-sm-offset-1 col-sm-3 control-label">�����ڿ���ó</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="receiverPhone" name="receiverPhone" value="${purchase.receiverPhone }">
				</div>
			</div>
			
			<div class="form-group">
				<label for="divyAddr" class="col-sm-offset-1 col-sm-3 control-label">�������ּ�</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="divyAddr" name="divyAddr" value="${purchase.divyAddr }">
				</div>
			</div>
			
			<div class="form-group">
				<label for="divyRequest" class="col-sm-offset-1 col-sm-3 control-label">���ſ�û����</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="divyRequest" name="divyRequest" value="${purchase.divyRequest }">
				</div>
			</div>
			
			<div class="form-group">
					<label for="divyDate" class="col-sm-offset-1 col-sm-3 control-label">��������¥</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="divyDate" name="divyDate">
					</div>
				</div>
			
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-4 text-center">
					<button type="button" class="btn btn-primary">����</button>
					<a class="btn btn-primary btn" href="#" role="button">���</a>
				</div>
			</div>
		
		</form>
	
	
	</div>
	<!-- ȭ�鱸�� div End -->

</body>
</html>