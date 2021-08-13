<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
  		<tiles:insertAttribute name="meta"/>
		<tiles:insertAttribute name="styles"/>
		<tiles:insertAttribute name="scripts"/>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
<div id="header">
	<tiles:insertAttribute name="header"/>
</div>
<div id="wrapper">
	<tiles:insertAttribute name="sidebar"/>
	<div id="layoutSidenav_content" class="container" style="margin-left:12%">
		<tiles:insertAttribute name="content"/>
	</div>
</div>


<div id="footer" style="margin-left:11%">	
	<tiles:insertAttribute name="footer"/>	
</div>
    	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
</body>
</html>