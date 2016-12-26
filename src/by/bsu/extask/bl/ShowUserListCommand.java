package by.bsu.extask.bl;
import by.bsu.extask.controller.InDataWrapper;
import by.bsu.extask.dao.DAOException;
import by.bsu.extask.dao.UserDAO;
import by.bsu.extask.to.UserList;
public class ShowUserListCommand implements Command{
@Override public String execute(InDataWrapper inData) throws DataException {
String login = (String)inData.getSessionAttribute("login");
int id_teacher = Integer.parseInt(inData.getRequestParametr("id").toString()); 
if(!"OK".equals(login)){
return "/index.jsp";
}
UserList userList;
try {
userList = UserDAO.userList(id_teacher);
} catch (DAOException e) {
throw new DataException("Ошибка работы с источником данных.");
}
if (userList == null){
throw new DataException("Ошибка работы с источником данных. Нет пользователей.");
}
inData.setRequestAttribute("userList", userList);
return "/WEB-INF/jsp/all_users_show_page.jsp";
}
}