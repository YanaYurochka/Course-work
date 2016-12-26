<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Психиатрия и наркология</title>
<style>
 .brd {
    background: #C0DCC0; /* Цвет фона */
    padding: 10px; /* Поля вокруг текста */
    margin-left: 200px;
    margin-right:200px;
    margin-top: 20px;
   }
</style>
</head>

<body bgcolor="#F8F8FF">
<p>Больной М., 46 лет, шофер, заболел остро: 14 декабря повысилась температура тела до 38,50 С, появились катаральные явления. Лечился амбулаторно без особого эффекта. 18 декабря появились неприятные ощущения за грудиной, чувство нехватки воздуха, которые нарастали. Доставлен в стационар в тяжелом состоянии. Кожные покровы синюшны, холодные на ощупь. В легких — укорочение перкуторного звука в заднебоковых отделах ниже угла лопатки, в этих областях дыхание ослаблено, влажные незвонкие мелкопузырчатые хрипы. ЧД — 22 в минуту. Пульс — 100 в минуту, аритмичный, слабого наполнения. АД — 90/60 мм рт. ст. Границы относительной тупости сердца: правая — на 2 см от края грудины, левая — на 3 см кнаружи от левой срединно-ключичной линии. Тоны сердца глухие, на верхушке — систолический шум. Язык обложен белым налетом. Живот при пальпации мягкий, безболезненный. Печень выступает на 3 см, плотноватая. </p>

<div class ="brd">
<form name = "save_test3" method="post" action="mmm">
<p><b>1) Поставьте диагноз.</b><Br>
<input type="text" name="One" value=""/><br/>
  </p>
 <p><b>2) Проведите дифференциальную диагностику. (1-2 пункта)</b><Br>
<input type="text" name="Two" value=""/><br/>
  </p>
  <p><b>3) Дообследования (1-2) </b><Br>
<input type="text" name="Three" value=""/><br/>
  </p>
  <p><b>4) Назначьте лечение(1-2 пункта)</b><Br>
<input type="text" name="Four" value=""/><br/>
  </p>
  <p><b>5) Интервал лечения  (В днях)</b><Br>
<input type="text" name="Five" value=""/><br/>
  </p>  
<input type="hidden" name="command" value="save_test3" />
 <%
int id = (Integer)request.getAttribute("id");
%>
<input type="hidden" name="id" value="<%= id %>" />
<input type="submit" value="Сдать тест"/>
</form>
</div>
</body>
</html>