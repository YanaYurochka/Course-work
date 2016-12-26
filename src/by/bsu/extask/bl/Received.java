package by.bsu.extask.bl;
import by.bsu.extask.controller.InDataWrapper;
import by.bsu.extask.dao.DAOException;
import by.bsu.extask.dao.ReceiveDAO;
import by.bsu.extask.to.ReceiveList;

public class Received implements Command{
	@Override public String execute(InDataWrapper inData) throws DataException {
		String login = (String)inData.getSessionAttribute("login");
		//int id = Integer.parseInt(inData.getRequestParametr("id").toString());
		if(!"OK".equals(login)){
		return "/index.jsp";
		}
		ReceiveList userList;
		try {
		userList = ReceiveDAO.userList();
		} catch (DAOException e) {
		throw new DataException("Ошибка работы с источником данных.");
		}
		if (userList == null){
		throw new DataException("Ошибка работы с источником данных. Нет пользователей.");
		}
		inData.setRequestAttribute("userList", userList);
		return "/WEB-INF/jsp/received.jsp";
		}
}