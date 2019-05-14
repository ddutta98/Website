package model;

public class data {
	private String Shop_Name;
	private String Shop_contact_details;
	private String Shop_number;
	private String Locality;
	private String Landmark;
	
	public String getLocality() {
		return Locality;
	}

	public void setLocality(String locality) {
		Locality = locality;
	}

	public String getLandmark() {
		return Landmark;
	}

	public void setLandmark(String landmark) {
		Landmark = landmark;
	}

	public String getAddress_Line() 
		{
		return Address_Line;
	}

	public void setAddress_Line(String address_Line) {
		Address_Line = address_Line;
	}

	private String Address_Line;
	public String getShop_number() {
		return Shop_number;
	}

	public void setShop_number(String shop_number) {
		Shop_number = shop_number;
	}

	public String getShop_contact_details() {
		return Shop_contact_details;
	}

	public void setShop_contact_details(String shop_contact_details) {
		Shop_contact_details = shop_contact_details;
	}

	public String getShop_Name() {
		return Shop_Name;
	}

	public void setShop_Name(String shop_Name) {
		Shop_Name = shop_Name;
	}
	
}
