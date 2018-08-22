<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!-- Bootstrap -->
<link href="${pageContext.request.contextPath}/static/bootstrap3/3.0.0/css/bootstrap.no-icons.min.css" rel="stylesheet">
<!-- Icons -->
<link href="${pageContext.request.contextPath}/static/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
<!-- Fonts -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/css.css">
<!-- Custom styles -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/styles.css">

<!--[if lt IE 9]> <script src="${pageContext.request.contextPath}/static/assets/js/html5shiv.js"></script> <![endif]-->
<style>
	.entry-content{
		margin-left: 66px;
		margin-right: 66px;
	}
	.img img {
		width: 206px;
		height: 91px;
		max-width:100%;
		max-height:100%;
	}
</style>


<c:forEach var="blog" items="${blogList}">
<article class="post">
	<header class="entry-header">
		<div class="entry-meta">
			<span class="posted-on"><time class="entry-date published" date="2013-09-27"><fmt:formatDate value="${blog.releaseDate}" type="date" pattern="yyyy年MM月dd日"/></time></span>
		</div>
		<h1 class="entry-title"><a href="${pageContext.request.contextPath}/blog/articles/${blog.id}.html" rel="bookmark" style="font-size: 1.66rem;">${blog.title}</a></h1>
	</header>
	<div class="entry-content">
		<p style="text-indent:2em; padding:0px; margin:0px;">摘要: ${blog.summary }...</p>
	</div>
	<div class="entry-content img">
		<c:forEach var="image" items="${blog.imagesList }">
			<a href="${pageContext.request.contextPath}/blog/articles/${blog.id}.html">${image}</a>
			&nbsp;&nbsp;
		</c:forEach>
	</div>
	<div class="entry-content">
		<span style="text-align: right;display:block;font-size: 12px;" class="info">发表于 <fmt:formatDate value="${blog.releaseDate }" type="date" pattern="yyyy-MM-dd HH:mm"/> 阅读(${blog.clickHit}) 评论(${blog.replyHit}) </span>
	</div>
</article>
</c:forEach>
<script >
	<c:if test="${image!=null}">
		document.getElementsByClassName("img").getELementsByTagName("img").addClass("img-responsive").addClass("img-thumbnail");
    </c:if>
</script >

<%--<div class="data_list">--%>
		<%--<div class="data_list_title">--%>
		<%--<img src="${pageContext.request.contextPath}/static/images/list_icon.png"/>--%>
		<%--最新博客</div>--%>
		<%--<div class="datas">--%>
			<%--<ul>--%>
			  <%--<c:forEach var="blog" items="${blogList}">--%>
			  	  <%--<li style="margin-bottom: 30px">--%>
				  	<%--<span class="date"><a href="${pageContext.request.contextPath}/blog/articles/${blog.id}.html"><fmt:formatDate value="${blog.releaseDate}" type="date" pattern="yyyy年MM月dd日"/></a></span>--%>
				  	<%--<span class="title"><a href="${pageContext.request.contextPath}/blog/articles/${blog.id}.html">${blog.title}</a></span>--%>
				  	<%--<span class="summary">摘要: ${blog.summary }...</span>--%>
				  	<%--<span class="img">--%>
				  		<%--<c:forEach var="image" items="${blog.imagesList }">--%>
					  		<%--<a href="${pageContext.request.contextPath}/blog/articles/${blog.id}.html">${image }</a>--%>
					  		<%--&nbsp;&nbsp;--%>
				  		<%--</c:forEach>--%>
				  	<%--</span>--%>
				  	<%--<span class="info">发表于 <fmt:formatDate value="${blog.releaseDate }" type="date" pattern="yyyy-MM-dd HH:mm"/> 阅读(${blog.clickHit}) 评论(${blog.replyHit}) </span>--%>
				  <%--</li>--%>
				  <%--<hr style="height:5px;border:none;border-top:1px dashed gray;padding-bottom:  10px;" />--%>
			  <%--</c:forEach>--%>
			<%--</ul>--%>
		<%--</div>--%>
   <%--</div>--%>

<%--&lt;%&ndash;<div>&ndash;%&gt;--%>
	<%--<nav>--%>
	  <%--<ul class="pagination pagination-sm">--%>
	    <%--${pageCode}--%>
	  <%--</ul>--%>
	<%--</nav>--%>
 <%--&lt;%&ndash;</div>&ndash;%&gt;--%>