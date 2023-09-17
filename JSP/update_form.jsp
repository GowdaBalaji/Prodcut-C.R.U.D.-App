 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@include file="./base.jsp" %>

</head>
<body>
<div class="container mt-5">
<div class="row">
<div class="cloum-md-6 offset-md-3">
<div class="card" style="background-color: silver; border: 2px black solid; border-radius: 10px; ">
<div class="card-body">

<h1 class="text-center mb-5">Update Product Detail</h1>
<form action="${pageContext.request.contextPath }/handel-product" method="post">

<input type="text" name="id" value="${product.id }">

<!--product name  -->
<div class="form-group">
<label for="name">Product Name</label>
<input id="name" type="text" name="name" placeholder="Enter the Product Name" class="form-control" value="${product.name }">
</div>


<!--product discription  -->
<div class="form-group">
<label for="description">Product Description</label>
<textarea id="description" type="text" name="description" placeholder="Enter the Product Description" class="form-control">${product.description }</textarea>
</div>

<div class="form-group mb-5">
<label for="price">Product Price</label>
<input id="price" type="text" name="price" placeholder="Enter the Product Price" class="form-control" value="${product.price }">
</div>

<div class="container text-center">
<a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
<button type="submit" class="btn btn-warning">Update</button>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
</body>
</html>
