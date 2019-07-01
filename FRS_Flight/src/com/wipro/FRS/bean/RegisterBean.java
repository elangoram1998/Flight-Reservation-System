package com.wipro.FRS.bean;

public class RegisterBean {
	private String firstName;
	private String lastName;
	private String gender;
	private int age;
	private String mobileNo;
	private String password;
	private String type;
	private int status;
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public RegisterBean() {
		super();
		
	}
	public RegisterBean(String firstName, String lastName, String gender, int age, String mobileNo, String password,
			String type, int status) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.age = age;
		this.mobileNo = mobileNo;
		this.password = password;
		this.type = type;
		this.status = status;
	}
	
	
}
