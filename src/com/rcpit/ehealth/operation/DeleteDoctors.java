package com.rcpit.ehealth.operation;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rcpit.ehealth.connect.ConnectDB;

/**
 * Servlet implementation class DeleteDoctors
 */
public class DeleteDoctors extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteDoctors() {
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
		int did=Integer.parseInt(request.getParameter("did"));
		String name=request.getParameter("dname");
		try
		{
			Connection con=ConnectDB.connect();
			PreparedStatement ps1=con.prepareStatement("select * from specialistdoctor where did=? and name=? ");
			ps1.setInt(1, did);
			ps1.setString(2, name);
			
			ResultSet rs=ps1.executeQuery();
			while(rs.next())
			{
				name=rs.getString(2);
			}
			PreparedStatement ps2=con.prepareStatement("delete from specialistdoctor where did=? and name=? ");
			ps2.setInt(1, did);
			ps2.setString(2, name);
			int res=ps2.executeUpdate();
			if(res>0)
			{
				response.sendRedirect("deletedoctors.html");
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
