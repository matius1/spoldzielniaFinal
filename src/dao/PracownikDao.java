package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Pracownik;
import util.DbUtil;


public class PracownikDao {
	
	private Connection connection;
	
	public PracownikDao(){
		 connection = DbUtil.getConnection();
	}

	public void addPracownik(Pracownik pracownik){
		
		try{
			
			PreparedStatement preparedStatement = connection.prepareStatement("insert into pracownik"
        					+ " (id, imie, nazwisko, pesel, ulica, miejscowosc, stanowisko, nr_konta, nr_telefonu, nazwa_spoldzielni_fk)"
        					+ " values (NULL, ?, ?, ?, ?, ?, ?, ?, ?, 'Stonka' )");
            // Parameters start with 1

			preparedStatement.setString(1, pracownik.getImie());
			preparedStatement.setString(2, pracownik.getNazwisko());
			preparedStatement.setString(3, pracownik.getPesel());
			preparedStatement.setString(4, pracownik.getUlica());
			preparedStatement.setString(5, pracownik.getMiejscowosc());
			preparedStatement.setString(6, pracownik.getStanowisko());
			preparedStatement.setString(7, pracownik.getNrKonta());
			preparedStatement.setString(8, pracownik.getNrTel());
			
			preparedStatement.executeUpdate();
			
		}catch (SQLException e) {
            e.printStackTrace();
        }
	}
	
	public void deletePracownik(int pracownikid) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("delete from pracownik where id=?");
            // Parameters start with 1
            preparedStatement.setInt(1, pracownikid);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
	
	
	public void updatePracownik(Pracownik pracownik) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("update pracownik "
					+ "set imie=?, nazwisko=?, pesel=?, ulica=?, miejscowosc=?, stanowisko=?, nr_konta=?, nr_telefonu=? where id=?");
					
            preparedStatement.setString(1, pracownik.getImie());
            preparedStatement.setString(2, pracownik.getNazwisko());
            preparedStatement.setString(3, pracownik.getPesel());
            preparedStatement.setString(4, pracownik.getUlica());
            preparedStatement.setString(5, pracownik.getMiejscowosc());
            preparedStatement.setString(6, pracownik.getStanowisko());
            preparedStatement.setString(7, pracownik.getNrKonta());
            preparedStatement.setString(8, pracownik.getNrTel());
            preparedStatement.setString(9, pracownik.getPracownikid());
            
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

	public List<Pracownik> getAllPracownik() {
        List<Pracownik> pracownicy = new ArrayList<Pracownik>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from pracownik");
            while (rs.next()) {
            	Pracownik pracownik = new Pracownik();
            
                pracownik.setImie(rs.getString("imie"));
                pracownik.setNazwisko(rs.getString("nazwisko"));
                pracownik.setPesel(rs.getString("pesel"));
                pracownik.setUlica(rs.getString("ulica"));
                pracownik.setMiejscowosc(rs.getString("miejscowosc"));
                pracownik.setStanowisko(rs.getString("stanowisko"));
                pracownik.setNrKonta(rs.getString("nr_konta"));
                pracownik.setNrTel(rs.getString("nr_telefonu"));
                pracownik.setPracownikid(rs.getString("id"));
                
                pracownicy.add(pracownik);
 
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return pracownicy;
    }
	
	public Pracownik getPracownikById(int pracownikid) {
		Pracownik pracownik = new Pracownik();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from pracownik where id=?");
            preparedStatement.setInt(1, pracownikid);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
            	pracownik.setImie(rs.getString("imie"));
                pracownik.setNazwisko(rs.getString("nazwisko"));
                pracownik.setPesel(rs.getString("pesel"));
                pracownik.setUlica(rs.getString("ulica"));
                pracownik.setMiejscowosc(rs.getString("miejscowosc"));
                pracownik.setStanowisko(rs.getString("stanowisko"));
                pracownik.setNrKonta(rs.getString("nr_konta"));
                pracownik.setNrTel(rs.getString("nr_telefonu"));
                pracownik.setPracownikid(rs.getString("id"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return pracownik;
    }
	
	
	
}
