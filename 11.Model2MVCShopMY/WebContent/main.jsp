<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--   jQuery , Bootstrap CDN  -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	<script type="text/javascript">
	
	(function(){
    var num = 0;
    $(window).scroll(function(){
        // ���ǽĿ��� == ���� >= �� ��� �� ����
        // == ��ũ�� ���̰� ������ ���ؼ� ������ ������ �Դٶ�� �����ϴ°ǵ� >= �� ��ũ�ѳ��̰� ������ ������ �� Ŀ��(�� ������ �������־) ������ ���Ŵ� 
        // ���������� Ư���� �ٸ��� ������ ���ٺ��ٴ� ũ�ų� �������� ����
        if($(window).scrollTop() >= $(document).height() - $(window).height()){ // ��ũ���� ������ ���� �ν��Ѵ�.
            var $clone = $('.span3').eq(num).first().clone()
            num++
            $('.row-fluid').append($clone)
            //console.log(num);
        }
    })
})

();

</script>
	<!--  CSS �߰� : ���ٿ� ȭ�� ������ ���� �ذ� :  �ּ�ó�� ��, �� Ȯ��-->
	<style>
        body {
            padding-top : 100px;
        }
        .item {
        	height: 250px;
        }
        .item img {
        	display: block;
        	margin: 0 auto;
        	height: 100%;
        }
        * {
        margin:0; padding:0; list-style: none;
        }
        .thumbnail.circle{
      border-radius: 15%;
    
    }
    .caption{
    text-align:center;
    }
 
        

   	</style>
   	
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	 	
	
</head>
	
<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->

	<!--  �Ʒ��� ������ http://getbootstrap.com/getting-started/  ���� -->	
   	<div class="container ">
      <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="jumbotron">

        <h2>�������� ������</h2>

<div class="page-header">
      </div>
      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
          <li data-target="#carousel-example-generic" data-slide-to="3"></li>
          <li data-target="#carousel-example-generic" data-slide-to="4"></li>
          <li data-target="#carousel-example-generic" data-slide-to="4"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <div class="item active">
            <img src="/images/uploadFiles/cow.jpg" alt="First slide">
          </div>
          <div class="item">
            <img src="/images/uploadFiles/pig.gif" alt="Second slide">
          </div>
          <div class="item">
            <img src="/images/uploadFiles/sheep.jpg" alt="Third slide">
          </div>
          <div class="item">
            <img src="/images/uploadFiles/sheep2.jpg" alt="5">
          </div>
          <div class="item">
            <img src="/images/uploadFiles/11112221_400.gif" alt="5">
          </div>
          <div class="item">
            <img src="/images/uploadFiles/123.gif" alt="5">
          </div>
        </div>
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>     
      </div>
    </div>

	<!-- ���� : http://getbootstrap.com/css/   : container part..... -->
	
	 <div class=row>
	  <div class="col-sm-6 col-md-4">
	   <div class="thumbnail circle">
	    <img src="/images/uploadFiles/cow.jpg" style="max-width:300px;" data-src=holder.js/100%x200>
	     <div class=caption>
	      <h3>���ִ� �Ұ��</h3>
	       <p>���̵��� �����ؿ�</p>
	        <p><a href=# class="btn btn-warning" role=button>�Ұ�� ��������</a></p>
	    </div>
	   </div>
	  </div>
	  <div class="col-sm-6 col-md-4">
	   <div class="thumbnail circle">
	     <img src="/images/uploadFiles/pig.gif" style="max-width:345px;" data-src=holder.js/100%x200>
	       <div class=caption>
	        <h3>���ִ� �������</h3>
				<p>���̵��� �����ؿ�</p>
	            <p><a href=# class="btn btn-warning" role=button>������� ��������</a></p>
	       </div>
	   </div>
	   </div>
	     <div class="col-sm-6 col-md-4">
	      <div class="thumbnail circle">
	        <img src="/images/uploadFiles/sheep2.jpg" style="max-width:300px;" data-src=holder.js/100%x200>
	        <div class=caption>
	         <h3>���ִ� ����</h3>
				<p>���̵��� �����ؿ�</p>
	         <p><a href=# class="btn btn-warning" role=button>���� ��������</a></p>
	        </div>
	       </div>
	      </div>
	     </div>
	                                   

	  <span class="carousel-inner">
        
    <span class="item active">
        <span class="row-fluid">
    <span class="span3"><a href="#" class="thumbnail"><img src="/images/uploadFiles/cow.jpg" alt="Image" style="max-width:250px;"><h2>�Ұ��</h2></a></span>
    <span class="span3"><a href="#" class="thumbnail"><img src="/images/uploadFiles/pig.gif" alt="Image" style="max-width:250px;"><h2>�������</h2></a></span>
    <span class="span3"><a href="#" class="thumbnail"><img src="/images/uploadFiles/sheep2.jpg" alt="Image" style="max-width:250px;"><h2>����</h2></a></span>
    
        </span><!--/row-fluid-->
        
        
    </span><!--/item-->
</span>
</body>

</html>