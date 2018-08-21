<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><%@ include file="header.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Shopping</title>
</head>
<body>
<table border="1" align="center"><tr><th>Category_Id</th><th>Category_Name</th><th>Modification</th></tr>
<c:forEach items="${catList}" var="cat">
<tr><td>${cat.getCid()}</td><td>${cat.getCategoryname()}</td>
<td>
<c:url value="/all/getCategory/${cat.cid}" var="urlDis"/>
<c:url value="/admin/delCategory/${cat.cid}" var="urlDel"/>
<c:url value="/admin/updateCategory/${cat.cid}" var="urlUpdate"/>
<a href="${urlDis}">Display</a> | <a href="${urlDel}">Delete</a> | <a href="${urlUpdate}">Update</a>
</td>
</tr>
</c:forEach></table>
</body>
</html>