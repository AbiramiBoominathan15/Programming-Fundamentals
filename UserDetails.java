package com.chainsys.model;

public class UserDetails {
	String name;
	String phonenumber;
	String email;

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "UserDetails [name=" + name + ", phonenumber=" + phonenumber + ", email=" + email + ", getName()="
				+ getName() + ", getPhonenumber()=" + getPhonenumber() + ", getEmail()=" + getEmail() + "]";
	}
	public UserDetails(String name, String phonenumber, String email) {
		super();
		this.name = name;
		this.phonenumber = phonenumber;
		this.email = email;
	}
	
	

}
