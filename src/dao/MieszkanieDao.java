package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Mieszkanie;
import model.Oplaty;
import util.DbUtil;

public class MieszkanieDao {

	private Connection connection;

	public MieszkanieDao() {
		 connection = DbUtil.getConnection();
	}
	
	public void addMieszkanie(Mieszkanie mieszkanie){
				
			try{
					PreparedStatement preparedStatement = connection.prepareStatement("insert into mieszkanie"
		        					+ " (id_mieszkania, id_bloku, nr_mieszkania, pietro, powierzchnia, ilosc_pokoi, piwnica_powierzchnia)"
		        					+ " values (NULL, ?, ?, ? ,?, ?, ?)");
				
					preparedStatement.setString(1, mieszkanie.getIdBloku());
					preparedStatement.setString(2, mieszkanie.getNrMieszkania());
					preparedStatement.setString(3, mieszkanie.getPietro());
					preparedStatement.setString(4, mieszkanie.getPowierzchnia());
					preparedStatement.setString(5, mieszkanie.getIloscPokoi());
					preparedStatement.setString(6, mieszkanie.getPiwnicaPow());
					
					preparedStatement.executeUpdate();
					
				}catch (SQLException e) {
		            e.printStackTrace();
		        }
	}
	
	public void addMieszkanieToWlasciciel(int mieszkanieid, int wlascicielid){
		
		try{
			PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO `wlasciciel_mieszkanie` (`wlasciciel_id`, `mieszkanie_id`) VALUES (?, ?);");
		
			preparedStatement.setInt(1, wlascicielid);
			preparedStatement.setInt(2, mieszkanieid);
			
			preparedStatement.executeUpdate();
			
		}catch (SQLException e) {
            e.printStackTrace();
		}
	}
	
	public void deleteMieszkanie(int mieszkanieid){
		
		   try {
	            PreparedStatement preparedStatement = connection.prepareStatement("delete from mieszkanie where id_mieszkania=?");
	            preparedStatement.setInt(1, mieszkanieid);
	            preparedStatement.executeUpdate();

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	}
	
	public void deleteMieszkanieFromWlasciciel(int mieszkanieid){
		
		   try {
	            PreparedStatement preparedStatement = connection.prepareStatement("delete from wlasciciel_mieszkanie where mieszkanie_id=?");
	            preparedStatement.setInt(1, mieszkanieid);
	            preparedStatement.executeUpdate();

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	}
	
	
	
	public void updateMieszkanie(Mieszkanie mieszkanie){
		 try {
	            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE mieszkanie SET id_bloku= ?, nr_mieszkania = ?, pietro = ?, `powierzchnia` = ?, ilosc_pokoi = ?, piwnica_powierzchnia = ? WHERE mieszkanie.id_mieszkania = ?;");
	            
	            preparedStatement.setString(1, mieszkanie.getIdBloku());
				preparedStatement.setString(2, mieszkanie.getNrMieszkania());
				preparedStatement.setString(3, mieszkanie.getPietro());
	            preparedStatement.setString(4, mieszkanie.getPowierzchnia());
	            preparedStatement.setString(5, mieszkanie.getIloscPokoi());
	            preparedStatement.setString(6, mieszkanie.getPiwnicaPow());
	            preparedStatement.setString(7, mieszkanie.getMieszkanieid());
	            
	            preparedStatement.executeUpdate();

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	}
	
	public List<Mieszkanie> getAllMieszkanie() {
        List<Mieszkanie> mieszkania = new ArrayList<Mieszkanie>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM `mieszkanie` join blok on blok.id_bloku = mieszkanie.id_bloku");
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
	
	
	public List<Mieszkanie> getMieszkaniaWlasciciela(int wlascicielid){
		 
		 List<Mieszkanie> mieszkania = new ArrayList<Mieszkanie>();
	        try {
	        	PreparedStatement preparedStatement = connection.prepareStatement("select * from mieszkanie JOIN blok on "
	        			+ "mieszkanie.id_bloku = blok.id_bloku join wlasciciel_mieszkanie on "
	        			+ "wlasciciel_mieszkanie.mieszkanie_id= mieszkanie.id_mieszkania where wlasciciel_mieszkanie.wlasciciel_id=?");
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
	
	public List<Mieszkanie> getMieszkaniaWBloku(int blokid){
		 
		 List<Mieszkanie> mieszkania = new ArrayList<Mieszkanie>();
		 System.out.println("blok: " + blokid);
	        try {
	        	PreparedStatement preparedStatement = connection.prepareStatement("select * from mieszkanie JOIN blok on "
	        			+ "mieszkanie.id_bloku = blok.id_bloku left join wlasciciel_mieszkanie on wlasciciel_mieszkanie.mieszkanie_id= mieszkanie.id_mieszkania "
	        			+ "where mieszkanie.id_bloku = ?");
	            
	        			
	            preparedStatement.setInt(1, blokid);
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
	        System.out.println(mieszkania);
	        return mieszkania;
		
	}
	
	
	public Mieszkanie getMieszkanieById(int mieszkanieid) {
		Mieszkanie mieszkanie = new Mieszkanie();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from mieszkanie where id_mieszkania=?");
            preparedStatement.setInt(1, mieszkanieid);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
            	
            	mieszkanie.setMieszkanieid(rs.getString("id_mieszkania"));
            	mieszkanie.setIdBloku(rs.getString("id_bloku"));
            	mieszkanie.setNrMieszkania(rs.getString("nr_mieszkania"));
            	mieszkanie.setPietro(rs.getString("pietro"));
            	mieszkanie.setPowierzchnia(rs.getString("powierzchnia"));
            	mieszkanie.setIloscPokoi(rs.getString("ilosc_pokoi"));
            	mieszkanie.setPiwnicaPow(rs.getString("piwnica_powierzchnia"));
                
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return mieszkanie;
    }
	
	public List<Oplaty> getOplaty(int mieszkanieid){
		List<Oplaty> oplaty = new ArrayList<Oplaty>();
		
		 try {
	            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM oplaty where oplaty.id_mieszkania =?");
	            preparedStatement.setInt(1, mieszkanieid);
	            
	            ResultSet rs = preparedStatement.executeQuery();
	            if (rs.next()) {
	            	Oplaty oplata = new Oplaty();
	            	oplata.setOplatyid(rs.getString("id_oplat"));
	            	oplata.setMieszkanieid(rs.getString("id_mieszkania"));
	            	oplata.setMiesiac(rs.getString("miesiac"));
	            	oplata.setRok(rs.getString("rok"));
	            	oplata.setCzynsz(rs.getString("czynsz"));
	            	oplata.setPrad(rs.getString("prad"));
	            	oplata.setWoda(rs.getString("woda"));
	            	oplata.setGaz(rs.getString("gaz"));
	            	oplata.setRemontowe(rs.getString("remontowe"));
	        		System.out.println(oplata);

	            	oplaty.add(oplata);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
		System.out.println(oplaty);
		return oplaty;
	}
	
	public void deleteOplata(int oplataid){
		
		   try {
	            PreparedStatement preparedStatement = connection.prepareStatement("delete from oplaty where id_oplat=?");
	            preparedStatement.setInt(1, oplataid);
	            preparedStatement.executeUpdate();

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	}
	
	
}
