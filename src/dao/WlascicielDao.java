package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Mieszkanie;
import model.Wlasciciel;
import util.DbUtil;


public class WlascicielDao {
	
	private Connection connection;

	public WlascicielDao() {
		connection = DbUtil.getConnection();
	}
	
	public void addWlasciciel(Wlasciciel wlasciciel){
		
			try{
				
				PreparedStatement preparedStatement = connection.prepareStatement("insert into wlasciciel"
	        					+ " ( id, pesel, imie, nazwisko, ulica, miejscowosc, nr_telefonu)"
	        					+ " values (NULL, ?, ?, ?, ?, ?, ?)");

				preparedStatement.setString(1, wlasciciel.getPesel());
				preparedStatement.setString(2, wlasciciel.getImie());
				preparedStatement.setString(3, wlasciciel.getNazwisko());
				preparedStatement.setString(4, wlasciciel.getUlica());
				preparedStatement.setString(5, wlasciciel.getMiejscowosc());
				preparedStatement.setString(6, wlasciciel.getNrTel());
				
				preparedStatement.executeUpdate();
				
			}catch (SQLException e) {
	            e.printStackTrace();
	        }
	}
	
	
	public void deleteWlasciciel(int wlascicielid){
		try {
            PreparedStatement preparedStatement = connection.prepareStatement("delete from wlasciciel where id=?");
            preparedStatement.setInt(1, wlascicielid);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
	}

	public void updateWlasciciel(Wlasciciel wlasciciel){
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("update wlasciciel set pesel=?, imie=?, nazwisko=?,  ulica=?, miejscowosc=?, nr_telefonu=? where id=?");
            		
        	preparedStatement.setString(1, wlasciciel.getPesel());
			preparedStatement.setString(2, wlasciciel.getImie());
			preparedStatement.setString(3, wlasciciel.getNazwisko());
			preparedStatement.setString(4, wlasciciel.getUlica());
			preparedStatement.setString(5, wlasciciel.getMiejscowosc());
			preparedStatement.setString(6, wlasciciel.getNrTel());
			preparedStatement.setString(7, wlasciciel.getWlascicielid());

            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
	
	
	public List<Wlasciciel> getAllWlasciciel() {
        List<Wlasciciel> wlasciciele = new ArrayList<Wlasciciel>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from wlasciciel");
            while (rs.next()) {
            	Wlasciciel wlasciciel = new Wlasciciel();
            
                wlasciciel.setImie(rs.getString("imie"));
                wlasciciel.setNazwisko(rs.getString("nazwisko"));
                wlasciciel.setPesel(rs.getString("pesel"));
                wlasciciel.setUlica(rs.getString("ulica"));
                wlasciciel.setMiejscowosc(rs.getString("miejscowosc"));
                wlasciciel.setNrTel(rs.getString("nr_telefonu"));
                wlasciciel.setWlascicielid(rs.getString("id"));
                
                wlasciciele.add(wlasciciel);
 
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return wlasciciele;
    }
	
	
	public List<Mieszkanie> getMieszkaniaWlasciciela(int wlascicielid){
		 
		 List<Mieszkanie> mieszkania = new ArrayList<Mieszkanie>();
	        try {
	        	PreparedStatement preparedStatement = connection.prepareStatement("select * from mieszkanie JOIN blok on "
	        			+ "mieszkanie.id_bloku = blok.id_bloku join wlasciciel_mieszkanie on wlasciciel_mieszkanie.mieszkanie_id= mieszkanie.id_mieszkania where wlasciciel_mieszkanie.wlasciciel_id=?");
	            preparedStatement.setInt(1, wlascicielid);
	            ResultSet rs = preparedStatement.executeQuery();
	            while (rs.next()) {
	            	Mieszkanie mieszkanie = new Mieszkanie();
	            
	            	mieszkanie.setMieszkanieid(rs.getString("id_mieszkania"));
	            	mieszkanie.setIdBloku(rs.getString("id_bloku"));
	            	mieszkanie.setNrMieszkania(rs.getString("nr_mieszkania"));
	            	mieszkanie.setPietro(rs.getString("pietro"));
	            	mieszkanie.setPowierzchnia(rs.getString("powierzchnia"));
	            	mieszkanie.setIloscPokoi(rs.getString("ilosc_pokoi"));
	            	mieszkanie.setPiwnicaPow(rs.getString("piwnica_powierzchnia"));
	            	mieszkanie.setUlica(rs.getString("ulica"));
	            	mieszkanie.setUlicaNr(rs.getString("ulica_nr"));
	            	mieszkanie.setMiejscowosc(rs.getString("miejscowosc"));
	   
	                mieszkania.add(mieszkanie);
	 
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return mieszkania;
		
	}
	
	
	public Wlasciciel getWlascicielById(int wlascicielid) {
		Wlasciciel wlasciciel = new Wlasciciel();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from wlasciciel where id=?");
            preparedStatement.setInt(1, wlascicielid);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
        
                wlasciciel.setImie(rs.getString("imie"));
                wlasciciel.setNazwisko(rs.getString("nazwisko"));
                wlasciciel.setPesel(rs.getString("pesel"));
                wlasciciel.setUlica(rs.getString("ulica"));
                wlasciciel.setMiejscowosc(rs.getString("miejscowosc"));
                wlasciciel.setNrTel(rs.getString("nr_telefonu"));
                wlasciciel.setWlascicielid(rs.getString("id"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return wlasciciel;
    }
	
	
	
}
