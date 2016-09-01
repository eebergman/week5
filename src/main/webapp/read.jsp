<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.byethursday.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, shrink-to-fit=no, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Erin's Zoo</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/simple-sidebar.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<body>

	<div id="wrapper">

		<!-- Sidebar -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><a href="index.html"> Erin's Zoo
				</a></li>
				<li><a href="read.jsp">Read</a></li>
				<li><a href="addtodb.html">Add</a></li>
				<li><a href="updatedb.html">Update</a></li>
				<li><a href="deletefromdb.html">Delete</a></li>
			</ul>
		</div>
		<!-- /#sidebar-wrapper -->

		<!-- Page Content -->
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">

						<h1>Erin's Zoo - Read</h1>

						<table style="width: 80%;">
							<tr>
								<th>Name</th>
								<th>Species</th>
								<th>Enclosure</th>
								<th>Food</th>
							</tr>

							<%
								DAO.readFromDB();
							%>

							<%
								//Animal readToJSP = new Animal();
								for (int i = 0; i < DAO.ourZoo.size(); i++) {
									Animal readToJSP = DAO.ourZoo.get(i);
							%>
							<tr>
								<td><%=readToJSP.getName()%></td>
								<td><%=readToJSP.getSpecies()%></td>
								<td><%=readToJSP.getEnclosure()%></td>
								<td><%=readToJSP.getFood()%></td>
							</tr>
							<%
								}
								DAO.ourZoo.clear();
							%>

						</table>

					</div>
				</div>
			</div>
		</div>
		<!-- /#page-content-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Menu Toggle Script -->
	<script>
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
		});
	</script>

</body>
</html>