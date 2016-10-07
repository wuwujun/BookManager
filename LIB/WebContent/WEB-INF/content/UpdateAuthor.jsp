<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Author</title>

<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,400italic,600,600italic,700,700italic,300italic,300'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Playfair+Display:400,400italic,700,700italic,900'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="CSS/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="CSS/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

</head>
<body
	style='background: url(Images/6.jpg) no-repeat; background-size: cover;'>

	<script
		src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script
		src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">

				<nav class="navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span><span
								class="icon-bar"></span><span class="icon-bar"></span><span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="Welcome">W-IND'</a>
					</div>
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="active"><a href="Welcome">Home</a></li>
							<li><a href="About">About</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li><a href="http://blog.csdn.net/sqq0103"><i
									class="fa fa-child" style="font-size: 24px"></i></a></li>
							<li><a href="https://github.com/wuwujun"><i
									class="fa fa-github" style="font-size: 24px"></i></a></li>
						</ul>
					</div>
				</nav>
				<br>
				<br>
				<br>
				<div class="updateauthor_table">
					
					<form action="UpdateAuthorAction" method="get" class="form-horizontal" role="form">
						<% String authorid = request.getParameter("author_id"); %>
						<!-- % String country = new String(request.getParameter("country").getBytes("ISO-8859-1"), "UTF-8"); %-->
						<% String country = request.getParameter("country"); %>
						<!-- % String name = new String(request.getParameter("name").getBytes("ISO-8859-1"), "UTF-8"); % -->
						<% String name = request.getParameter("name"); %>
						<% String age = request.getParameter("age"); %>
						<!--  % String title = new String(request.getParameter("title").getBytes("ISO-8859-1"), "UTF-8"); %-->
						<%String title = request.getParameter("title");%>
						
						<div class="form-group">
							<label class="col-sm-5 control-label"><font color="#424242">姓名</font></label>
							<div class="col-sm-3">
								<input type="text" class="form-control" name="author.name" value="<%=name%>" placeholder=<%=name%> required="required" autofocus>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-5 control-label"><font color="#424242">年龄</font></label>
							<div class="col-sm-3">
								<input type="text" class="form-control" name="author.age" value="<%=age%>" placeholder=<%=age%> required="required"> 
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-5 control-label"><font color="#424242">国家</font></label>
							<div class="col-sm-3">
								<input type="text" class="form-control" name="author.country" value="<%=country%>" placeholder=<%=country%> required="required"> 
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-sm-offset-5 col-sm-3">
								<button type="submit" class="btn-dark">提交</button>
							</div>
						</div>
						<input type="hidden" name="author.author_id" value="<%=authorid%>"> 
						<input type="hidden" name="title" value="<%=title%>"> 
					</form>
				</div>
			</div>
		</div>
	</div>

	


</body>
</html>