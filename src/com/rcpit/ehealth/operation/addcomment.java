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
 * Servlet implementation class addcomment
 */
public class addcomment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addcomment() {
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
		String comment=request.getParameter("com");
		Connection con=ConnectDB.connect();
		try
		{
			PreparedStatement ps1=con.prepareStatement("insert into comment value(?,?,?)");
			ps1.setInt(1, UserInfo.getpId());
			System.out.println(UserInfo.getpId());
			ps1.setString(2, UserInfo.getdName());
			ps1.setString(3, comment);
			
			int i=ps1.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("AddCommentA.jsp");
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
