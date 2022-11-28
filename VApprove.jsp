<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
       <%@page import = "java.sql.Connection"%> 
    <%@page import="com.connection.dbconnection" %>
    <%@page import="java.sql.PreparedStatement"%>
    <%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Dashboard - NiceAdmin Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin - v2.2.2
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ================================================-->
</head>
<body>
     <div class="card-body">
                  <h5 class="card-title">Request Pumps <span>| Today</span></h5>

                  <table class="table table-borderless datatable">
</head>
<body>
    <thead>
          <tr>
            <th>ID</th>
            <th>Pump_Name</th>
            <th>Address</th>
            <th>City</th>
            <th>Taluka</th>
            <th>District</th>
            <th>mobile_number</th>
            <th>Password</th>
            <th>OpenTime</th>
            <th>CloseTime</th>
            <th>Latitude</th>
            <th>Longitude</th>
            <th>Action</th>
            
            <%
				Connection con = dbconnection.connect();
				try
				{
					PreparedStatement ps1 = con.prepareStatement("select * from cngpump");
					ResultSet rs = ps1.executeQuery();
					String cls="active";
					while (rs.next())
					{
			%>
															    	
															    		 
															    		 
															    	
		<tr>
															    	    
															    		  
					<td><%=rs.getInt("id") %></td>
					<td><%=rs.getString("Pump_Name") %></td>
					<td><%=rs.getString("Address") %></td>
					<td><%=rs.getString("City") %></td>
					<td><%=rs.getString("Taluka") %></td>
					<td><%=rs.getString("District") %></td>
					<td><%=rs.getString("mobile_number") %></td>
					<td><%=rs.getString("Password") %></td>
					<td><%=rs.getString("OpenTime") %></td>
					<td><%=rs.getString("CloseTime") %></td>
					<td><%=rs.getString("latitude") %></td>
					<td><%=rs.getString("Longitude") %></td>
					<td><a href = "Approve.jsp?id=<%=rs.getInt("id") %>" >Approve</a></td>
					
															    		
															    		
															    		
		</tr>
															    	
			 <% 
					}
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
			%>
           
            
          </tr>
        </thead>
 
      </table>
    </div>
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.min.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
   
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
</body>
</html>