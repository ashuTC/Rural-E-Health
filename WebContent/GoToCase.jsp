<%@page import="com.rcpit.ehealth.operation.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %>
 <%@ page import="com.rcpit.ehealth.connect.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
              <li class="header">Arogya Panel</li>
              <li class="treeview">
                <a href="AddCase.jsp">
                <i class="fa fa-edit"></i> <span>Add Case</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                
              </li>
			  <li class="treeview">
                <a href="#">
                <i class="fa fa-table"></i> <span>Add Comment</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                
              </li>
              <li class="treeview">
                <a href="viewAllPCase.jsp">
                <i class="fa fa-table"></i> <span>View Comment</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                
              </li>
              
              
			  
              
              
              
              
              
              
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
				<h2 class="title1">View Case</h2>
				<div class="form-body">
							<form  action="GoToCase.jsp" >
							<div class="form-group"> 
							<label for="exampleInputEmail1">Patient Id</label> 
							<input type="name" class="form-control" id="exampleInputEmail1" name="pid" placeholder="Enter Patient ID"> 
							</div> 
							<div class="form-group"> 
							<label for="exampleInputEmail1">Patient Name</label> 
							<input type="name" class="form-control" id="exampleInputEmail1" name="pname" placeholder="Enter Patient Name"> 
							</div> 
							
							 
							 <button type="submit" class="btn btn-default">View</button>
							 
							 <h2 class="title1">Case Detail:</h2>
				<table style="width:100%" border="1" cellpadding="5" cellspacing="5">
				<tr>
				<th>PId</th>
				<th>Name</th>
				<th>Age</th>
				<th>Gender</th>
				<th>Contact</th>
				<th>Address</th>
				<th>Email</th>
				<th>Symptom 1</th>
				<th>Symptom 2</th>
				<th>Symptom 3</th>
				<th>Symptom 4</th>
				<th>Doctor Name</th>
				<th>PDisease</th>
				</tr>
<%
String Pid=request.getParameter("pid");
String Pname=request.getParameter("pname");

Connection con=ConnectDB.connect();
try
{
	PreparedStatement ps1=con.prepareStatement("select * from patientdetail where Pid=? and Pname=?");
	ps1.setString(1, Pid);
	ps1.setString(2, Pname);
	 ResultSet rs1=ps1.executeQuery();
	 while(rs1.next())
	 {
		 System.out.println(" hii patients yaha hai");
%>				
          <tr>
            <td><%=rs1.getInt("Pid") %></td>
            <td><%=rs1.getString("Pname") %></td>

            <td><%=rs1.getString("Page") %></td>

            <td><%=rs1.getString("Pgender") %></td>

            <td><%=rs1.getString("Pcontact") %></td>

            <td><%=rs1.getString("Paddress") %></td>
            
            <td><%=rs1.getString("Pemail") %></td>

            <td><%=rs1.getString("Symptom_1") %></td>
            
            <td><%=rs1.getString("Symptom_2") %></td>
            
            <td><%=rs1.getString("Symptom_3") %></td>
            
            <td><%=rs1.getString("Symptom_4") %></td>
            
            <td><%=rs1.getString("Dname") %></td>
            
            <td><%=rs1.getString("Pdisease") %></td>
            
            

            
         </tr> 
<%    


}
	 UserInfo.setpId(rs1.getInt("Pid"));
	 UserInfo.setdName(rs1.getString("Dname"));
}
catch(Exception e)
{
	e.printStackTrace();
}
%> 
				</table>
				
							 </form> 
							 <div>
							 
							 <br>
				<button type="button" ><a href="AddCommentA.jsp">Comment</a></button>
				<button type="button" ><a href="#">Prescription</a></button>
				</div>
							 
						</div>
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