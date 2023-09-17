
<html>
<body>
<head>
<%@include file="./base.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>



<div class="container mt-3">
<div class="row">
<div class="col-md-12">
<div class="card">
<div class="card-body">
<h1 class="text-center mb-5">Welcome to Product App</h1>



<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">S.No</th>
      <th scope="col">Product Name</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${products }" var="p">
    <tr>
      <th scope="row">TECHONLY${p.id }</th>
      <td>${p.name }</td>
      <td>${p.description }</td>
      <td class="font-weight-bold">&#8377;${p.price }</td>
      <td>
      <a href="delete/${p.id }" ><i class="fa-solid fa-trash text-danger" style="font-size: 20px;"></i></a>
      <a href="update/${p.id }" ><i class="fa-solid fa-pen-to-square text-primary" style="font-size: 20px;"></i></a>
      </td>
    </tr>
  </c:forEach>


  </tbody>
</table>

<div class="container text-center" >
<a href="add-product" class="btn btn-outline-success mt-3">Add Product</a>
</div>
</div>
</div>

</div></div></div>
