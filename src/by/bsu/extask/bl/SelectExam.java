package by.bsu.extask.bl;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import by.bsu.extask.controller.InDataWrapper;

public class SelectExam implements Command {
	private static String sellParam = "sell";
	@Override public String execute(InDataWrapper inData) throws DataException{
	int sell;
	int id;
	sell = Integer.parseInt(inData.getRequestParametr(sellParam).toString()); 
	id = Integer.parseInt(inData.getRequestParametr("id").toString()); 
	String page = null;
	inData.setRequestAttribute("id", id);
	
	Connection con = null;
	Statement st = null;
	ResultSet rs = null;
	
	try {
		Class.forName("org.gjt.mm.mysql.Driver");
		con = DriverManager.getConnection(
				"jdbc:mysql://127.0.0.1/exams", "root", "131917");
		st = con.createStatement();
		//System.out.println(sell+" "+id );
		//rs = st.executeQuery("SELECT rezult FROM students where id_student=id and id_subject=sell ");
		rs = st.executeQuery("SELECT * FROM students where id_student="+id+" and id_subject="+sell);
		//System.out.println("test");
		int k=0;
		while (rs.next() == true){k++;}

			if(k!=0) {page = "/WEB-INF/jsp/tests/test_result.jsp"; return page; }
			
			else
		{
			switch(sell)
				
			{
			case 1: page = "/WEB-INF/jsp/tests/math_test.jsp"; return page; 
			case 2: page = "/WEB-INF/jsp/tests/russian_test.jsp"; return page;
			case 3: page = "/WEB-INF/jsp/tests/english_test.jsp"; return page;
			}
			return page;
		}
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
		
	}
	}
