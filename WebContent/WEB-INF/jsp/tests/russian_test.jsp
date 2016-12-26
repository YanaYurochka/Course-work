<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Хирургия</title>
<style>
 .brd {
    background: #C0DCC0; /* Цвет фона */
    padding: 10px; /* Поля вокруг текста */
    margin-left: 100px;
    margin-right: 100px;
   }
</style>
</head>

<body bgcolor="#F8F8FF">
<div class ="brd">
<p>Женщина 69 лет упала, поскользнувшись на улице города на левой бок. Почувствовала резкую боль в области левого тазобедренного сустава, самостоятельно подняться не смогла. Прохожими вызвана бригада скорой медицинской помощи, которая приехала через 15 минут, выполнила обезболивание (в/м инъекция анальгина 50% — 2,0 и димедрола 1 % — 1,0), наложила три лестничные шины до верхней трети левого бедра и доставила пострадавшую в приемное отделение больницы скорой медицинской помощи через 30 минут после травмы. Вы врач приемного отделения.</p>
<form name = "save_test2" method="post" action="mmm">
<p><b>1) Предварительный диагноз.</b><Br>
<input type="text" name="One" value=""/><br/>
  </p>
  <p><b>2)Процедуры (1-2 процедуры) </b><Br>
<input type="text" name="Two" value=""/><br/>
  </p>
  <p><b>3) Оценить, верно ли выполнен догоспитальный этап </b><Br>
<input type="text" name="Three" value=""/><br/>
  </p>
  <p><b>4) Оценить необходимость операционного вмешательства</b><Br>
<input type="text" name="Four" value=""/><br/>
  </p>
  <p><b>5) Примерный срок личения в ГКБ</b><Br>
<input type="text" name="Five" value=""/><br/>
  </p>
<input type="hidden" name="command" value="save_test2" />
<%
int id = (Integer)request.getAttribute("id");
%>
<input type="hidden" name="id" value="<%= id %>" />
<input type="submit" value="Сдать тест"/> 
</form>
</div>
</body>
</html>