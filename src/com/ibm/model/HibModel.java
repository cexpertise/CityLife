package com.ibm.model;

public class HibModel {
	
	private int id;  
	private String name,password,email;
	
	String FirstName;
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getRestaurantName() {
		return RestaurantName;
	}
	public void setRestaurantName(String restaurantName) {
		RestaurantName = restaurantName;
	}
	public String getNoofGuests() {
		return NoofGuests;
	}
	public void setNoofGuests(String noofGuests) {
		NoofGuests = noofGuests;
	}
	public String getMobileNo() {
		return MobileNo;
	}
	public void setMobileNo(String mobileNo) {
		MobileNo = mobileNo;
	}
	public String getVisitingtime() {
		return Visitingtime;
	}
	public void setVisitingtime(String visitingtime) {
		Visitingtime = visitingtime;
	}
	public String getVisitingdate() {
		return Visitingdate;
	}
	public void setVisitingdate(String visitingdate) {
		Visitingdate = visitingdate;
	}
	String LastName;
	String RestaurantName;
	String NoofGuests;
	String MobileNo;
	String Visitingtime;
	String Visitingdate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}  

}
