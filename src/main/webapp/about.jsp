<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>关于博主-Powered by zz</title>
</head>
<%--</head>--%>
<jsp:include page="./foreground/common/head.jsp" />
<body>


<main id="main">

	<div class="container">
		<div class="row topspace">
			<div class="col-sm-8 col-sm-offset-2">

				<article class="post">
					<header class="entry-header">
						<div class="entry-meta">
							<span class="posted-on">${blogger.sign}</span>
						</div>
						<h1 class="entry-title"><a href="single.html" rel="bookmark">${blogger.nickName}</a></h1>
					</header>
					<div class="entry-content" align="center">
						${blogger.proFile}
					</div>
				</article>
			</div>
		</div>

</main>


<jsp:include page="./foreground/common/foot.jsp"/>

</body>
</html>
