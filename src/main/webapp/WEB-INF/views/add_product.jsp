<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container mt-5 bg-light">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3 mt-3 text-warning">Fill the Product Details</h1>
				<form action="handle-product" method="post">

					<div class="form-group">
						<label for="name">Product Name </label> <input type="text"
							class="form-control" id="name" name="name"
							placeholder="Enter Your Product Name">
					</div>

					<div class="form-group">
						<label for="Description"> Product Description </label>
						<textarea class="form-control" name="description" id="description"
							rows="5" placeholder="Enter the Product Description"></textarea>
					</div>

					<div class="form-group">
						<label for="price">Product Price </label> <input type="text"
							class="form-control" id="price" name="price"
							placeholder="Enter Your Product Price">
					</div>

					<div class="container text-center mb-4">
						<a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger"> Back </a>
						<button type="submit" class="btn btn-primary">Add Product</button>
					</div>

				</form>
			</div>
		</div>
	</div>

</body>
</html>