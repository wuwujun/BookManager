<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Search Result</title>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,400italic,600,600italic,700,700italic,300italic,300' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,400italic,700,700italic,900' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="CSS/bootstrap-3.3.7-dist/css/bootstrap.min.css"> 
<link rel="stylesheet" href="CSS/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<style  type="text/css">
.bigtable{padding: 60px;}
a:hover { color:#1C1C1C; text-decoration: none} 
</style>


</head>
<body style='background:url(Images/6.jpg) no-repeat; background-size: cover;'>

	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
			
				<nav class="navbar navbar-default" role="navigation">
					<div class="navbar-header">
						 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="Welcome">W-IND'</a>
					</div>
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="active"><a href="Welcome">Home</a></li>
							<li><a href="About">About</a></li>
							<li><a href="Search">Return</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li><a href="http://blog.csdn.net/sqq0103"><i class="fa fa-child" style="font-size:24px"></i></a></li>
							<li>
							  <a href="https://github.com/wuwujun"><i class="fa fa-github" style="font-size:24px"></i></a>
							</li>
						</ul>
					</div>
				</nav>
				
				<div class="bigtable" align="center">
					<table>
						<tr>
							<th><h3 class="text-center"><font color="#084B8A"><strong>作品列表</strong></font></h3></th>
						</tr>
						<s:iterator value="bookTitle">
						<tr>
							<th><h4 class="text-center"><a href="ShowDetails?search_bookname=${title}"><s:property value="title"/></a></h4></th>
						</tr>
						</s:iterator>
					</table>
				</div>
				
			</div>
		</div>
	</div>

</body>
</html>


