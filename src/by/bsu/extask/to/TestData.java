package by.bsu.extask.to;
public class TestData extends ActionData{
public int id_teacher;
public String name;
public String surname;
public int id_student;
public int id_subject;
public String one, two, three, four, five;
public int rezult;
public TestData(int id_teacher,int id_student, int id_subject, String name, String surname,String one,String two,String three,String four,String five, int rezult){
this.id_teacher=id_teacher;
this.id_student=id_student;
this.id_subject=id_subject;
this.name = name;
this.surname = surname;
this.one=one;
this.two=two;
this.three=three;
this.four=four;
this.rezult=rezult;
this.five=five;
}
}