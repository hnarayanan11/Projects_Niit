<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Online Shopping</title>
<%@ include file="header.jsp" %>
</head>
<body>
<div class="container">
  <h2>Online Shopping</h2>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="resources/images_carousel/7.jpg" alt="Los Angeles" style="width:1000px;height:490px;margin: 0 auto;">
        <div class="carousel-caption">
          <h3>Online Shopping</h3>
          <p>add some cart and make some fun!</p>
        </div>
      </div>

      <div class="item">
        <img src="resources/images_carousel/2.jpeg" alt="Chicago" style="width:960px;height:450px;margin: 0 auto;">
        <div class="carousel-caption">
          <h3>Ladies Cloths!</h3>
        </div>
      </div>
    
      <div class="item">
        <img src="resources/images_carousel/4.jpg" alt="New York" style="width:960px;height:450px;margin: 0 auto;">
        <div class="carousel-caption">
          <h3>Gentes Cloths!</h3>
        </div>
      </div>
    
     <div class="item">
        <img src="resources/images_carousel/5.jpg" alt="New York" style="width:960px;height:450px;margin: 0 auto;">
        <div class="carousel-caption">
          <h3>Trendy Dress!</h3>
        </div>
      </div>
      
       <div class="item">
        <img src="resources/images_carousel/3.jpg" alt="New York" style="width:960px;height:450px;margin: 0 auto;">
        <div class="carousel-caption">
          <h3>Cart to purchase the products!</h3>
        </div>
      </div>  
  
    </div>
  </div>
</div>
<div>

${register}
</div>
</body>
</html>