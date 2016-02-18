package com.epam.lab.project.db.model;

import com.epam.lab.project.db.model.enums.Role;

public class User {
	
	private int id;
	private String login;
	private String password;
	private String firstName;
	private String lastName;
	private String pasportData;
	private String phone;
	private Role role;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPasportData() {
		return pasportData;
	}
	public void setPasportData(String pasportData) {
		this.pasportData = pasportData;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = Role.valueOf(role.toUpperCase());
	}
	
	
	@Override
	public String toString(){
		return "Passenger [ login = " + login + ", password = " + password + ", firstName = " + firstName + 
				", lastName = " + lastName + ", pasportData = " + pasportData + ", phone = " + phone + 
				", role = " + role +"]";
	}

}
