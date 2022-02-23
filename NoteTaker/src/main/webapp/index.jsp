<!doctype html>
<html lang="en">
<head>
<title>Note Taker | Home Page</title>
<%@include file="all_js_css.jsp"%>
<link href="css/style.css" rel="stylesheet" />

<style type="text/css">
body {
	background: #dcd3e3;
}
</style>

</head>
<body class="bodyColor">
	<div class="container">

		<!-- navbar -->
		<%@include file="navbar.jsp"%>
		<br>
		<div class="container text-white text-center">
		
		<h1>Welcome To Note Taker</h1>
		
		</div>
		
        <!-- jumbotron start -->

		<div class="jumbotron jumbotron-fluid" Style="border-radius:15px;">
			<div class="container">
				<h1 class="display-4">Note Taker</h1>
				<p class="lead">Note Take is web based application which stores user information in the mysql database.
				It provides the functionalities like adding new note , updating exesting note and deleting note.Technology used
				in this web apps are servlet, hibernate, jsp, mysql etc.</p>
			</div>
		</div>

		<!-- jumbotron end -->

		<div class="container">
			<!-- slider start -->


			<!-- slider end -->
		</div>

	</div>

</body>
</html>