package by.bsu.extask.bl;

import by.bsu.extask.controller.InDataWrapper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class SaveTest3 implements Command  {
	private static String OneParam = "One";
	private static String TwoParam = "Two";
	private static String ThreeParam = "Three";
	private static String FourParam = "Four";
	private static String FiveParam = "Five";

	@Override public String execute(InDataWrapper inData) throws DataException{
		String one;
		String two;
		String three;
		String four;
		String five;
		int id_st;
		one = inData.getRequestParametr(OneParam).toString(); 
		two = inData.getRequestParametr(TwoParam).toString();
		three = inData.getRequestParametr(ThreeParam).toString();
		four = inData.getRequestParametr(FourParam).toString();
		five = inData.getRequestParametr(FiveParam).toString();
		id_st = Integer.parseInt(inData.getRequestParametr("id").toString()); 
		int id = 3;
		
		Connection con = null;
		Statement st = null;
		
		try {
			Class.forName("org.gjt.mm.mysql.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://127.0.0.1/exams", "root", "131917");
			
			st = con.createStatement();
			st.execute("insert into students(`id_student`,`id_subject`,`1`,`2`,`3`,`4`,`5`) values ("+id_st+","+id+",'"+one+"','"+two+"','"+three+"','"+four+"','"+five+"')");
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
		page = "/WEB-INF/jsp/tests/test_result.jsp"; return page; 
	}
}
