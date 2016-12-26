package by.bsu.extask.to;
public class ReceiveData extends ActionData{
public String name;
public String surname;
public int id_student;
public int rezult;
public ReceiveData(int id_student, String name, String surname, int rezult){
this.id_student=id_student;
this.name = name;
this.surname = surname;
this.rezult=rezult;
}
}