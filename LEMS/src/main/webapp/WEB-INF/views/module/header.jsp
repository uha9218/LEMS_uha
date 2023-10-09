<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
    
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><decorator:title/></title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
 
  <decorator:head />
</head>
<body class="dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed" style="height: auto;">

	<div class="wrapper">
	
	  <!-- Navbar -->
	  <nav class="main-header navbar navbar-expand navbar-dark">
	    <!-- Left navbar links -->
	    <ul class="navbar-nav">
	      <li class="nav-item">
	        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
	      </li>
	   	  <c:forEach items="${menuList }" var="menu">
		  <li class="nav-item d-none d-sm-inline-block">
		  	<a class="nav-link" href="javascript:subMenu_go('${menu.mcode }');goPage('<%=request.getContextPath() %>${menu.murl }','${menu.mcode }');">
		  	 <i class="${menu.micon}"></i>&nbsp;${menu.mname }
		  	</a>
		  </li>		
	   	  </c:forEach>
	    </ul>
	    <!-- Right navbar links -->
		<ul class="navbar-nav ml-auto">
		  <li class="nav-item">
	        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
	          <i class="fas fa-expand-arrows-alt"></i>
	        </a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" id="dark_mode" href="#" role="button">
	          <i class="fas fa-moon" id="darkmode_icon"></i>
	        </a>
	      </li>
		</ul>
	  </nav>
	  <!-- /.navbar -->
	
	  <!-- Main Sidebar Container -->
	  <aside class="main-sidebar sidebar-dark-primary elevation-4">
	    <!-- Sidebar -->
	    <div class="sidebar">
	    	<div class="user-panel mt-3 pt-3 pb-3 mb-3 d-flex description-block border-bottom border-top">
		        <div class="image">
		          <img src="<%=request.getContextPath() %>/resources/bootstrap/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
		        </div>
		        <div class="info">
		          <a href="#" class="d-block">Alexander Pierce</a>
		        </div>
	     	</div>
	     	<div class="description-block">
	     		<h4 class="title" style="text-align: left; margin:0 0 10px 10px;"></h4>
	     	</div>
	     <!-- Sidebar Menu -->
	      <nav class="mt-2">
	        <ul class="nav nav-pills nav-sidebar flex-column subMenuList" data-widget="treeview" role="menu" data-accordion="false">
	          <!-- Add icons to the links using the .nav-icon class
	               with font-awesome or any other icon font library -->
	        </ul>
	      </nav>
	      <!-- /.sidebar-menu -->
	    </div>
	    <!-- /.sidebar -->
	  </aside>
	    