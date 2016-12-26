<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Работа отправлена</title>
<style>
.ooo{
	background: #C0DCC0; /* Цвет фона */
    padding: 10px; /* Поля вокруг текста */
    margin-top: 120px;
    width: 600px;
}
</style>
</head>
<body bgcolor="#F8F8FF">
<center>
<div class="ooo">
<font color="000000">Работа выполнена. Ждите результатов.</font>
<form name="log-out" method="post" style="margin-top:10px;" action="mmm">
	<input type="hidden" name="command" value="logout" />
	<input type="submit" value="Выход"/>
	</form>
	</div>
</center>
</body>
</html>