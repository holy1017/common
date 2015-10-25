<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Bootstrap 101 Template</title>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="/common/css/bootstrap.min.css" rel="stylesheet">
<link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="css/bootstrap.min.css" />" rel="stylesheet">

<!-- <link rel="stylesheet" type="text/css" href="http://fastly.ink.sapo.pt/x.x.x/"> -->
<!-- <link rel="stylesheet" type="text/css" href="https://ink.global.ssl.fastly.net/x.x.x/"> -->
<link rel="stylesheet" type="text/css" href="http://fastly.ink.sapo.pt/3.1.10/css/ink.css">
<!-- inks css file -->
<!--[if lt IE 9 ]>
  <link rel="stylesheet" href="ink-ie.min.css" type="text/css">
<![endif]-->
<script type="text/javascript" src="http://fastly.ink.sapo.pt/3.1.10/js/ink-all.js"></script>
<!-- inks js bundle -->


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<nav class="ink-navigation">
		<ul class="menu horizontal black">
			<li><a href="ink">ink.jsp</a></li>
			<li><a href="list">list.jsp</a></li>
			<li><a href="main">main.jsp</a></li>
			<li><a href="test">test.jsp</a></li>
			<li><a href="search/">search</a></li>
		</ul>
	</nav>
	<h1>Hello, world!</h1>
	<script type="text/javascript">
		var now = new Date();
		var nowAll = now.getFullYear() + "-" + (now.getMonth() + 1) + "-"
				+ now.getDate() + " " + now.getHours() + ":" + now.getMinutes()
				+ ":" + now.getSeconds() + " ";
	</script>
	<%-- 	<p>
		<c:url value="css/bootstrap.min.css" />
	</p>
	<p>
		<c:url value="/css/bootstrap.min.css" />
	</p> --%>

	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>



	<%@ include file="debug/debug.jsp"%>
</body>
</html>