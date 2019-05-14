package DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.data;

public class DisplayDAO {
	String url = "jdbc:mysql://localhost:3306/neemrana";
	String user = "root";
	String pass = "";
	String fetch;
	ArrayList<data> details = new ArrayList<data>();
	
	public DisplayDAO(String detail) {
		fetch = detail;
	}
	
	public ArrayList<data> get() throws SQLException, IOException {
		data all = null;

		System.out.println(fetch);
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			String sql = "select * from shop_details\n"  + "INNER JOIN Shop_Address ON Shop_Details.Shop_Number=Shop_Address.Shop_Number\n"+ " where Shop_Details.Shop_category=?;";
			PreparedStatement ps = con.prepareStatement(sql);	
			ps.setString(1, fetch);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				all = new data();
				String name = rs.getString(2);
				String contact = rs.getString(6);
				String number = rs.getString(1);
				String address_line=rs.getString(10);
				String locality=rs.getString(11);
				String landmark=rs.getString(12);
				
				int a = rs.getInt(1);
				all.setShop_Name(name);
				all.setShop_contact_details(contact);
				all.setShop_number(number);
				all.setAddress_Line(address_line);
				all.setLocality(locality);
				all.setLandmark(landmark);

				details.add(all);
				
			}
			rs.close();
			System.out.println(details.size());
		}

		catch (Exception e) {
			System.out.println(e);
		}
		return details;
	}
}