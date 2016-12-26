package by.bsu.extask.to;
public class UserData extends ActionData{
public int id;
public String name;
public String surname;
public String status;
public UserData(int id, String name, String surname,String status){
this.id=id;
this.name = name;
this.surname = surname;
this.status = status;
}
}