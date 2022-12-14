package com.rcpit.ehealth.operation;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rcpit.ehealth.connect.*;;

/**
 * Servlet implementation class AddArogyaUsers
 */
public class AddArogyaUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddArogyaUsers() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		int aid=0;
		String name=request.getParameter("aname");
		String email=request.getParameter("aemail");
		String mobile=request.getParameter("amob");
		String password=request.getParameter("apass");
		String village=request.getParameter("avillage");
		String district=request.getParameter("adistrict");
		//String email=request.getParameter("email");
		
		try
		{
		
		Connection con=ConnectDB.connect();
		PreparedStatement ps1=con.prepareStatement("insert into arogyavibhag values(?,?,?,?,?,?,?)");
		ps1.setInt(1, aid);
		ps1.setString(2, name);
		ps1.setString(3, email);
		ps1.setString(4, mobile);
		ps1.setString(5, password);
		ps1.setString(6, village);
		ps1.setString(7, district);
		
		int i =ps1.executeUpdate();
		if(i>0)
		{
		
			response.sendRedirect("AdminDisplay.html");
		}
		else
		{
			response.sendRedirect("404.html");
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		

	}

}
