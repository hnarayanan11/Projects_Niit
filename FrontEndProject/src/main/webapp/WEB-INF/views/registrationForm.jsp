<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Shopping</title>
<link rel="stylesheet"
	href="<c:url value='/resources/css/registration.css'></c:url>">
</head>
<body>
	<div class="container">
		<c:url value="/all/register" var="url"></c:url>
		<form:form modelAttribute="customer" action="${url }" id="form">

			<form:hidden path="id" />

			<form:label path="firstname">Enter Firstname</form:label>
			<form:input path="firstname" id="firstname" />


			<form:label path="lastname">Enter Lastname</form:label>
			<form:input path="lastname" id="lastname" />


			<form:label path="phonenumber">Enter Phonenumber</form:label>
			<form:input path="phonenumber" id="phonenumber" />

			<hr>
			<b>Login Credentials</b>
			<br>
			<form:label path="user.email">Enter Email</form:label>
			<form:input path="user.email" id="user.email" type="email" />

			<form:label path="user.password">Enter password</form:label>
			<form:input path="user.password" id="user.password" type="password" />

			<hr>
			<b>Billing Address</b>
			<br>

			<form:label path="billingaddress.apartmentnumber">Enter Apartmentnumber</form:label>
			<form:input path="billingaddress.apartmentnumber"
				id="billingaddress.apartmentnumber" />

			<form:label path="billingaddress.streetname">Enter streetname</form:label>
			<form:input path="billingaddress.streetname"
				id="billingaddress.streetname" />

			<form:label path="billingaddress.city">Enter city</form:label>
			<form:input path="billingaddress.city" id="billingaddress.city" />

			<form:label path="billingaddress.state">Enter state</form:label>
			<form:input path="billingaddress.state" id="billingaddress.state" />

			<form:label path="billingaddress.country">Enter country</form:label>
			<form:input path="billingaddress.country" id="billingaddress.country" />

			<form:label path="billingaddress.zipcode">Enter Zipcode</form:label>
			<form:input path="billingaddress.zipcode" id="billingaddress.zipcode" />
			<hr>
			<b>Shipping address</b>
			<br>

			<form:label path="shippingaddres.apartmentnumber">Enter Apartmentnumber</form:label>
			<form:input path="shippingaddres.apartmentnumber"
				id="shippingaddres.apartmentnumber" />

			<form:label path="shippingaddres.streetname">Enter streetname</form:label>
			<form:input path="shippingaddres.streetname" id="streetname" />

			<form:label path="shippingaddres.city">Enter city</form:label>
			<form:input path="shippingaddres.city" id="shippingaddres.city" />

			<form:label path="shippingaddres.state">Enter state</form:label>
			<form:input path="shippingaddres.state" id="shippingaddres.state" />

			<form:label path="shippingaddres.country">Enter country</form:label>
			<form:input path="shippingaddres.country"
				id="shippingaddres.country" />

			<form:label path="shippingaddres.zipcode">Enter zipcode</form:label>
			<form:input path="shippingaddres.zipcode"
				id="shippingaddres.zipcode" />
			<br>
			<input type="submit" value="Register">

		</form:form>
	</div>
</body>
</html>