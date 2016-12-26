package by.bsu.extask.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import by.bsu.extask.to.ReceiveData;
import by.bsu.extask.to.ReceiveList;

public class ReceiveDAO {
public static ReceiveList userList() throws DAOException{
Connection con = null;
Statement st = null;
ResultSet rs = null;
ReceiveList userList = null;
try {
Class.forName("org.gjt.mm.mysql.Driver");
con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/exams", "root", "131917");
st = con.createStatement();
rs = st.executeQuery("SELECT * FROM exams.students join users on users.id_users=students.id_student group by id_student having (count(id_student)=1 and avg(rezult)>6);");
List<ReceiveData> users = new ArrayList<ReceiveData>();
ReceiveData data = null;
while (rs.next()){
data = new ReceiveData(rs.getInt("id_student"),rs.getString("name"), rs.getString("surname"), rs.getInt("rezult"));
	users.add(data);
}
userList = new ReceiveList(users);
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