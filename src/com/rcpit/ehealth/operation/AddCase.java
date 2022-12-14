package com.rcpit.ehealth.operation;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rcpit.ehealth.connect.ConnectDB;

/**
 * Servlet implementation class AddCase
 */
public class AddCase extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCase() {
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
		int pid=0;
		String name=request.getParameter("pname");
		String age=request.getParameter("page");
		String gender=request.getParameter("pgender");
		String address=request.getParameter("paddress");
		String mobile=request.getParameter("pmob");
		String symptom1=request.getParameter("psymptom1");
		String symptom2=request.getParameter("psymptom2");
		String symptom3=request.getParameter("psymptom3");
		try
		{
		
		Connection con=ConnectDB.connect();
		PreparedStatement ps1=con.prepareStatement("insert into patientdetail values(?,?,?,?,?,?,?,?,?)");
		ps1.setInt(1, pid);
		ps1.setString(2, name);
		ps1.setString(3, age);
		ps1.setString(4, gender);
		ps1.setString(5, address);
		ps1.setString(6, mobile);
		ps1.setString(7, symptom1);
		ps1.setString(8, symptom2);
		ps1.setString(9, symptom3);
		int i =ps1.executeUpdate();
		if(i>0)
		{
		
			response.sendRedirect("ArogyaDisplay.html");
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
