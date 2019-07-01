package com.wipro.FRS.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wipro.FRS.dao.DAO;

public class CancelBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String date=request.getParameter("date");
		String flight_id=request.getParameter("flight_id");
		DAO dao=new DAO();
		PrintWriter out=response.getWriter();
		if(dao.cancelFlight(username, date, flight_id))
		{
			request.setAttribute("username",username);
			RequestDispatcher rd=request.getRequestDispatcher("User_Page.jsp");
			rd.forward(request, response);
		}
	}
}
