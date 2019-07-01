package com.wipro.FRS.bean;

public class PassengerBean {
	private String username;
	private String flight_id;
	private String date;
	private int adult;
	private int child;
	private String adult_username;
	private String adult_age;
	private String adult_gender;
	private String child_username;
	private String child_age;
	private String child_gender;
	public String getUsername() {
		return username;
	}
	public PassengerBean(String username, String flight_id, String date, int adult, int child) {
		super();
		this.username = username;
		this.flight_id = flight_id;
		this.date = date;
		this.adult = adult;
		this.child = child;
	}
	public PassengerBean(String username, String flight_id, String date, int adult, int child, String adult_username,
			String adult_age, String adult_gender, String child_username, String child_age, String child_gender) {
		super();
		this.username = username;
		this.flight_id = flight_id;
		this.date = date;
		this.adult = adult;
		this.child = child;
		this.adult_username = adult_username;
		this.adult_age = adult_age;
		this.adult_gender = adult_gender;
		this.child_username = child_username;
		this.child_age = child_age;
		this.child_gender = child_gender;
	}
	public PassengerBean() {
		super();
	}
	public PassengerBean(String adult_username, String adult_age, String adult_gender, String child_username,
			String child_age, String child_gender) {
		super();
		this.adult_username = adult_username;
		this.adult_age = adult_age;
		this.adult_gender = adult_gender;
		this.child_username = child_username;
		this.child_age = child_age;
		this.child_gender = child_gender;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFlight_id() {
		return flight_id;
	}
	public void setFlight_id(String flight_id) {
		this.flight_id = flight_id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getAdult() {
		return adult;
	}
	public void setAdult(int adult) {
		this.adult = adult;
	}
	public int getChild() {
		return child;
	}
	public void setChild(int child) {
		this.child = child;
	}
	public String getAdult_username() {
		return adult_username;
	}
	public void setAdult_username(String adult_username) {
		this.adult_username = adult_username;
	}
	public String getAdult_age() {
		return adult_age;
	}
	public void setAdult_age(String adult_age) {
		this.adult_age = adult_age;
	}
	public String getAdult_gender() {
		return adult_gender;
	}
	public void setAdult_gender(String adult_gender) {
		this.adult_gender = adult_gender;
	}
	public String getChild_username() {
		return child_username;
	}
	public void setChild_username(String child_username) {
		this.child_username = child_username;
	}
	public String getChild_age() {
		return child_age;
	}
	public void setChild_age(String child_age) {
		this.child_age = child_age;
	}
	public String getChild_gender() {
		return child_gender;
	}
	public void setChild_gender(String child_gender) {
		this.child_gender = child_gender;
	}
}
