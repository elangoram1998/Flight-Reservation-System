package com.wipro.FRS.bean;

public class FlightBean {
	private String from;
	private String to;
	private String arival_time;
	private String departure_time;
	private String date;
	private String flight_name;
	private int fare;
	private int flight_id;
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public FlightBean(String from,String to, String arival_time, String departure_time, String date,
			String flight_name, int fare,int flight_id) {
		super();
		this.from = from;
		this.to = to;
		this.arival_time = arival_time;
		this.departure_time = departure_time;
		this.date = date;
		this.flight_name = flight_name;
		this.fare = fare;
		this.flight_id=flight_id;
	}
	public FlightBean(String from,String to, String arival_time, String departure_time, String date,
			String flight_name, int fare) {
		super();
		this.from = from;
		this.to = to;
		this.arival_time = arival_time;
		this.departure_time = departure_time;
		this.date = date;
		this.flight_name = flight_name;
		this.fare = fare;
	}
	public FlightBean() {
		super();
		
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getArival_time() {
		return arival_time;
	}
	public void setArival_time(String arival_time) {
		this.arival_time = arival_time;
	}
	public String getDeparture_time() {
		return departure_time;
	}
	public void setDeparture_time(String departure_time) {
		this.departure_time = departure_time;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getFlight_name() {
		return flight_name;
	}
	public void setFlight_name(String flight_name) {
		this.flight_name = flight_name;
	}
	public int getFare() {
		return fare;
	}
	public void setFare(int fare) {
		this.fare = fare;
	}
	public int getFlight_id() {
		return flight_id;
	}
	public void setFlight_id(int flight_id) {
		this.flight_id = flight_id;
	}
}
