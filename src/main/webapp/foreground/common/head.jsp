<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../app.jsp"%>
<head>
	<meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author"      content="zz">


	<link rel="shortcut icon" href="<%=path%>/static/assets/images/gt_favicon.png">

	<!-- Bootstrap -->
	<link href="<%=path%>/static/bootstrap3/3.0.0/css/bootstrap.no-icons.min.css" rel="stylesheet">
	<!-- Icons -->
	<link href="<%=path%>/static/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
	<!-- Fonts -->
	<link rel="stylesheet" href="<%=path%>/static/assets/css/css.css">
	<!-- Custom styles -->
	<link rel="stylesheet" href="<%=path%>/static/assets/css/styles.css">
	<link rel="stylesheet" href="<%=path%>/static/css/blog.css">

	<!--[if lt IE 9]> <script src="<%=path%>/static/assets/js/html5shiv.js"></script> <![endif]-->


</head>
<body>

<header id="header">
	<div id="head" class="parallax" parallax-speed="2">
		<h1 id="logo" class="text-center">
			<img class="img-circle" src="<%=path%>/static/assets/images/logo.jpg" alt="">
			<span class="title">Noel's Blog</span>
			<span class="tagline">A mystery person<br>
				<a href="">zz634682577@163.com</a></span>
		</h1>
	</div>

	<nav class="navbar navbar-default navbar-sticky" role="navigation" >
		<div class="container-fluid">

			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
					<span class="sr-only">切换导航</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<!--<a class="navbar-brand" href="#">甲乙丙</a>-->
			</div>

			<div class="collapse navbar-collapse" id="example-navbar-collapse">

				<ul class="nav navbar-nav">
					<li class="active"><a href="<%=path%>/index.html">主页</a></li>
					<li><a href="<%=path%>/about.html">关于博主</a></li>
					<li><a href="<%=path%>/blog.html">博客</a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">More Pages<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="https://zhang123.vip">个人主页</a></li>
							<li><a href="#">1020论坛</a></li>
							<li><a href="#">MORE</a></li>
							<%--<li><a href="<%=path%>/login.jsp">LOGIN</a></li>--%>
						</ul>
					</li>
				</ul>

			</div><!--/.nav-collapse -->
		</div>
	</nav>
</header>
</body >