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
 * Servlet implementation class AddDoctors
 */
public class AddDoctors extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDoctors() {
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
		int did=0;
		String name=request.getParameter("dname");
		String email=request.getParameter("demail");
		String mobile=request.getParameter("dmob");
		String password=request.getParameter("dpass");
		String city=request.getParameter("dcity");
		String spec=request.getParameter("dspec");
		String diseasedt=request.getParameter("ddiseasedtreat");
		try
		{
			Connection con=ConnectDB.connect();
			PreparedStatement ps1=con.prepareStatement("insert into specialistdoctor values(?,?,?,?,?,?,?,?)");
			ps1.setInt(1, did);
			ps1.setString(2, name);
			ps1.setString(3, email);
			ps1.setString(4, mobile);
			ps1.setString(5, password);
			ps1.setString(6, city);
			ps1.setString(7, spec);
			ps1.setString(8, diseasedt);
			int i =ps1.executeUpdate();
			if(i>0)
			{
			
				response.sendRedirect("Adddoctors.html");
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
