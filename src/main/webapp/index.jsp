<%@page import="model.Login_Register"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Phong cho thuê trọ :))</title>
<link rel="stylesheet" type="text/css" href="TrangChu.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<%
String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
		+ request.getContextPath();
%>
<link href="<%=url%>/css/index.css" rel="stylesheet">
</head>
<body>
<!-- Header -->
  <header class="header">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <!-- Logo -->
        <div class="col-1">
          <a class="navbar-brand" href="#">
            <img src="img/logo.png" alt="" height="50" class="d-inline-block align-text-top">
          </a>
        </div>

        <!-- Search Form -->
        <div class="col-9">
          <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" style="width: 90%;">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>
        </div>

		<div class="col-2">
 		<%
 			Object obj = session.getAttribute("login");
 			Login_Register lg = null;
 			if(obj != null){
 				lg = (Login_Register)obj;
 			}
 			if(lg == null){
 		%>	
 			<a href="register.jsp" class="register" id="register">Đăng ký</a>
 		    <a href="login.jsp" class="login" id="login">Đăng nhập</a>
 		<% } else { %>
 			<div>Xin chào admin:<div><b><%=lg.getUser()%></b></div></div>
 			<a style="white-space: nowrap;" href="logout" class="logout" id="logout">Đăng xuất</a>
 		<% 
 			}
 		%>
      </div>
    </nav>
  </header>
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <div class="navbar-nav">
          <a class="nav-link" href="#">Trang chủ</a>
          <a class="nav-link" href="#">Phòng trọ cho thuê</a>
          <a class="nav-link" href="#">Tìm người ở ghép</a>
          <a class="nav-link" href="#">Tin tức</a>
          <a class="nav-link" href="#">Bảng giá</a>
        </div>
      </div>
    </div>
  </nav>

</body>
</html>