package com.epam.lab.project.db.model.enums;

public enum Role {
	
	PASSENGER("passenger"),
	ADMIN("admin");
	
	private String value;
	
	private Role(String value) {		
		this.value = value;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

}
