package com.wipro.FRS.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wipro.FRS.bean.LoginBean;
import com.wipro.FRS.bean.RegisterBean;
import com.wipro.FRS.dao.DAO;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		PrintWriter out=response.getWriter();
		LoginBean bean=new LoginBean(username,password);
		DAO dao=new DAO();
		RegisterBean b=dao.validate(bean);
		if(b.getType()=="" || b.getType()==null)
		{
			request.setAttribute("errMsg", "username and password are incorrect");
		    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
		    rd.forward(request, response); 
		}
		else if(b.getType().equals("admin") && password.equals(b.getPassword()))
		{
			request.setAttribute("username",username);
			RequestDispatcher rd=request.getRequestDispatcher("Admin_Page.jsp");
			rd.forward(request, response);
		}
		else if(b.getType().equals("user") && password.equals(b.getPassword()))
		{
			request.setAttribute("username",username);
			RequestDispatcher rd=request.getRequestDispatcher("User_Page.jsp");
			rd.forward(request, response);
		}
		else
		{
			request.setAttribute("errMsg", "username and password are incorrect");
		    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
		    rd.forward(request, response);
		}
	}
}
