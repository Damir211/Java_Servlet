<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<title>Решение уравнения</title>
<link href="newcss.css" rel="stylesheet">
<link rel="shortcut icon" href="icon.png" type="image/x-icon">
</head>
<body>
        <div class="action">
            <h1>Решение уравнения:</h1>
            <form action="MainFile" method="POST">
                    <img alt="img" src="urav.png">
                    <p>Введите A: <input type="text" name="a" /></p> <br/>
                    <p>Введите B: <input type="text" name="b"/></p> <br />
                    <p>Введите C: <input type="text" name="c"/></p><br /> 
                    <p>Введите X: <input type="text" name="x"/></p><br /> 
                    <div class="buttons">
                    <input type="submit" name="calcSubmit" value="Решить" class="button"/> 
                    <input type="reset" name="clearSubmit" value="Очистить" class="button" />
                    </div>
            </form>
        </div>
</body>
</html>