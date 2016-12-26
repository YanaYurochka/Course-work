package by.bsu.extask.bl;

import by.bsu.extask.controller.InDataWrapper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Add_user implements Command  {
	private static String nameParam = "Name";
	private static String surnameParam = "Surname";
	private static String loginParam = "Login";
	private static String passwordParam = "Password";
	@Override public String execute(InDataWrapper inData) throws DataException{
		
		String login;
		String password;
		String name;
		String surname;
		String status = "user";
		login = inData.getRequestParametr(loginParam).toString(); 
		password = inData.getRequestParametr(passwordParam).toString();
		name = inData.getRequestParametr(nameParam).toString();
		surname = inData.getRequestParametr(surnameParam).toString();
		
		String page;
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		
		try {
			Class.forName("org.gjt.mm.mysql.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://127.0.0.1/exams", "root", "131917");
			st = con.createStatement();
			rs = st.executeQuery("SELECT login FROM users");
			while (rs.next() == true){
				String s = rs.getString("login");
				if(login.equals(s)==true) {page = "/WEB-INF/jsp/registration.jsp"; return page; }
			}
				st.execute("insert into users(`name`,`surname`,`login`,`password`,`status`) values ('"+name+"','"+surname+"','"+login+"','"+password+"','"+status+"')");			
			
		} 
		catch (ClassNotFoundException e) {
		System.out.println("55");
	    throw new DataException("Ошибка загрузки драйвера.");
		} catch (SQLException e) {
		System.out.println("66");
		throw new DataException("Ошибка работы с источником данных.");
		} 
finally {
			try {
				if (rs != null)
					rs.close();
				if (st != null)
					st.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	
		page = "/index.jsp"; return page; 
	}
}
