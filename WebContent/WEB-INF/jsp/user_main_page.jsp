<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ page import="by.bsu.extask.to.UserData" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Пользователь</title>
<style>
 .brd {
    background: #F8F8FF; /* Цвет фона */
    padding: 10px; /* Поля вокруг текста */
    margin-top: 40px;
    margin-bottom: 40px;
   }
   .out
   {
    background: #C0DCC0; /* Цвет фона */
    padding: 30px; /* Поля вокруг текста */
    margin-top: 10px;
    margin-bottom: 10px;
   }
</style>
</head>
<body bgcolor="#F8F8FF">
<div class ="brd">
<div class ="out">
	
	<form name="log-out" method="post" action="mmm">
	<input type="hidden" name="command"  value="logout" />
	<input type="submit" style="float:right;" value="Выход"/>
	</form>
	
	<form name="received" method="post" action="mmm">
	<input type="hidden" name="command" value="received" />
	<input type="submit" style="float:right;" value="Результаты"/>
	
	</form>
	<%
	UserData data = (UserData)request.getAttribute("userData");
	%>
	<font color="000000"> Здравствуйте студент, <%= data.name %>  <%= data.surname %> ! Вы вошли как пользователь. </font>
	
	</div>

 <form name="Ok" method="post" action="mmm">
 
	<div style="margin-top:30px; ">
		<select name="sell" >
		  <option value="1">Психиатрия и наркология</option>
		  <option value="2">Хирургия</option>
		  
		 </select> 

		<input type="hidden" name="id" value="<%= data.id %>" />
		<input type="hidden" name="command" value="select" />
		<input type="submit" value="Выбрать"/>
		</form>
	</div>
</div>
</body>
</html>