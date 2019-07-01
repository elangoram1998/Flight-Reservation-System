package com.wipro.FRS.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wipro.FRS.dao.DAO;

public class ChangePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password1");
		DAO dao=new DAO();
		if(dao.changePassword(username,password))
		{
			RequestDispatcher rd=request.getRequestDispatcher("Admin_Page.jsp");
			rd.forward(request, response);
		}
	}
}
