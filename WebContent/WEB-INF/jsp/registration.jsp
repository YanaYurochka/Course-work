<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Регистрация</title>
<style>
 .brd {
    background: #C0DCC0; 
    padding: 10px; 
    margin: 0 auto;
    margin-top: 130px;
    width:180px;
   }
</style>
</head>
<body bgcolor="#F8F8FF">
<div class ="brd">
<form name="add_user" method="post" action="mmm">
<input type="hidden" name="command" value="add_user" />
Имя:<br/>
<input type="text" name="Name" value=""/><br/>
Фамилия:<br/>
<input type="text" name="Surname" value=""/><br/>
Логин:<br/>
<input type="text" name="Login" value=""/><br/>
Пароль:<br/>
<input type="password" name="Password" value=""/><br/>
<input type="submit" style="margin-top:10px; width: 155px;" value="Регистрация"/>
</form>
</div>
</body>
</html>