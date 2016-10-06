<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About Page</title>
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
	style='background: url(Images/12.jpg) no-repeat; background-size: cover;'>

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
			</div>
		</div>
	</div>


	<div id="about-us-sction">
		<div class="container">
			<div class="row">
				<div class="col-md-6 without-padding">
					<div class="about-us-content">
						<h3>About</h3>
						<span>舒千倩 2016/10/02</span>
						<div class="divider"></div>
						<p>实现了三个基本功能（search，plus，delete）和两个选做功能（add，update），页面设计参考了Koncept这个网站，缩放页面的时候还是会出现一些问题，目前只测试了360和Edge两个浏览器，
						然后也没有处理书籍数量巨大的分页问题</p>
					</div>
					<!-- end about-me-content -->
				</div>
			</div>
		</div>
	</div>



</body>
</html>