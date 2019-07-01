package com.wipro.FRS.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wipro.FRS.bean.FlightBean;
import com.wipro.FRS.dao.DAO;
import java.util.*;
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String from=request.getParameter("begin");
		String to=request.getParameter("end");
		String departure=request.getParameter("departure");
		String arrival=request.getParameter("arrival");
		String date=request.getParameter("date");
		String flight_name=request.getParameter("flight_name");
		int fare=Integer.parseInt(request.getParameter("fare"));
		int flight_id=Integer.parseInt(request.getParameter("flight_id"));
		FlightBean bean=new FlightBean(from,to,departure,arrival,date,flight_name,fare,flight_id);
		DAO dao=new DAO();
		if(dao.updateFlight(bean))
		{
			RequestDispatcher rd=request.getRequestDispatcher("Admin_Page.jsp");
			rd.forward(request, response);
		}
	}

}
