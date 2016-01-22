package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.LoginDao;
import model.Login;

public class LoginController extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static String LOGIN = "login.jsp";
	private LoginDao dao;
	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	String forward="";
    	Login login =new Login();
    	
    	login.setLogin(request.getParameter("username"));
    	login.setPass(request.getParameter("password"));
    	
    	boolean confirmed = false;
    	
    	confirmed = dao.validate(login);
    	
    	if(confirmed){
    		
    	}else
    	{
    		forward = LOGIN;
    		request.setAttribute("username", login.getLogin());
    		session
    	}
    	
    	RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    	
    }
    
	
}
