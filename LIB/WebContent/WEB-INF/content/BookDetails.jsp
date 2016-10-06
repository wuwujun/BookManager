<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Book details</title>
<script type="text/javascript">
function msg(){
	if(confirm("确定删除？删除将不能恢复！"))
	    return true;
	else
	   return false;
}
</script>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,400italic,600,600italic,700,700italic,300italic,300' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,400italic,700,700italic,900' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="CSS/bootstrap-3.3.7-dist/css/bootstrap.min.css"> 
<link rel="stylesheet" href="CSS/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<style>
.bigtable{padding: 80px;};
</style>

</head>
<body style='background:url(Images/6.jpg) no-repeat; background-size: cover;'>

  <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	
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
							<s:iterator value="authorDetails"><li><a href="SearchAction?name=${name}">Return</a></li></s:iterator>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li><a href="http://blog.csdn.net/sqq0103"><i class="fa fa-child" style="font-size:24px"></i></a></li>
							<li>
							  <a href="https://github.com/wuwujun"><i class="fa fa-github" style="font-size:24px"></i></a>
							</li>
						</ul>
					</div>
				</nav>
				
				<div class="bigtable">
					<div class="table-responsive">
						<table class="table table-striped">
							<tr>
								<td><strong>ISBN</strong></td>
								<td><strong>书名</strong></td>
								<td><strong>作者编号</strong></td>
								<td><strong>出版社</strong></td>
								<td><strong>出版日期</strong></td>
								<td><strong>价格</strong></td>
								<td><strong>操作</strong></td>
							</tr>
							
							<s:iterator value="bookDetails">
								<tr class="success">
									<td><strong><s:property value="isbn"/></strong></td>
									<td><strong><s:property value="title"/></strong></td>
									<td><strong><s:property value="author_id"/></strong></td>
									<td><strong><s:property value="publisher"/></strong></td>
									<td><strong><s:property value="publish_date"/></strong></td>
									<td><strong><s:property value="price"/></strong></td>
									<td>
										<a href="DeleteAction?isbn=${isbn}"><input type="button" value="删除" onclick="return msg()"/></a>
									
										<a href="UpdateBook?author_id=${author_id}&publisher=${publisher}&publish_date=${publish_date}&price=${price}&title=${title}"><input type="button" value="更新"/></a>
									</td>
								</tr>
							</s:iterator>
						</table>
					</div>
					
					<br>
					
					<div class="table-responsive">
						<table class="table table-striped">
							<tr>
								<th>编号</th>
								<th>姓名</th>
								<th>年龄</th>
								<th>国家</th>
								<th>操作</th>
							</tr>
							
							<s:iterator value="bookDetails">
							<s:iterator value="authorDetails">
							<tr class="success">
								<td><strong><s:property value="author_id"/></strong></td>
								<td><strong><s:property value="name"/></strong></td>
								<td><strong><s:property value="age"/></strong></td>
								<td><strong><s:property value="country"/></strong></td>
								<td>
									<a href="UpdateAuthor?author_id=${author_id}&name=${name}&age=${age}&country=${country}&title=${title}"><input type="button" value="更新"/></a>
								</td>
							</tr>
							</s:iterator></s:iterator>
						</table>
					</div>
				</div>
				
			</div>
		</div>
	</div>

	
</body>
</html>