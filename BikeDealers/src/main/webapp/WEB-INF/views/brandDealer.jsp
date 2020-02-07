<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bike Data Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
<style>
body {
	background-image:
		url('https://i.ytimg.com/vi/6G9_x9nkqg8/maxresdefault.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
	background-size: 100% 100%;
}
</style>
<style>
.container {
	max-width: 800px;
	padding: 50px 70px;
	background-color: beige;
	border-radius: 10px;
	opacity: 0.9;
}
</style>
<style>
</style>
</head>
<body>
	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4">
			<marquee width="60%" direction="right" height="100px">
				<h2>Assigning Brand</h2>
			</marquee>
			<div class="container">
				<form action="/assignBrandToDealer" method="post"
					onsubmit="return validate()" id="form">
					<div class="form-group">
						<label>Select Brand :</label> <select name="brandId">
							<c:forEach var="customer" items="${Brands}">
								<option value="${customer.brandId}">${customer.brandName}</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label>Select Dealer :</label> <select name="dealerId">
							<c:forEach var="customer" items="${Dealers}">
								<option value="${customer.dealerId}">${customer.dealerName}</option>
							</c:forEach>
						</select>
					</div>
		
					<button type="submit" class="btn-success create button">Assign</button>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/">Back</a><br>

				</form>
			</div>
		</div>
		<div class="col-md-4"></div>
	</div>
	</body>
	</html>