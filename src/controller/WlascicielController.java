package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.WlascicielDao;
import model.Wlasciciel;

public class WlascicielController extends HttpServlet {

	private static final long serialVersionUID = -1298106525913642874L;
	private static String INSERT_OR_EDIT = "/wlasciciel.jsp";
    private static String LIST_WLASCICIEL = "/listWlasciciel.jsp";
    private WlascicielDao dao;
    
    
	public WlascicielController() {
		super();
		dao = new WlascicielDao();
	}
	
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String forward="";
	        String action = request.getParameter("action");

	        System.out.println("WLASCICIEL CONTROLLER DO GET");
	        
	        if (action.equalsIgnoreCase("delete")){
	            int wlascicielid = Integer.parseInt(request.getParameter("wlascicielid"));
	            dao.deleteWlasciciel(wlascicielid);
	            forward = LIST_WLASCICIEL;
	            request.setAttribute("wlasciciele", dao.getAllWlasciciel());  
	            
	        } else if (action.equalsIgnoreCase("edit")){
	            forward = INSERT_OR_EDIT;
	            int wlascicielid = Integer.parseInt(request.getParameter("wlascicielid"));
	            Wlasciciel wlasciciel = dao.getWlascicielById(wlascicielid);
	            request.setAttribute("wlasciciel", wlasciciel);
	            
	        } else if (action.equalsIgnoreCase("listWlasciciel")){
	            forward = LIST_WLASCICIEL;
	            request.setAttribute("wlasciciele", dao.getAllWlasciciel());
	            
	        } else {
	            forward = INSERT_OR_EDIT;
	        }

	        RequestDispatcher view = request.getRequestDispatcher(forward);
	        view.forward(request, response);
	    }
	    
	 
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        Wlasciciel wlasciciel = new Wlasciciel();
	        
	        wlasciciel.setImie(request.getParameter("imie"));
	        wlasciciel.setNazwisko(request.getParameter("nazwisko"));
	        wlasciciel.setPesel(request.getParameter("pesel"));
	        wlasciciel.setUlica(request.getParameter("ulica"));
	        wlasciciel.setMiejscowosc(request.getParameter("miejscowosc"));
	        wlasciciel.setNrTel(request.getParameter("nrTel"));
	        wlasciciel.setWlascicielid(request.getParameter("wlascicielid"));

	        String wlascicielid = request.getParameter("wlascicielid");

	        
	        
	        System.out.println("wlasciciel CONTROLLER DO POST");
//	        System.out.println(wlasciciel);
	        
	        if(wlascicielid == null || wlascicielid.isEmpty())
	        {
	            dao.addWlasciciel(wlasciciel);
	            System.out.println("ADD " +wlasciciel );
	        }
	        else
	        {
	            wlasciciel.setWlascicielid(wlascicielid);
	            dao.updateWlasciciel(wlasciciel);
	            System.out.println("UPDATE " +wlasciciel );
	            
	        }
	        RequestDispatcher view = request.getRequestDispatcher(LIST_WLASCICIEL);
	        request.setAttribute("wlasciciele", dao.getAllWlasciciel());
	        view.forward(request, response);
	    }
	 
	 
    
}
