package com.wipro.FRS.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wipro.FRS.bean.RegisterBean;
import com.wipro.FRS.dao.DAO;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstname=request.getParameter("first name");
		String lastname=request.getParameter("last name");
		String gender=request.getParameter("gender");
		int age=Integer.parseInt(request.getParameter("age"));
		String mobile_number=request.getParameter("mobile number");
		String password=request.getParameter("password");
		String type="user";
		int status=0;
		RegisterBean bean=new RegisterBean(firstname,lastname,gender,age,mobile_number,password,type,status);
		DAO dao=new DAO();
		if(dao.checkUser(mobile_number))
		{
			request.setAttribute("errMsg", "already registerd");
		    RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
		    rd.forward(request, response);
		}
		else
		{
		if(dao.insert(bean))
		{
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
		else
		{
			request.setAttribute("errMsg", "not registerd");
		    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
		    rd.forward(request, response); 
		}
		}
	}

}
