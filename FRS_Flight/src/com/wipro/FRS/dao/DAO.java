package com.wipro.FRS.dao;

import java.sql.*;
import java.util.ArrayList;

import com.wipro.FRS.bean.*;
import com.wipro.FRS.db.DataBase;

public class DAO {
	
	Connection con=DataBase.getConn();
	public ArrayList<FlightBean> getFlightDetails_User(String from,String to,String date)
	{
		ArrayList<FlightBean> list=new ArrayList<FlightBean>();
		String query="select * from FRS_TBL_Flight where begin=? and end=? and flight_date=?";
		try
		{
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1,from);
			pst.setString(2,to);
			pst.setString(3,date);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				FlightBean flight_bean=new FlightBean();
				flight_bean.setFrom(rs.getString(1));
				flight_bean.setTo(rs.getString(2));
				flight_bean.setArival_time(rs.getString(3));
				flight_bean.setDeparture_time(rs.getString(4));
				flight_bean.setDate(rs.getString(5));
				flight_bean.setFlight_name(rs.getString(6));
				flight_bean.setFare(rs.getInt(7));
				flight_bean.setFlight_id(rs.getInt(8));
				list.add(flight_bean);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	public ArrayList<FlightBean> getFlightDetails_Admin()
	{
		ArrayList<FlightBean> list=new ArrayList<FlightBean>();
		String query="select * from FRS_TBL_Flight";
		try
		{
			PreparedStatement pst=con.prepareStatement(query);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				FlightBean flight_bean=new FlightBean();
				flight_bean.setFrom(rs.getString(1));
				flight_bean.setTo(rs.getString(2));
				flight_bean.setArival_time(rs.getString(3));
				flight_bean.setDeparture_time(rs.getString(4));
				flight_bean.setDate(rs.getString(5));
				flight_bean.setFlight_name(rs.getString(6));
				flight_bean.setFare(rs.getInt(7));
				flight_bean.setFlight_id(rs.getInt(8));
				list.add(flight_bean);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	public FlightBean getFlightDetail(int flight_id)
	{
		FlightBean bean=new FlightBean();
		String query="select * from FRS_TBL_Flight where id=?";
		try
		{
			PreparedStatement pst=con.prepareStatement(query);
			pst.setInt(1, flight_id);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				bean.setFrom(rs.getString(1));
				bean.setTo(rs.getString(2));
				bean.setArival_time(rs.getString(3));
				bean.setDeparture_time(rs.getString(4));
				bean.setDate(rs.getString(5));
				bean.setFlight_name(rs.getString(6));
				bean.setFare(rs.getInt(7));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return bean;
	}
	public RegisterBean validate(LoginBean bean)
	{
		RegisterBean e=new RegisterBean();
		String query="select * from FRS_TBL_Login where mobile_number=?";
		try
		{
		PreparedStatement pst=con.prepareStatement(query);
		pst.setString(1,bean.getUsername());
		ResultSet rs=pst.executeQuery();
		if(rs.next())
		{
			e.setFirstName(rs.getString(1));
			e.setLastName(rs.getString(2));
			e.setGender(rs.getString(3));
			e.setAge(rs.getInt(4));
			e.setMobileNo(rs.getString(5));
			e.setPassword(rs.getString(6));
			e.setType(rs.getString(7));
			e.setStatus(1);
		}
		con.close();
		}
		catch(Exception ex)
		{
			System.out.println("exception");
			ex.printStackTrace();
		}
		return e;
	}
	public boolean updateFlight(FlightBean bean)
	{
		int temp=0;
		String query="update FRS_TBL_Flight set begin=?,end=?,arraival=?,departure=?,flight_date=?,flight_name=?,fare=? where id=?";
		try
		{
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1,bean.getFrom());
			pst.setString(2, bean.getTo());
			pst.setString(3,bean.getArival_time());
			pst.setString(4, bean.getDeparture_time());
			pst.setString(5, bean.getDate());
			pst.setString(6,bean.getFlight_name());
			pst.setInt(7, bean.getFare());
			pst.setInt(8, bean.getFlight_id());
			temp=pst.executeUpdate();
			if(temp>0)
			{
				return true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	public boolean scheduleFlight(FlightBean bean)
	{
		int temp=0;
		String query="insert into FRS_TBL_Flight values(?,?,?,?,?,?,?,flight_id.nextval)";
		try
		{
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1,bean.getFrom());
			pst.setString(2, bean.getTo());
			pst.setString(3,bean.getArival_time());
			pst.setString(4, bean.getDeparture_time());
			pst.setString(5, bean.getDate());
			pst.setString(6,bean.getFlight_name());
			pst.setInt(7, bean.getFare());
			temp=pst.executeUpdate();
			if(temp>0)
			{
				return true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	public boolean insert(RegisterBean bean)
	{
		int temp=0;
		try
		{
			String query="insert into FRS_TBL_Login values(?,?,?,?,?,?,?,?)";
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1,bean.getFirstName());
			pst.setString(2,bean.getLastName());
			pst.setString(3,bean.getGender());
			pst.setInt(4,bean.getAge());
			pst.setString(5,bean.getMobileNo());
			pst.setString(6,bean.getPassword());
			pst.setString(7,bean.getType());
			pst.setInt(8,bean.getStatus());
			temp=pst.executeUpdate();
			con.close();
			if(temp>0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	public boolean changePassword(String username,String password)
	{
		int temp=0;
		String query="update FRS_TBL_Login set password=? where mobile_number=?";
		try
		{
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1,password);
			pst.setString(2,username);
			temp=pst.executeUpdate();
			if(temp>0)
			{
				return true;
			}
		}
		catch(Exception e)
		{
			System.out.println("here");
			e.printStackTrace();
		}
		return false;
	}
	public boolean insertPassenger(PassengerBean bean)
	{
		int temp=0;
		String query="insert into FRS_TBL_Passenger(username,flight_id,flight_date,adult,child,adult_name,adult_age,adult_gender,child_name,child_age,child_gender)values(?,?,?,?,?,?,?,?,?,?,?)";
		try
		{
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1, bean.getUsername());
			pst.setString(2, bean.getFlight_id());
			pst.setString(3, bean.getDate());
			pst.setInt(4, bean.getAdult());
			pst.setInt(5, bean.getChild());
			pst.setString(6, bean.getAdult_username());
			pst.setString(7,bean.getAdult_age());
			pst.setString(8, bean.getAdult_gender());
			pst.setString(9, bean.getChild_username());
			pst.setString(10, bean.getChild_age());
			pst.setString(11, bean.getChild_gender());
			temp=pst.executeUpdate();
			if(temp>0)
			{
				return true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	public ArrayList<PassengerBean> myBooking(String username)
	{
		ArrayList<PassengerBean>list=new ArrayList<PassengerBean>();
		String query="select * from FRS_TBL_Passenger where username=?";
		try
		{
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1,username);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				PassengerBean bean=new PassengerBean();
				bean.setUsername(rs.getString(1));
				bean.setFlight_id(rs.getString(2));
				bean.setDate(rs.getString(3));
				bean.setAdult(rs.getInt(4));
				bean.setChild(rs.getInt(5));
				bean.setAdult_username(rs.getString(6));
				bean.setAdult_age(rs.getString(7));
				bean.setAdult_gender(rs.getString(8));
				bean.setChild_username(rs.getString(9));
				bean.setChild_age(rs.getString(10));
				bean.setChild_gender(rs.getString(11));
				list.add(bean);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	public String getFlightName(String flight_id)
	{
		String flight_name="";
		String query="select flight_name from FRS_TBL_Flight where id=?";
		try
		{
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1, flight_id);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				flight_name=rs.getString(1);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return flight_name;
	}
	public boolean cancelFlight(String username,String date,String flight_id)
	{
		int temp=0;
		String query="delete from FRS_TBL_Passenger where username=? and flight_date=? and flight_id=?";
		try
		{
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1, username);
			pst.setString(2, date);
			pst.setString(3, flight_id);
			temp=pst.executeUpdate();
			if(temp>0)
			{
				return true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	public ArrayList<PassengerBean> passengerDetails(String flight_id,String flight_date)
	{
		ArrayList<PassengerBean>list=new ArrayList<PassengerBean>();
		String query="select * from FRS_TBL_Passenger where flight_id=? and flight_date=?";
		try
		{
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1, flight_id);
			pst.setString(2, flight_date);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				PassengerBean bean=new PassengerBean();
				bean.setUsername(rs.getString(1));
				bean.setAdult(rs.getInt(4));
				bean.setChild(rs.getInt(5));
				bean.setAdult_username(rs.getString(6));
				bean.setAdult_age(rs.getString(7));
				bean.setAdult_gender(rs.getString(8));
				bean.setChild_username(rs.getString(9));
				bean.setChild_age(rs.getString(10));
				bean.setChild_gender(rs.getString(11));
				list.add(bean);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	public String getUsername(String user_id)
	{
		String id="";
		String query="select firstname from FRS_TBL_Login where mobile_number=?";
		try
		{
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1, user_id);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				id=rs.getString(1);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return id;
	}
	public boolean checkUser(String mobile_number)
	{
		String query="select * from FRS_TBL_Login where mobile_number=?";
		try
		{
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1, mobile_number);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				return true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
}
