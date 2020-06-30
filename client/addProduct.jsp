<%@ page contentType="text/html; charset=utf-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" href="./css/bootstrap.min.css"> 
	<script type="text/javascript" src="./js/validation.js"></script>
	<title>Insert </title>
</head>
<body>
	<nav class ="navbar navbar-expand navbar-dark bg-dark">
		<div class = "container">
			<div class="navbar-header">
				<a class = "navbar-brand" href="./welcome.jsp">Home</a>
			</div>
		</div>
	</nav>
	
	<div class="jumbotron"> 
		<div class="container"> 
		
		<h1 class="display-3">상품 등록</h1>
		</div>
	</div> 
	
	<div class="container"> 
	<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data"> 
<div class = "form-group row">
    			<label class= "col-sm-2">매물명</label>
    			<div class = "col-sm-3">
    				<input type = "text" id = "aptname" name = "aptname" class = "form-control">
    			</div>
    		</div>
    		<div class = "form-group row">
    			<label class= "col-sm-2">매매가</label>
    			<div class = "col-sm-3">
    				<input type = "text" id = "price" name = "price" class = "form-control">
    			</div>
    		</div>
    		<div class = "form-group row">
    			<label class= "col-sm-2">크기</label>
    			<div class = "col-sm-3">
    				<input type = "text" id = "size" name = "size" class = "form-control">
    			</div>
    		</div>
    		<div class = "form-group row">
    			<label class= "col-sm-2">주소</label>
    			<div class = "col-sm-5">
    				<textarea name = "address" cols = "25" rows = "2" class = "form-control"></textarea>
    				
    			</div>
    		</div>
    		<div class = "form-group row">
    			<label class= "col-sm-2">동</label>
    			<div class = "col-sm-3">
    				<input type = "text" id = "houseDong" name = "houseDong" class = "form-control">
    			</div>
    		</div>
    		<div class = "form-group row">
    			<label class= "col-sm-2">층</label>
    			<div class = "col-sm-3">
    				<input type = "text" id = "houseStair" name = "houseStair" class = "form-control">
    			</div>
    		</div>
    		<div class = "form-group row">
    			<label class= "col-sm-2">방향</label>
    			<div class = "col-sm-3">
    				<input type = "text" id = "direction" name = "direction" class = "form-control">
    			</div>
    		</div>
    		<div class = "form-group row">
    			<label class= "col-sm-2">입주가능일자</label>
    			<div class = "col-sm-3">
    				<input type = "text" id = "possibleDate" name = "possibleDate" class = "form-control">
    			</div>
    		</div>
    		<div class = "form-group row">
    			<label class= "col-sm-2">등록번호</label>
    			<div class = "col-sm-3">
    				<input type = "text" id = "regiNum" name = "regiNum" class = "form-control">
    			</div>
    		</div>
    		<div class = "form-group row">
    			<label class= "col-sm-2">판매자번호</label>
    			<div class = "col-sm-3">
    				<input type = "text" id = "sellernum" name = "sellernum" class = "form-control">
    			</div>
    		</div>
    		<div class = "form-group row">
    			<label class= "col-sm-2">이미지</label>
    			<div class = "col-sm-5">
    				<input type = "file" name = "houseimage" class = "form-control">
    			</div>
    		</div>
    		<div class = "form-group row">
    			<div class= "col-sm-offset-2 col-sm-10 ">
    				<input type = "submit" class = "btn btn-primary" value = "등록">
				</div>
    			
    		</div>
	</form>
	 </div> 
</body>
</html>


  
 

