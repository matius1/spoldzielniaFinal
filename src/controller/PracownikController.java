package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PracownikDao;
import model.Pracownik;

public class PracownikController extends HttpServlet {

	private static final long serialVersionUID = 1L;
    private static String INSERT_OR_EDIT = "/pracownik.jsp";
    private static String LIST_PRACOWNIK = "/listPracownik.jsp";
    private PracownikDao dao;
	
	
    public PracownikController() {
        super();
        dao = new PracownikDao();
    }
    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward="";
        String action = request.getParameter("action");

        System.out.println("CONTROLLER DO GET");
        
        if (action.equalsIgnoreCase("delete")){
            int pracownikid = Integer.parseInt(request.getParameter("pracownikid"));
            dao.deletePracownik(pracownikid);
            forward = LIST_PRACOWNIK;
            request.setAttribute("pracownicy", dao.getAllPracownik());  
            
        } else if (action.equalsIgnoreCase("edit")){
            forward = INSERT_OR_EDIT;
            int pracownikid = Integer.parseInt(request.getParameter("pracownikid"));
            Pracownik pracownik = dao.getPracownikById(pracownikid);
            request.setAttribute("pracownik", pracownik);
            
        } else if (action.equalsIgnoreCase("listPracownik")){
            forward = LIST_PRACOWNIK;
            request.setAttribute("pracownicy", dao.getAllPracownik());
            
        } else {
            forward = INSERT_OR_EDIT;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Pracownik pracownik = new Pracownik();
        
        pracownik.setImie(request.getParameter("imie"));
        pracownik.setNazwisko(request.getParameter("nazwisko"));
        pracownik.setPesel(request.getParameter("pesel"));
        pracownik.setUlica(request.getParameter("ulica"));
        pracownik.setMiejscowosc(request.getParameter("miejscowosc"));
        pracownik.setStanowisko(request.getParameter("stanowisko"));
        pracownik.setNrKonta(request.getParameter("nrKonta"));
        pracownik.setNrTel(request.getParameter("nrTel"));
        pracownik.setPracownikid(request.getParameter("pracownikid"));

        String pracownikid = request.getParameter("pracownikid");
        
        System.out.println("CONTROLLER DO POST");
//        System.out.println(pracownik);
        
        if(pracownikid == null || pracownikid.isEmpty())
        {
            dao.addPracownik(pracownik);
            System.out.println("ADD " +pracownik );
        }
        else
        {
            pracownik.setPracownikid(pracownikid);
            dao.updatePracownik(pracownik);
            System.out.println("UPDATE " +pracownik );
            
        }
        RequestDispatcher view = request.getRequestDispatcher(LIST_PRACOWNIK);
        request.setAttribute("pracownicy", dao.getAllPracownik());
        view.forward(request, response);
    }
    
    
}
