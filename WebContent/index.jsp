<%@ page language="java" contentType="text/html; charset=utf8"
pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Main</title>
  <style>
   .brd {
    border: 1 px; 
    background: #C0DCC0; 
    padding: 10px; 
    margin: 0 auto;]
    margin-top: 10px;
    width:200px;
   }
   .text {
    border: 1 px;  
    padding: 10px; 
    margin: 0 auto;
    margin-top: 2px;
    width:600px;
   }
   .b1{
    padding-left:33px;
    padding-right:33px;
   	margin-bottom: 5px;
	width: 200px;
	height:35px;
	
   }
   .b2{
	margin-bottom: 10px;
	width: 200px;
	height:20px
   }  
  </style>
</head>

<body bgcolor="F8F8FF">
<div class="text">
<h1>Реши задачи в «Электронной больнице» и получи бонус на зачете или экзамене</h1>
<p>Добро пожаловать в приложение «Электронная больница». Ресурс, предназначенный  для студентов Белорусского государственного медицинского университета. <br/> Если ты студент БГМУ, то здесь ты можешь пройти задачи по двум дисциплинам и бонус на зачете или экзамене. Для этого тебе необходимо получить средний балл не ниже 7. Проверяются задания разными преподавателями университета.<br/> Если ты успешно прошел порог в 7 баллов, то в табличке результатов ты найдешь себя и своих сокурсников, которые успешно прошли испытания. Или только своих сокурсников, но тогда не расстраивайся и продолжай учиться, ведь сессия еще впереди.</p>
<p>
Условия:<br/>
1.	Каждый тест можно пройти только один раз. После отправления ответов на задание преподавателю, тест становиться недоступен.<br/>
2.	Пользоваться конспектом и учебником разрешается.</p>
<H2>Удачи!</H2>
</div>

<div class ="brd">
<form name="login-form" method="post" action="mmm" >
<input type="hidden" name="command" value="login" />
Логин:<br/>
<input type="text" name="login" style="	width: 200px; height:20px" value=""/><br/>
Пароль:<br/>
<input type="password" name="password" class="b2" value=""><br/>
<input type="submit" class = "b1" value="Вход"/>
</form>
<form name="Reg" method="post" action="mmm">
<input type="submit" name="command" style="width: 200px;" value="Регистрация" />
</form>
</div>
</body>
</html>