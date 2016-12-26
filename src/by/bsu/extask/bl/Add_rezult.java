package by.bsu.extask.bl;

import by.bsu.extask.controller.InDataWrapper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Add_rezult implements Command {
	private static String Rezult = "rez";
	private static String Clickbutton = "clickbutton0";
	

	@Override public String execute(InDataWrapper inData) throws DataException{
		int rez;
		String but;

			but = inData.getRequestParametr("clickbutton").toString();
			
			int id_st = Integer.parseInt(but.substring(6,7));
			int id_sub = Integer.parseInt(but.substring(7,8));

		rez = Integer.parseInt(inData.getRequestParametr(Rezult).toString()); 
		
		Connection con = null;
		Statement st = null;
		
		try {
			Class.forName("org.gjt.mm.mysql.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://127.0.0.1/exams", "root", "131917");
			//System.out.println(id_sub);
			st = con.createStatement();
			st.execute("update students set rezult ="+rez+" where id_student = "+id_st+" and id_subject = "+id_sub+";");
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
				if (st != null)
					st.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	
		String page;
		page = "/WEB-INF/jsp/rezult.jsp"; return page; 
	}
}
