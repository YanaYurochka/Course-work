package by.bsu.extask.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import by.bsu.extask.to.TestData;
import by.bsu.extask.to.UserList;
public class UserDAO {
public static UserList userList(int id_teacher) throws DAOException{
Connection con = null;
Statement st = null;
ResultSet rs = null;
UserList userList = null;
try {
Class.forName("org.gjt.mm.mysql.Driver");
con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/exams", "root", "131917");
st = con.createStatement();
rs = st.executeQuery("SELECT * from teachers join students on teachers.id_subjects = students.id_subject  join users on users.id_users = students.id_student where teachers.id_teacher = "+id_teacher);
List<TestData> users = new ArrayList<TestData>();
TestData data = null;
while (rs.next()){
data = new TestData(id_teacher, rs.getInt("id_student"),rs.getInt("id_subject"), rs.getString("name"), rs.getString("surname"), rs.getString("1"), rs.getString("2"), rs.getString("3"), rs.getString("4"), rs.getString("5"), rs.getInt("rezult"));
	users.add(data);
}
userList = new UserList(users);
} catch (ClassNotFoundException e) {
System.out.println("55");
throw new DAOException("Ошибка загрузки драйвера.");
} catch (SQLException e) {
System.out.println("66");
throw new DAOException("Ошибка работы с источником данных.");
} finally {
try {
if (rs != null) rs.close();
if (st != null) st.close();
if (con != null) con.close();
} catch (SQLException e) {
e.printStackTrace();
}
}
return userList;
}
}