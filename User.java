package com.chainsys.demo2.model;

public class User {
	public String username;
	public String password;
	public String email;
	public String phoneNumber;
	public String city;
	public int id;
	public int status ;

	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
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



	public String getPhoneNumber() {
		return phoneNumber;
	}



	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}



	public String getCity() {
		return city;
	}



	public void setCity(String city) {
		this.city = city;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public int getStatus() {
		return status;
	}



	public void setStatus(int status) {
		this.status = status;
	}



	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", email=" + email + ", phoneNumber="
				+ phoneNumber + ", city=" + city + ", id=" + id + ", status=" + status + ", getUsername()="
				+ getUsername() + ", getPassword()=" + getPassword() + ", getEmail()=" + getEmail()
				+ ", getPhoneNumber()=" + getPhoneNumber() + ", getCity()=" + getCity() + ", getId()=" + getId()
				+ ", getStatus()=" + getStatus() + "]";
	}



	public User(String username, String password, String email, String phoneNumber, String city, int id, int status) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.city = city;
		this.id = id;
		this.status = status;
	}






	public User() {

	}

}
