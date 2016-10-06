<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Library Homepage</title>
<!-- Custom Google fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,400italic,600,600italic,700,700italic,300italic,300'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Playfair+Display:400,400italic,700,700italic,900'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="CSS/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="CSS/style.css">
<link rel="stylesheet" href="CSS/font-awesome.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

</head>
<body>

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
			</div>
		</div>
	</div>

	<div class="boxed-body">
		<div class="carousel slide carousel-fade">
			<div class="col-md-12 column">
				<div class="carousel slide" id="carousel-321400">
					<ol class="carousel-indicators">
						<li class="active" data-slide-to="0"
							data-target="#carousel-321400"></li>
						<li data-slide-to="1" data-target="#carousel-321400"></li>
						<li data-slide-to="2" data-target="#carousel-321400"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item active">
							<img alt="" src="Images/3.jpg" />
							<div class="boxed-hero-content">
								<div class="vertical-align-table">
									<div class="vertical-align-cell">
										<div class="container">
											<div class="row">
												<div class="col-sm-8 col-sm-offset-2">
													<div class="boxed-hero-text">
														<h1 class="hero-title">My Library</h1>
														<h2 class="hero-description">Soyez les bienvenus</h2>
														<div class="call-to-action">
															<a href="Search"
																class="section-scroll btn btn-md btn-clean">Search</a> <a
																href="Add" class="section-scroll btn btn-md btn-dark">Plus</a>
														</div>
													</div>
													<!-- End hero-text -->
												</div>
												<!-- end col-md-6 -->
											</div>
											<!-- end row -->
										</div>
										<!-- End container -->
									</div>
								</div>
								<!-- end c-vertical -->
							</div>
							<!-- End hero-content -->
						</div>

						<div class="item">
							<img alt="" src="Images/7.jpg" />
							<div class="boxed-hero-content">
								<div class="vertical-align-table">
									<div class="vertical-align-cell">
										<div class="container">
											<div class="row">
												<div class="col-sm-8 col-sm-offset-2">
													<div class="boxed-hero-text">
														<h1 class="hero-title">My Library</h1>
														<h2 class="hero-description">Soyez les bienvenus</h2>
														<div class="call-to-action">
															<a href="Search"
																class="section-scroll btn btn-md btn-clean">Search</a> <a
																href="Add" class="section-scroll btn btn-md btn-dark">Plus</a>
														</div>
													</div>
													<!-- End hero-text -->
												</div>
												<!-- end col-md-6 -->
											</div>
											<!-- end row -->
										</div>
										<!-- End container -->
									</div>
								</div>
								<!-- end c-vertical -->
							</div>
							<!-- End hero-content -->
						</div>
						<div class="item">
							<img alt="" src="Images/4.jpg" />
							<div class="boxed-hero-content">
								<div class="vertical-align-table">
									<div class="vertical-align-cell">
										<div class="container">
											<div class="row">
												<div class="col-sm-8 col-sm-offset-2">
													<div class="boxed-hero-text">
														<h1 class="hero-title">My Library</h1>
														<h2 class="hero-description">Soyez les bienvenus</h2>
														<div class="call-to-action">
															<a href="Search"
																class="section-scroll btn btn-md btn-clean">Search</a> <a
																href="Add" class="section-scroll btn btn-md btn-dark">Plus</a>
														</div>
													</div>
													<!-- End hero-text -->
												</div>
												<!-- end col-md-6 -->
											</div>
											<!-- end row -->
										</div>
										<!-- End container -->
									</div>
								</div>
								<!-- end c-vertical -->
							</div>
							<!-- End hero-content -->
						</div>
					</div>
					<a class="left carousel-control" href="#carousel-321400"
						data-slide="prev"><span
						class="glyphicon glyphicon-chevron-left"></span></a> <a
						class="right carousel-control" href="#carousel-321400"
						data-slide="next"><span
						class="glyphicon glyphicon-chevron-right"></span></a>
				</div>
			</div>
		</div>

		<footer>
			<div class="fixed-footer">
				<div class="fixed-footer-social">
					<ul>
						<li><span>© W-IND' September-Octorber 2016 </span></li>
						<li></li>
						<li></li>
						<li><span><i class="fa fa-qq"></i>1296660653</span></li>
						<li></li>
						<li></li>
						<li><span><i class="fa fa-wechat"></i>sqqsghnh</span></li>
					</ul>
				</div>
			</div>
		</footer>

	</div>




</body>
</html>