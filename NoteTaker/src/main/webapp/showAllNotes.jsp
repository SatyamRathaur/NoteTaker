<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes | Note Taker </title>

<%@include file="all_js_css.jsp"%>
<link href="css/style.css" rel="stylesheet" />

<style type="text/css">

body{
	background: #dcd3e3;
}

</style>

</head>
<body class="bodyColor">
	<div class="container">
		<!-- navbar -->
		<%@include file="navbar.jsp"%>
		<br>
		<h1>All Notes:</h1>

		<div class="row">
			<div class="col-md-12">

				<%
				Session s = FactoryProvider.getFactory().openSession();

				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>

				<div class="card mt-3" Style="background:#e6e9ed;">
					<img class="card-img-top m-3" Style="max-width:50px;" src="img/notes.png" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%= note.getTitle() %></h5>
						<p class="card-text"><%= note.getContent() %></p>
						<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
						<a href="update.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a>
					</div>
				</div>

				<%
				}

				s.close();
				%>

			</div>

		</div>
	</div>

</body>
</html>