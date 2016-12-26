<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ page import="by.bsu.extask.to.UserData" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Администратор</title>
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
	<input type="hidden" name="command" value="logout" />
	<input type="submit" style="float:right;" value="Выход"/>
	</form>
	
	<%
	UserData data = (UserData)request.getAttribute("userData");
	%>
	<font color="000000"> Здравствуйте, <%= data.name %>  <%= data.surname %> ! Вы вошли как администратор.  </font>
	
</div>

<form name="show-users" method="post" action="mmm">
<input type="hidden" name="command" value="show_users" />
<input type="hidden" name="id" value="<%= data.id %>" />
<input type="submit" style="margin-top:10px;" value="Проверить тест"/>
</form>
</div>
</body>
</html>