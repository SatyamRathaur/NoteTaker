<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Note | Note Taker</title>

<%@include file="all_js_css.jsp" %>
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
		 <h1 class="text-center">Enter Note Details</h1>
		 
		 <!-- form start -->

		<form action="saveNoteServlet" method="post" Style="background:#e6e9ed;">
			<div class="form-group">
				<label for="title">Note Title</label> <input
					name="title" type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter title" required >
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				 <textarea class="form-control" name="content" id="content" placeholder="Enter Content" required Style="height:200px;"></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
			
		</form>

		<!-- form end -->
		 
	</div>
	
	

</body>
</html>