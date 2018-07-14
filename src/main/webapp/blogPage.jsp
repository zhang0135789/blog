<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>博 客-Powered by zz</title>
</head>

<jsp:include page="./foreground/common/head.jsp" />

<body>

<main id="main">

	<div class="container">

		<div class="row topspace">

			<!-- Article main content -->
			<article class="col-sm-8 maincontent">
				<div class="container">
					<div class="row topspace">
						<div class="col-sm-8 col-sm-offset-2">

							<article class="post">
								<header class="entry-header">
									<div class="entry-meta">
										<span class="posted-on"><time class="entry-date published" date="2013-09-27">September 27, 2013</time></span>
									</div>
									<h1 class="entry-title"><a href="single.html" rel="bookmark">Hello world!</a></h1>
								</header>
								<div class="entry-content">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius, molestias, architecto, adipisci, numquam dolor iusto eos reprehenderit placeat quam debitis quas magni eveniet. Saepe, nam, iste consectetur quae necessitatibus dolores provident veritatis possimus rerum facilis quia dicta itaque sapiente iusto natus quidem magni quibusdam. Explicabo nesciunt vel rem obcaecati reprehenderit eveniet culpa repudiandae. Distinctio, quia, provident illum necessitatibus repellendus rem voluptates exercitationem numquam inventore itaque atque sint nihil eveniet consequuntur eius! Laborum, at sit animi quae quidem ex tempora facilis.</p>
								</div>
							</article>
						</div>
					</div>
				</div>
				<style>
					ul li{
						list-style: none;
					}
				</style>


			</article>
			<!-- /Article -->

			<!-- Sidebar -->
			<aside class="col-md-4 sidebar sidebar-right">

				<%--<div class="widget">--%>
					<%--<h4>按日志类别</h4>--%>
					<%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, ratione delectus reiciendis nulla nisi pariatur molestias animi eos repellat? Vel.</p>--%>
				<%--</div>--%>
				<%--<div class="widget">--%>
					<%--<h4>按日志日期</h4>--%>
					<%--<ul>--%>
						<%--<li>Voluptate, labore non adipisci nihil!</li>--%>
					<%--</ul>--%>
				<%--</div>--%>
				<%--<div class="widget">--%>
					<%--<h4>友情链接</h4>--%>
					<%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, ratione delectus reiciendis nulla nisi pariatur molestias animi eos repellat? Vel.</p>--%>
				<%--</div>--%>

				<div class="widget">
					<div class="data_list_title">
						<h4><img src="${pageContext.request.contextPath}/static/images/byType_icon.png"/>
						按日志类别
						</h4>
					</div>
					<div class="datas">
						<ul>
							<c:forEach var="blogTypeCount" items="${blogTypeCountList }">
								<li><a href="${pageContext.request.contextPath}/index.html?typeId=${blogTypeCount.id }">${blogTypeCount.typeName }(${blogTypeCount.blogCount })</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div class="widget">
					<div class="data_list_title">
						<h4>
						<img src="${pageContext.request.contextPath}/static/images/byDate_icon.png"/>
						按日志日期
						</h4>
					</div>
					<div class="datas">
						<ul>
							<c:forEach var="blogCount" items="${blogCountList }">
								<li><a href="${pageContext.request.contextPath}/index.html?releaseDateStr=${blogCount.releaseDateStr }">${blogCount.releaseDateStr }(${blogCount.blogCount })</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div class="widget">
					<div class="data_list_title">
						<h4>
						<img src="${pageContext.request.contextPath}/static/images/link_icon.png"/>
						友情链接
						</h4>
					</div>
					<div class="datas">
						<ul>
							<c:forEach var="link" items="${linkList }">
								<li><a href="${link.linkUrl }" target="_blank">${link.linkName }</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>


			</aside>
			<!-- /Sidebar -->
			<center class="">
				<ul class="pagination">
					<li class="disabled"><a href="">&laquo;</a></li>
					<li class="active"><a href="">1</a></li>
					<li><a href="">2</a></li>
					<li><a href="">3</a></li>
					<li><a href="">4</a></li>
					<li><a href="">5</a></li>
					<li><a href="">6</a></li>
					<li><a href="">&raquo;</a></li>
				</ul>
			</center>

		</div>
	</div>	<!-- /container -->






	

	</div>	<!-- /container -->

</main>


<jsp:include page="./foreground/common/foot.jsp"/>

</body>
</html>
