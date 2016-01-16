package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BlokDao;
import model.Blok;

public class BlokController extends HttpServlet {

	private static final long serialVersionUID = 1L;
    private static String INSERT_OR_EDIT = "/blok.jsp";
    private static String LIST_BLOK = "/listBlok.jsp";
    private static String LIST_REMONT = "/listRemont.jsp";
    private BlokDao dao;
	
	
    public BlokController() {
        super();
        dao = new BlokDao();
    }
    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward="";
        String action = request.getParameter("action");

        System.out.println("CONTROLLER DO GET");
        
        if (action.equalsIgnoreCase("delete")){
            int blokid = Integer.parseInt(request.getParameter("blokid"));
            dao.deleteBlok(blokid);
            forward = LIST_BLOK;
            request.setAttribute("bloki", dao.getAllBlok());  
            
        } else if (action.equalsIgnoreCase("edit")){
            forward = INSERT_OR_EDIT;
            int blokid = Integer.parseInt(request.getParameter("blokid"));
            Blok blok = dao.getBlokById(blokid);
            request.setAttribute("blok", blok);
            
        } else if (action.equalsIgnoreCase("listBlok")){
            forward = LIST_BLOK;
            request.setAttribute("bloki", dao.getAllBlok());
            
        }else if (action.equalsIgnoreCase("listRemont")){
            forward = LIST_REMONT;
            request.setAttribute("remonty", dao.getAllRemonty());
            
        }else if (action.equalsIgnoreCase("remontyWBloku")){
            forward = LIST_REMONT;
            int blokid = Integer.parseInt(request.getParameter("blokid"));
            request.setAttribute("remonty", dao.getBlokRemonty(blokid));
            request.setAttribute("blokid", blokid);
            
        }
        
        else {
            forward = INSERT_OR_EDIT;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Blok blok = new Blok();
        
       
        blok.setUlica(request.getParameter("ulica"));
        blok.setMiejscowosc(request.getParameter("miejscowosc"));
        blok.setUlica_nr(request.getParameter("ulica_nr"));
        blok.setBlokid(request.getParameter("blokid"));

        String blokid = request.getParameter("blokid");
        
        System.out.println("CONTROLLER DO POST");
//        System.out.println(blok);
        
        if(blokid == null || blokid.isEmpty())
        {
            dao.addBlok(blok);
            System.out.println("ADD " +blok );
        }
        else
        {
            blok.setBlokid(blokid);
            dao.updateBlok(blok);
            System.out.println("UPDATE " +blok );
            
        }
        RequestDispatcher view = request.getRequestDispatcher(LIST_BLOK);
        request.setAttribute("bloki", dao.getAllBlok());
        view.forward(request, response);
    }
    
    
}
