package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MieszkanieDao;
import model.Mieszkanie;

/**
 * Servlet implementation class MieszkanieController
 */
@WebServlet("/MieszkanieController")
public class MieszkanieController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static String INSERT_OR_EDIT = "/mieszkanie.jsp";
    private static String LIST_MIESZKANIE = "/listMieszkanie.jsp";
    private static String MIESZKANIE_WLASCICIEL = "/mieszkanieWlasciciel.jsp";
    private static String LIST_OPLATY = "/listOplaty.jsp";
    private MieszkanieDao dao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MieszkanieController() {
        super();
        dao = new MieszkanieDao();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward="";
        String action = request.getParameter("action");

        System.out.println("Mieszkanie CONTROLLER DO GET");
        
        if (action.equalsIgnoreCase("delete")){
            int mieszkanieid = Integer.parseInt(request.getParameter("mieszkanieid"));
            dao.deleteMieszkanie(mieszkanieid);
            forward = LIST_MIESZKANIE;
            request.setAttribute("mieszkania", dao.getAllMieszkanie());  
            
        } else if (action.equalsIgnoreCase("edit")){
            forward = INSERT_OR_EDIT;
            int mieszkanieid = Integer.parseInt(request.getParameter("mieszkanieid"));
            Mieszkanie mieszkanie= dao.getMieszkanieById(mieszkanieid);
            request.setAttribute("mieszkanie", mieszkanie);
            
        } else if (action.equalsIgnoreCase("listMieszkanie")){
            forward = LIST_MIESZKANIE;
            request.setAttribute("mieszkania", dao.getAllMieszkanie());
            
        }else if (action.equalsIgnoreCase("mieszkaniaWlasciciela")){
            forward = LIST_MIESZKANIE;
            int wlascicielid = Integer.parseInt(request.getParameter("wlascicielid"));
            request.setAttribute("mieszkania", dao.getMieszkaniaWlasciciela(wlascicielid));
            request.setAttribute("wlascicielid", wlascicielid);  
            
        }else if (action.equalsIgnoreCase("deleteMieszkanieFromWlasciciel")){
            int mieszkanieid = Integer.parseInt(request.getParameter("mieszkanieid"));
            dao.deleteMieszkanieFromWlasciciel(mieszkanieid);
            forward = LIST_MIESZKANIE;
            int wlascicielid = Integer.parseInt(request.getParameter("wlascicielid"));
            request.setAttribute("mieszkania", dao.getMieszkaniaWlasciciela(wlascicielid));
            request.setAttribute("wlascicielid", wlascicielid);   
            
        } else if (action.equalsIgnoreCase("addMieszkanieWlascicielowi")){ // to nie dziala
        	int wlascicielid = Integer.parseInt(request.getParameter("wlascicielid"));
        	int mieszkanieid = Integer.parseInt(request.getParameter("mieszkanieid"));
        	dao.addMieszkanieToWlasciciel(mieszkanieid, wlascicielid);
            forward = LIST_MIESZKANIE;
            request.setAttribute("mieszkania", dao.getMieszkaniaWlasciciela(wlascicielid));
            request.setAttribute("wlascicielid", wlascicielid);  
            
        } else if (action.equalsIgnoreCase("sendToaddMieszkanieWlascicielowi")){ //to nie dziala
        	int wlascicielid = Integer.parseInt(request.getParameter("wlascicielid"));
        	forward = MIESZKANIE_WLASCICIEL;
            request.setAttribute("wlascicielid", wlascicielid);  
            
        } else if (action.equalsIgnoreCase("oplaty")){ // wyswietla 1 oplate
        	int mieszkanieid = Integer.parseInt(request.getParameter("mieszkanieid"));
        	forward = LIST_OPLATY;
            request.setAttribute("mieszkanieid", mieszkanieid);  
            request.setAttribute("oplaty", dao.getOplaty(mieszkanieid));
            
        } else if (action.equalsIgnoreCase("deleteOplata")){
        	int oplataid = Integer.parseInt(request.getParameter("oplataid"));
        	int mieszkanieid = Integer.parseInt(request.getParameter("mieszkanieid"));
        	dao.deleteOplata(oplataid);
        	forward = LIST_OPLATY;
            request.setAttribute("oplaty", dao.getOplaty(mieszkanieid));

            request.setAttribute("mieszkanieid", mieszkanieid);  
        }else if (action.equalsIgnoreCase("mieszkaniaWBloku")){
            forward = LIST_MIESZKANIE;
            int blokid = Integer.parseInt(request.getParameter("blokid"));
            request.setAttribute("mieszkania", dao.getMieszkaniaWBloku(blokid));
            request.setAttribute("blokid", blokid);  
        }
        
        
        
        
        else {
            forward = INSERT_OR_EDIT;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }
    

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Mieszkanie mieszkanie = new Mieszkanie();
        
        
        mieszkanie.setMieszkanieid(request.getParameter("mieszkanieid"));
    	mieszkanie.setIdBloku(request.getParameter("idBloku"));
    	mieszkanie.setNrMieszkania(request.getParameter("nrMieszkania"));
    	mieszkanie.setPietro(request.getParameter("pietro"));
    	mieszkanie.setPowierzchnia(request.getParameter("powierzchnia"));
    	mieszkanie.setIloscPokoi(request.getParameter("iloscPokoi"));
    	mieszkanie.setPiwnicaPow(request.getParameter("piwnicaPow"));
    	mieszkanie.setUlica(request.getParameter("ulica"));
    	mieszkanie.setUlicaNr(request.getParameter("ulicaNr"));
    	mieszkanie.setMiejscowosc(request.getParameter("miejscowosc"));
        

        String mieszkanieid = request.getParameter("mieszkanieid");
        
        System.out.println("CONTROLLER DO POST");
//        System.out.println(blok);
        
        if(mieszkanieid == null || mieszkanieid.isEmpty())
        {
            dao.addMieszkanie(mieszkanie);
            System.out.println("ADD " +mieszkanie );
        }
        else
        {
        	mieszkanie.setMieszkanieid(mieszkanieid);
        	dao.updateMieszkanie(mieszkanie);
            System.out.println("UPDATE " +mieszkanie );
            
        }
        RequestDispatcher view = request.getRequestDispatcher(LIST_MIESZKANIE);
        request.setAttribute("mieszkania", dao.getAllMieszkanie());
        view.forward(request, response);
    }
    
    

}
