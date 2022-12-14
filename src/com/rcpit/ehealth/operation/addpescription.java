package com.rcpit.ehealth.operation;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.rcpit.ehealth.connect.ConnectDB;

/**
 * Servlet implementation class addpescription
 */
public class addpescription extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addpescription() {
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
	private String dbURL="jdbc:mysql://localhost:3306/ruralhealth";
	private String dbUser="root";
	private String dbPass="";
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		InputStream inputStream = null;
		
		Part filePart=request.getPart("photo");
		if(filePart !=null){
			System.out.println(filePart.getName());
			System.out.println(filePart.getSize());
			System.out.println(filePart.getContentType());
			
			inputStream=filePart.getInputStream();
			
		}
		Connection conn=null;
		String message=null;
		try
		{
			String doctor_id=UserInfo.getDid();
			
			conn=ConnectDB.connect();
			PreparedStatement ps1=conn.prepareStatement("insert into image values(?,?,?,?)");
			
			if(inputStream !=null)
			{
				ps1.setString(1, doctor_id);
				ps1.setBlob(2, inputStream );
				ps1.setInt(3, UserInfo.getpId());
				ps1.setString(4, UserInfo.getdName());
			}
			
			int row=ps1.executeUpdate();
			if(row>0)
			{
				message="File uploaded sucessfully!!!!";
			}
		}
		catch(SQLException e)
		{
			message="ERROR:"+e.getMessage();
		}
		finally
		{
			if (conn!=null){
				try
				{
					conn.close();
				}
				catch(SQLException e)
				{
					e.printStackTrace();
				}
			}
			request.setAttribute("Message", message);
			
			getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
		}
		
	}
}
