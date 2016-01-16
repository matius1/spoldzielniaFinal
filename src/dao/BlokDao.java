package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Blok;
import util.DbUtil;

public class BlokDao {
	
private Connection connection;
	
	public BlokDao(){
		 connection = DbUtil.getConnection();
	}

	public void addBlok(Blok blok){
		
		try{
			
			PreparedStatement preparedStatement = connection.prepareStatement("insert into blok"
        					+ " (id_bloku, ulica, ulica_nr, miejscowosc, nazwa_spoldzielni)"
        					+ " values (NULL, ?, ?, ?, 'Stonka' )");
		

			preparedStatement.setString(1, blok.getUlica());
			preparedStatement.setString(2, blok.getUlica_nr());
			preparedStatement.setString(3, blok.getMiejscowosc());
			
			preparedStatement.executeUpdate();
			
		}catch (SQLException e) {
            e.printStackTrace();
        }
	}
	
	public void deleteBlok(int blokid) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("delete from blok where id_bloku=?");
            // Parameters start with 1
            preparedStatement.setInt(1, blokid);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
	
	
	public void updateBlok(Blok blok) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE `blok` SET `ulica` =?, `ulica_nr` =?, `miejscowosc` =? WHERE `blok`.`id_bloku` =?");
            
            preparedStatement.setString(1, blok.getUlica());
			preparedStatement.setString(2, blok.getUlica_nr());
			preparedStatement.setString(3, blok.getMiejscowosc());
            preparedStatement.setString(4, blok.getBlokid());
            
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

	public List<Blok> getAllBlok() {
        List<Blok> bloki = new ArrayList<Blok>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from blok");
            while (rs.next()) {
            	Blok blok = new Blok();
            
               
                blok.setUlica(rs.getString("ulica"));
                blok.setUlica_nr(rs.getString("ulica_nr"));
                blok.setMiejscowosc(rs.getString("miejscowosc"));
                blok.setBlokid(rs.getString("id_bloku"));
                
                bloki.add(blok);
 
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return bloki;
    }
	
	public Blok getBlokById(int blokid) {
		Blok blok = new Blok();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from blok where id_bloku=?");
            preparedStatement.setInt(1, blokid);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
            	
            	blok.setUlica(rs.getString("ulica"));
                blok.setUlica_nr(rs.getString("ulica_nr"));
                blok.setMiejscowosc(rs.getString("miejscowosc"));
                blok.setBlokid(rs.getString("id_bloku"));
                
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return blok;
    }
	
	
	
	
	

}
