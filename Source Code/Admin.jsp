<%@page import="java.util.StringTokenizer"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="database.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%	
	if(session.isNew())
	{
		session.invalidate();
		response.sendRedirect("AdminLogin.jsp");
	}
	else
	{
		try
		{
			Connection con=new Conn().con;
			PreparedStatement ps=con.prepareStatement("SELECT Shop_Name, Address_Line, Locality, Shop_contact_details, Shop_Images FROM shop_details sd, shop_address sa, shop_images si WHERE sd.Shop_Number=sa.Shop_Number AND sd.Shop_Number=si.Shop_Number");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap CRUD Data Table for Database with Modal Form</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"
	type="text/javascript"></script>
<link href="Css/cssAdmin.css" rel="stylesheet">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// Activate tooltip
		$('[data-toggle="tooltip"]').tooltip();
		
		// Select/Deselect checkboxes
		var checkbox = $('table tbody input[type="checkbox"]');
		$("#selectAll").click(function(){
			if(this.checked){
				checkbox.each(function(){
					this.checked = true;                        
				});
			} else{
				checkbox.each(function(){
					this.checked = false;                        
				});
			} 
		});
		checkbox.click(function(){
			if(!this.checked){
				$("#selectAll").prop("checked", false);
			}
		});
	});

	function myFunction() {
		var input, filter, table, tr, td, i, txtValue;
		input = document.getElementById("myInput");
		filter = input.value.toUpperCase();
		table = document.getElementById("myTable");
		tr = table.getElementsByTagName("tr");
		for (i = 0; i < tr.length; i++) {
			td = tr[i].getElementsByTagName("td")[1];
			if (td) {
			txtValue = td.textContent || td.innerText;
			if (txtValue.toUpperCase().indexOf(filter) > -1) {
				tr[i].style.display = "";
			} else {
				tr[i].style.display = "none";
			}
			}       
		}
	}
</script>
</head>
<body>
	<div class="container">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>
							Manage <b>Shops</b>
						</h2>
					</div>
					<div class="col-sm-6">
						<a href="#addEmployeeModal" class="btn btn-success"
							data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add
								New Shop</span></a> <a href="#deleteEmployeeModal" class="btn btn-danger"
							data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>
					</div>
				</div>
			</div>

			<input type="text" id="myInput" onkeyup="myFunction()"
				placeholder="Search for names.." title="Type in a name">

			<table class="table table-striped table-hover" id="myTable">
				<thead>
					<tr>
						<th><span class="custom-checkbox"><input
								type="checkbox" id="selectAll"> <label for="selectAll"></label></span></th>
						<th>Name</th>
						<th>Address</th>
						<th>Phone</th>
						<th>Pictures Path</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<%
	ResultSet rs=ps.executeQuery();
	int i=0;
	while(rs.next())
	{
		i++;
%>
					<tr>
						<form action="modify" id="f<%=i %>">
						<td><span class="custom-checkbox">
						<input type="checkbox" id="checkbox1" name="options[]" value="<%=i%>">
						<label for="checkbox1"></label></span></td>
						<td><%=rs.getString("Shop_Name") %><input type="hidden" name="Shop_Name" value="<%=rs.getString("Shop_Name") %>"></td>
						<td><%=rs.getString("Address_Line") %><input type="hidden" name="Address_Line" value="<%=rs.getString("Address_Line") %>">, <%=rs.getString("Locality") %><input type="hidden" name="Locality" value="<%=rs.getString("Locality") %>"></td>
						<td><%=rs.getString("Shop_contact_details") %><input type="hidden" name="Shop_contact_details" value="<%=rs.getString("Shop_contact_details") %>"></td>
<%
	StringTokenizer st=new StringTokenizer(rs.getString("Shop_Images"),",");
%>
						<td><%while(st.hasMoreTokens()){out.println(st.nextToken()+",");} %></td>
						<td><a href="#editEmployeeModal" class="edit" data-toggle="modal" onclick="document.getElementById('name')='abc'"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
						<a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a></td>
						</form>
					</tr>
<%
	}
