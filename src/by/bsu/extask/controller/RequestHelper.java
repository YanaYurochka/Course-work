package by.bsu.extask.controller;
import java.util.HashMap;

import by.bsu.extask.bl.Add_user;
import by.bsu.extask.bl.Command;
import by.bsu.extask.bl.LoginCommand;
import by.bsu.extask.bl.LogoutCommand;
import by.bsu.extask.bl.Received;
import by.bsu.extask.bl.Reg;
import by.bsu.extask.bl.SaveTest1;
import by.bsu.extask.bl.SaveTest2;
import by.bsu.extask.bl.SaveTest3;
import by.bsu.extask.bl.Add_rezult;
import by.bsu.extask.bl.SelectExam;
import by.bsu.extask.bl.ShowUserListCommand;
public class RequestHelper {
private static RequestHelper instance = null;
private HashMap<String, Command> commands;
private RequestHelper(){
commands = new HashMap<String, Command>();
commands.put("login", new LoginCommand());
commands.put("logout", new LogoutCommand());
commands.put("show_users", new ShowUserListCommand());
commands.put("select", new SelectExam());
commands.put("save_test1", new SaveTest1());
commands.put("save_test2", new SaveTest2());
commands.put("save_test3", new SaveTest3());
commands.put("registration", new Reg());
commands.put("add_user", new Add_user());
commands.put("result", new Add_rezult());
commands.put("received", new Received());
}
public Command getCommand(String action){
Command command = commands.get(action);
return command;
}

public static RequestHelper getInstance(){
if (instance == null){
instance = new RequestHelper();
}
return instance;
}
}