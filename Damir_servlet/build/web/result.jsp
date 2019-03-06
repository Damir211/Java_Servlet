<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="kz.damir211.jsp.ResultFile" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<title>Решение квадратного уравнения</title>
<link href="newcss.css" rel="stylesheet">
</head>
<body>
    <div class="action2">
	Решение уравнения:<br/>
	<%
	ResultFile form = (ResultFile)request.getAttribute("form");

	if (form==null) { out.print("Нет решения!<br/><br/>"); }
	else {
		out.println(String.format("Ответ = %.3f<br/>",form.getRES()));
	}
%>
   <br/> 
   <a href="MainFile" class="button">Назад</a>
    </div>
</html>