<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><%@ include file="header.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Shopping</title>
</head>
<body>

<h3>Image:<img src="<c:url value='/resources/images/${prodlist.id}.png'></c:url>" style="height:150px ; width:150px"/></h3> 
<h3>Name:${prodlist.productname}</h3>
<h3>Description:${prodlist.description}</h3>
<h3>Quantity:${prodlist.quantity}</h3>
<h3>Price:${prodlist.price}</h3>

</body>
</html>