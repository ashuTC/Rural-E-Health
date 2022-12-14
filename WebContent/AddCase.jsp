<%@page import="com.rcpit.ehealth.operation.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
 <%@ page import="com.rcpit.ehealth.connect.*" %>

<!DOCTYPE HTML>
<html>
<head>
<title>Glance Design Dashboard an Admin Panel Category Flat Bootstrap Responsive Website Template | Blank Page :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Glance Design Dashboard Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />

<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />

<!-- font-awesome icons CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons CSS -->

 <!-- side nav css file -->
 <link href='css/SidebarNav.min.css' media='all' rel='stylesheet' type='text/css'/>
 <!-- side nav css file -->
 
 <!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>

<!--webfonts-->
<link href="//fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext" rel="stylesheet">
<!--//webfonts--> 

<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
<!--//Metis Menu -->

</head> 
<body class="cbp-spmenu-push">
	<div class="main-content">
	<div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
		<!--left-fixed -navigation-->
		<aside class="sidebar-left">
      <nav class="navbar navbar-inverse">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".collapse" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <h1><a class="navbar-brand" href="index.html"><span class="fa fa-area-chart"></span> Rural<span class="dashboard_text">E-Health</span></a></h1>
          </div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="sidebar-menu">
              <li class="header">AROGYA PANEL</li>
              <li class="treeview">
                <a href="AddCase.jsp">
                <i class="fa fa-edit"></i> <span>Add Case</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                
              </li>
              
			  <li class="treeview">
                <a href="viewAllPCasejsp.jsp">
                <i class="fa fa-table"></i> <span>View All Case</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                
              </li>
              
              <li class="treeview">
                <a href="GoToCase.jsp">
                <i class="fa fa-table"></i> <span>View  Case</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                
              </li>
              
              <li class="treeview">
                <a href="GoToCase.jsp">
                <i class="fa fa-table"></i> <span>Add Comment</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                
              </li>
              
              <li class="treeview">
                <a href="#">
                <i class="fa fa-table"></i> <span>View Prescription</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                
              </li>
              
              
              <li class="header">LABELS</li>
              <li><a href="LoginAdmin.html"><i class="fa fa-angle-right text-red"></i> <span>Admin Login</span></a></li>
              <li><a href="LoginArogyaVibhag.html"><i class="fa fa-angle-right text-yellow"></i> <span>Arogya Login</span></a></li>
              <li><a href="LoginDoctors.html"><i class="fa fa-angle-right text-aqua"></i> <span>Doctor Login</span></a></li>
            </ul>
          </div>
          <!-- /.navbar-collapse -->
      </nav>
    </aside>
	</div>
		<!--left-fixed -navigation-->
		
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				
				<!--toggle button start-->
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<!--toggle button end-->
				<div class="profile_details_left"><!--notifications of menu start -->
					<ul class="nofitications-dropdown">
						<li class="dropdown head-dpdn">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-envelope"></i><span class="badge">4</span></a>
							<ul class="dropdown-menu">
								<li>
									<div class="notification_header">
										<h3>You have 3 new messages</h3>
									</div>
								</li>
								<li><a href="#">
								   <div class="user_img"><img src="images/1.jpg" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet</p>
									<p><span>1 hour ago</span></p>
									</div>
								   <div class="clearfix"></div>	
								</a></li>
								<li class="odd"><a href="#">
									<div class="user_img"><img src="images/4.jpg" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet </p>
									<p><span>1 hour ago</span></p>
									</div>
								  <div class="clearfix"></div>	
								</a></li>
								<li><a href="#">
								   <div class="user_img"><img src="images/3.jpg" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet </p>
									<p><span>1 hour ago</span></p>
									</div>
								   <div class="clearfix"></div>	
								</a></li>
								<li>
									<div class="notification_bottom">
										<a href="#">See all messages</a>
									</div> 
								</li>
							</ul>
						</li>
						<li class="dropdown head-dpdn">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">4</span></a>
							<ul class="dropdown-menu">
								<li>
									<div class="notification_header">
										<h3>You have 3 new notification</h3>
									</div>
								</li>
								<li><a href="#">
									<div class="user_img"><img src="images/4.jpg" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet</p>
									<p><span>1 hour ago</span></p>
									</div>
								  <div class="clearfix"></div>	
								 </a></li>
								 <li class="odd"><a href="#">
									<div class="user_img"><img src="images/1.jpg" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet </p>
									<p><span>1 hour ago</span></p>
									</div>
								   <div class="clearfix"></div>	
								 </a></li>
								 <li><a href="#">
									<div class="user_img"><img src="images/3.jpg" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet </p>
									<p><span>1 hour ago</span></p>
									</div>
								   <div class="clearfix"></div>	
								 </a></li>
								 <li>
									<div class="notification_bottom">
										<a href="#">See all notifications</a>
									</div> 
								</li>
							</ul>
						</li>	
						<li class="dropdown head-dpdn">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue1">8</span></a>
							<ul class="dropdown-menu">
								<li>
									<div class="notification_header">
										<h3>You have 8 pending task</h3>
									</div>
								</li>
								<li><a href="#">
									<div class="task-info">
										<span class="task-desc">Database update</span><span class="percentage">40%</span>
										<div class="clearfix"></div>	
									</div>
									<div class="progress progress-striped active">
										<div class="bar yellow" style="width:40%;"></div>
									</div>
								</a></li>
								<li><a href="#">
									<div class="task-info">
										<span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
									   <div class="clearfix"></div>	
									</div>
									<div class="progress progress-striped active">
										 <div class="bar green" style="width:90%;"></div>
									</div>
								</a></li>
								<li><a href="#">
									<div class="task-info">
										<span class="task-desc">Mobile App</span><span class="percentage">33%</span>
										<div class="clearfix"></div>	
									</div>
								   <div class="progress progress-striped active">
										 <div class="bar red" style="width: 33%;"></div>
									</div>
								</a></li>
								<li><a href="#">
									<div class="task-info">
										<span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
									   <div class="clearfix"></div>	
									</div>
									<div class="progress progress-striped active">
										 <div class="bar  blue" style="width: 80%;"></div>
									</div>
								</a></li>
								<li>
									<div class="notification_bottom">
										<a href="#">See all pending tasks</a>
									</div> 
								</li>
							</ul>
						</li>	
					</ul>
					<div class="clearfix"> </div>
				</div>
				<!--notification menu end -->
				<div class="clearfix"> </div>
			</div>
			<div class="header-right">
				
				
				
				
				<div class="profile_details">		
					<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">	
									<span class="prfil-img"><img src="images/2.jpg" alt=""> </span> 
									<div class="user-name">
										<p>Arogya</p>
										<span>Administrator</span>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>	
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								 
								<li> <a href="LoginAdmin.html"><i class="fa fa-sign-out"></i> Logout</a> </li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>				
			</div>
			<div class="clearfix"> </div>	
		</div>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<h2 class="title1">Case Form:</h2>
				<form>
				<div class="form-group">
				<label for="exampleInputEmail1">Patient Name</label>
				<input type="text"  class="form-control" name="Pname" placeholder="Name">
				</div>
				<div class="form-group">
				<label for="exampleInputEmail1">Patient Age</label>
				<input type="text"  class="form-control" name="Page" placeholder="Age">
				</div>
				<div class="form-group">
				<label for="exampleInputEmail1">Patient Gender</label>
				<input type="text"  class="form-control" name="Pgender" placeholder="Gender">
				</div>
				
					
				<div class="form-group"> 
							<label >Contact Number</label> 
							<input type="number" class="form-control"  name="Pcontact" placeholder=" Enter Patient Contact"> 
							</div>
				<div class="form-group"> 
							<label for="exampleInputEmail1">Patient address</label> 
							<input type="name" class="form-control" id="exampleInputEmail1"  name="Paddress" placeholder="Enter Patient Address"> 
							</div>
				<div class="form-group"> 
							<label for="exampleInputEmail1">Patient Email</label> 
							<input type="name" class="form-control" id="exampleInputEmail1"  name="Pemail" placeholder="Enter Patient Email"> 
							</div>
							<div  class="form-control">
							
			    		
				<label>Sympton_1</label>
			<select name=Symptom1>
			<% 
			try
			{
				Connection con =ConnectDB.connect();
				PreparedStatement pstmt = con.prepareStatement("select distinct Symptom_1,Symptom_2,Symptom_3, Symptom_4 from dataset");
				ResultSet rs = pstmt.executeQuery();
				while(rs.next())
				{
					
				%>
				
				<option value="<%= rs.getString("Symptom_1")%>" ><%=rs.getString("Symptom_1")%></option>
				<%
				}
				%>
			
				
				</select>
				
				<label>Sympton_2</label>
				<select name=Symptom2>
				<%
				ResultSet rs2 = pstmt.executeQuery();
				while(rs2.next())
				{
					
				%>
				<option value="<%= rs2.getString("Symptom_2")%>" ><%=rs2.getString("Symptom_2")%></option>
				<%
				}
				%>
				</select>
				
				<label>Sympton_3</label>
				<select name=Symptom3>
				<%
				ResultSet rs3 = pstmt.executeQuery();
				while(rs3.next())
				{
					
				%>
				<option value="<%= rs3.getString("Symptom_3")%>" ><%=rs3.getString("Symptom_3")%></option>
				<%
				}
				%>
				</select>
				
				<label>Sympton_4</label>
				<select name=Symptom4>
				<%
				ResultSet rs4 = pstmt.executeQuery();
				while(rs4.next())
				{
					
				%>
				<option value="<%= rs4.getString("Symptom_4")%>" ><%=rs4.getString("Symptom_4")%></option>
				<%
				}
				%>
				</select>
				
				<%
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}%>
				
			
			<%
			String Pname = request.getParameter("Pname");
			String Page = request.getParameter("Page");
			String Pgender = request.getParameter("Pgender");
			String Pcontact = request.getParameter("Pcontact");
			String Paddress = request.getParameter("Paddress");
			String Pemail = request.getParameter("Pemail");
			String PSymptom1 = request.getParameter("Symptom1");
			String PSymptom2 = request.getParameter("Symptom2");
			String PSymptom3 = request.getParameter("Symptom3");
			String PSymptom4 = request.getParameter("Symptom4");
			int Did = 0;
			String Pdisease="";
			
			
			
		try{
			Connection con = ConnectDB.connect();
			PreparedStatement pstmt = con.prepareStatement("select * from dataset where Symptom_1 = ? and Symptom_2 = ? and Symptom_3 = ? and Symptom_4 = ?");
			pstmt.setString(1, PSymptom1);
			pstmt.setString(2, PSymptom2);
			pstmt.setString(3, PSymptom3);
			pstmt.setString(4, PSymptom4);
			ResultSet resultSet = pstmt.executeQuery();
			while(resultSet.next())
			{
				Pdisease = resultSet.getString(1);
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		String Doctor="";
		try
		{
			Connection con =ConnectDB.connect();
			PreparedStatement pstmt = con.prepareStatement("select * from specialistdoctor where diseasedtreat=?");
			pstmt.setString(1, Pdisease);
			
			ResultSet resultSet = pstmt.executeQuery();
			while(resultSet.next())
			{
				Doctor=resultSet.getString(2);
				System.out.println(Doctor);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
			
			int aid=UserInfo.getaId();
			int Pid = 0;
			
			try
			{
				Connection con =ConnectDB.connect();
				PreparedStatement pstmt = con.prepareStatement("insert into patientdetail values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
				
				pstmt.setInt(1, Pid);
				pstmt.setString(2, Pname);
				pstmt.setString(3, Page);
				pstmt.setString(4, Pgender);
				pstmt.setString(5, Pcontact);
				pstmt.setString(6, Paddress);
				pstmt.setString(7, Pemail);
				pstmt.setString(8, PSymptom1);
				pstmt.setString(9, PSymptom2);
				pstmt.setString(10, PSymptom3);
				pstmt.setString(11, PSymptom4);
				pstmt.setString(12, Doctor);
				pstmt.setString(13,Pdisease);
				int i = pstmt.executeUpdate();
				
				if(i>0)
				{
					System.out.println("Case added created succesfully ");
					response.sendRedirect("Addcase.jsp");
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
			
				
				
		   
		    
			
			%>
					
				</div>
				 <button type="submit" class="btn btn-default">Submit</button>
				</form>
				
			</div>
		</div>
		<!--footer-->
		<div class="footer">
		   <p>&copy; 2022 Rural E-Health. All Rights Reserved | Design by <a href="" target="_blank"></a></p>
	   </div>
        <!--//footer-->
	</div>
	
	<!-- side nav js -->
	<script src='js/SidebarNav.min.js' type='text/javascript'></script>
	<script>
      $('.sidebar-menu').SidebarNav()
    </script>
	<!-- //side nav js -->
	
	<!-- Classie --><!-- for toggle left push menu script -->
		<script src="js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			
			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!-- //Classie --><!-- //for toggle left push menu script -->
	
	<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	
	<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.js"> </script>
   
</body>
</html>