package by.bsu.extask.bl;
import by.bsu.extask.controller.InDataWrapper;

public class Reg implements Command{
	@Override public String execute(InDataWrapper inData) {		
		String page;
			page = "/WEB-INF/jsp/registration.jsp"; return page; 
}
}
