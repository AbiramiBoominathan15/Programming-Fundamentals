package com.chainsys.demo2.model;

public class User {
	public String username;
	public String password;
	public String email;
	public String phoneNumber;
	public String city;
	public int id;

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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", id=" + id + ", getUsername()="
				+ getUsername() + ", getPassword()=" + getPassword() + ", getId()=" + getId() + "]";
	}

	public User(String username, String password, int id) {
		super();
		this.username = username;
		this.password = password;
		this.id = id;
	}

	public User() {

	}

}
