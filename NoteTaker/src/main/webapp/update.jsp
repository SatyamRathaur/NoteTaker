<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Page | Note Taker</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">

		<!-- navbar -->
		<%@include file="navbar.jsp"%>
		<br>
		<h1>Update Details:</h1>
		
		<%
		  int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		  Session s = FactoryProvider.getFactory().openSession();
		  
		  Note note = s.get(Note.class, noteId);
		  
		  
		  s.close();
		%>
		
		 <!-- form start -->

		<form action="UpdateNoteServlet" method="post" Style="background:#e6e9ed;">
			
			<div class="form-group">
				<label for="id">Note ID</label> <input
					name="id" type="text" class="form-control" id="id"
					aria-describedby="emailHelp" value="<%= note.getId() %>" required  readonly>
			</div>
			
			<div class="form-group">
				<label for="title">Note Title</label> <input
					name="title" type="text" class="form-control" id="title"
					aria-describedby="emailHelp" value="<%= note.getTitle() %>" required >
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				 <textarea class="form-control" name="content" id="content"  required Style="height:200px;"><%= note.getContent() %></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Update</button>
			</div>
			
		</form>

		<!-- form end -->

	</div>
</body>
</html>