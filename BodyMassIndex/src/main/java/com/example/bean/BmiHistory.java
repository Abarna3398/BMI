package com.example.bean;

import java.sql.Date;

public class BmiHistory {
	
	private int id;
	private String email;
	private Date date;
	private double bmi;
	
	public BmiHistory(Date date,double bmi) {
		//super();
		//this.id = id;
		this.date = date;
		this.bmi = bmi;
		
	}
	
	
	public BmiHistory() {
	}


	public BmiHistory(int id,String email,Date date,double bmi) {
		//super();
		this.id=id;
		this.email=email;
		this.date = date;
		this.bmi = bmi;
		
	}

	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public double getBmi() {
		return bmi;
	}
	public void setBmi(double bmi) {
		this.bmi = bmi;
	}
	
	

}
