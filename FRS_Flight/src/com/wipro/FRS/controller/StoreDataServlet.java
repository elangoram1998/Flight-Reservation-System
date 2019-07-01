package com.wipro.FRS.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wipro.FRS.bean.PassengerBean;
import com.wipro.FRS.dao.DAO;

public class StoreDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest      request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String flight_id=request.getParameter("flight_id");
		String date=request.getParameter("date");
		int adult=Integer.parseInt(request.getParameter("adult"));
		int child=Integer.parseInt(request.getParameter("child"));
		String[] adult_details=request.getParameterValues("adult username");
		String[] adult_age=request.getParameterValues("adult age");
		int temp=1;
		String adult_gender="";
		DAO dao=new DAO();
		String[] child_details=request.getParameterValues("child username");
		String[] child_age=request.getParameterValues("child age");
		String child_gender="";
		String adult_name="";
		String adultAge="";
		String child_name="";
		String childAge="";
		if(adult>0)
		{
			for(int i=0;i<adult;i++)
			{
				String str="adult gender"+temp;
				if(i==0)
				{
					adult_gender=request.getParameter(str);
				}
				else
				{
				adult_gender=adult_gender+" "+request.getParameter(str);
				}
				temp++;
			}
		for(int i=0;i<adult;i++)
		{
			if(i==0)
			{
				adult_name=adult_details[i];
			}
			else
			{
			adult_name=adult_name+" "+adult_details[i];
			}
		}
		for(int i=0;i<adult;i++)
		{
			if(i==0)
			{
			  adultAge=adult_age[i];
			}
			else
			{
			adultAge=adultAge+" "+adult_age[i];
			}
		}
		}
		if(child>0)
		{
			temp=1;
			for(int i=0;i<child;i++)
			{
				String str="child gender"+temp;
				if(i==0)
				{
					child_gender=request.getParameter(str);
				}
				else
				{
				child_gender=child_gender+" "+request.getParameter(str);
				}
				temp++;
			}
		for(int i=0;i<child;i++)
		{
			if(i==0)
			{
				child_name=child_details[i];
			}
			else
			{
			child_name=child_name+" "+child_details[i];
			}
		}
		for(int i=0;i<child;i++)
		{
			if(i==0)
			{
				childAge=child_age[i];
			}
			else
			{
			childAge=childAge+" "+child_age[i];
			}
		}
		}
		PassengerBean bean=new PassengerBean(username,flight_id,date,adult,child,adult_name,adultAge,adult_gender,child_name,childAge,child_gender);
		boolean flag=dao.insertPassenger(bean);
		if(flag)
		{
			request.setAttribute("username",username);
			RequestDispatcher rd=request.getRequestDispatcher("User_Page.jsp");
			rd.forward(request, response);
		}
	}

}