%>
					</tbody>
			</table>
			<div class="clearfix"></div>
		</div>
		<!-- Edit Modal HTML -->
		<div id="addEmployeeModal" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<form action="">
						<div class="modal-header">
							<h4 class="modal-title">Add Shop</h4>
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label>Name</label>
								<input type="text" class="form-control" required>
							</div>
							<div class="form-group">
								<label>Email</label>
								<input type="email" class="form-control" required>
							</div>
							<div class="form-group">
								<label>Address Line</label>
								<input type="text" class="form-control" required>
							</div>
							<div class="form-group">
								<label>Locality</label>
								<input type="text" class="form-control" required>
							</div>
							<div class="form-group">
								<label>Landmark</label>
								<input type="text" class="form-control" required>
							</div>
							<div class="form-group">
								<label>City</label>
								<input type="text" class="form-control" required>
							</div>
							<div class="form-group">
								<label>District</label>
								<input type="text" class="form-control" required>
							</div>
							<div class="form-group">
								<label>State</label>
								<input type="text" class="form-control" required>
							</div>
							<div class="form-group">
								<label>Pincode</label>
								<input type="number" class="form-control" required>
							</div>
							<div class="form-group">
								<label>Phone</label>
								<input type="text" class="form-control" required>
                        	</div>
							<div class="form-group">
								<label>Trader Name Prefix</label>
								<input type="text" class="form-control" required>
							</div>	
					 		<div class="form-group">
								<label>Trader First Name</label>
								<input type="text" class="form-control" required>
							</div>
					    	<div class="form-group">
								<label>Trader Last Name</label>
								<input type="text" class="form-control" required>
							</div>
							<div class="form-group">
								<label>Shop Category</label>
								<input type="text" class="form-control" required>
							</div>
							<div class="form-group">
								<label>Mode of Payment</label>
								<input type="text" class="form-control" required>
							</div>
							<div class="form-group">
								<label>Picture</label>
								<input type="file" class="form-control" required multiple>
							</div>
						</div>

						<div class="modal-footer">
							<input type="button" class="btn btn-default" data-dismiss="modal"
								value="Cancel"> <input type="submit"
								class="btn btn-success" value="Add">
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- Edit Modal HTML -->
		<div id="editEmployeeModal" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<form action="insert" method="post">
						<div class="modal-header">
							<h4 class="modal-title">Edit Employee</h4>
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label>Name</label> <input type="text" class="form-control" id="name"
									required>
							</div>
							<div class="form-group">
								<label>Email</label> <input type="email" class="form-control"
									required id="email">
							</div>
							<div class="form-group">
								<label>Address Line</label>
								<textarea class="form-control" required cols="" rows="" id="aline"></textarea>
							</div>
							<div class="form-group">
								<label>Locality</label>
								<textarea class="form-control" required cols="" rows="" id="locality"></textarea>
							</div>
							<div class="form-group">
								<label>Phone</label> <input type="number" class="form-control"
									required id="phone">
							</div>
							<div class="form-group">
								<label>Picture</label> <input type="file" class="form-control"
									required id="image">
							</div>
						</div>
						<div class="modal-footer">
							<input type="button" class="btn btn-default" data-dismiss="modal"
								value="Cancel"> <input type="submit"
								class="btn btn-info" value="Save">
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- Delete Modal HTML -->
		<div id="deleteEmployeeModal" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<form action="">
						<div class="modal-header">
							<h4 class="modal-title">Delete Employee</h4>
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
						</div>
						<div class="modal-body">
							<p>Are you sure you want to delete these Records?</p>
							<p class="text-warning">
								<small>This action cannot be undone.</small>
							</p>
						</div>
						<div class="modal-footer">
							<input type="button" class="btn btn-default" data-dismiss="modal"
								value="Cancel"> <input type="submit"
								class="btn btn-danger" value="Delete">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<%
		con.close();
	}
	catch(Exception e)
	{
%>
	<script type="text/javascript">
	alert('<%=e.getMessage()%>');
	</script>
<%
	}}
%>
<!-- <script type="text/javascript">
	document.getElementById('name').value="sas";
</script> -->
</html>