<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Bootstrap 101 Template</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- <link href="/common/css/bootstrap.min.css" rel="stylesheet"> -->
<link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="css/bootstrap.min.css" />" rel="stylesheet">

<!-- <link rel="stylesheet" type="text/css" href="http://fastly.ink.sapo.pt/x.x.x/"> -->
<!-- <link rel="stylesheet" type="text/css" href="https://ink.global.ssl.fastly.net/x.x.x/"> -->
<link rel="stylesheet" type="text/css"
	href="http://fastly.ink.sapo.pt/3.1.10/css/ink.css">
<!-- inks css file -->
<!--[if lt IE 9 ]>
  <link rel="stylesheet" href="ink-ie.min.css" type="text/css">
<![endif]-->


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	
<script src="js/jquery-1113.js"></script>
<script src="js/jquery-1113.min.js"></script>
<script src="<c:url value="js/jquery-1113.js" />"></script>
<script src="<c:url value="js/jquery-1113.min.js" />"></script>

<script src="js/jquery.form.js"></script>
<script src="js/jquery.form.min.js"></script>
<script src="<c:url value="js/jquery.form.js" />"></script>
<script src="<c:url value="js/jquery.form.min.js" />"></script>

<script src="js/common_fm.js"></script>

<script src="js/bootstrap.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="<c:url value="js/bootstrap.js" />"></script>
<script src="<c:url value="js/bootstrap.min.js" />"></script>

<script src="js/foundation.js"></script>
<script src="js/foundation.min.js"></script>
<script src="<c:url value="js/foundation.js" />"></script>
<script src="<c:url value="js/foundation.min.js" />"></script>

<script src="js/ink-all.js"></script>
<script src="js/ink-all.min.js"></script>
<script src="<c:url value="js/ink-all.js" />"></script>
<script src="<c:url value="js/ink-all.min.js" />"></script>

<script src="js/ink-ui.js"></script>
<script src="js/ink-ui.min.js"></script>
<script src="<c:url value="js/ink-ui.js" />"></script>
<script src="<c:url value="js/ink-ui.min.js" />"></script>


<script src="http://malsup.github.io/jquery.form.js"></script>

<script type="text/javascript"
	src="http://fastly.ink.sapo.pt/3.1.10/js/ink-all.js"></script>
<!-- inks js bundle -->


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript">
	// 	$.ajax({
	// 		url : "session",
	// 		statusCode : {
	// 			404 : function() {
	// 				alert("page not found");
	// 			}
	// 		},
	// 		success : function(data) {
	// 			alert(data);
	// 			alert("${sessionScope.sessiontest}");
	// 			/* 아래 작동 안됨 */
	// 			/* alert( $.session.get("sessiontest") ); */
	// 		}
	// 	});
	$(function() {

		$(".menu a").click(function() {
			var url = $(this).attr("href")
			//alert(url);
			a_ajax(url, "#sampleresult")
			return false
		})
	})

	function a_ajax(url, changeTag) {
		$.ajax({
			url : url,
			statusCode : {
				404 : function() {
					alert("page not found");
				}
			},
			success : function(data) {
				$(changeTag).html(data)
				//alert(data);
				//alert("${sessionScope.sessiontest}");
				/* 아래 작동 안됨 */
				/* alert( $.session.get("sessiontest") ); */
			}
		})
		return false
	}
</script>
</head>
<body onload="a_ajax('Helloworld.jsp','#sampleresult')">
	<nav class="ink-navigation">
		<ul class="menu horizontal black">
			<li><a href="Helloworld.jsp">Helloworld</a></li>
			<li><a href="ink.jsp">ink</a></li>
			<li><a href="list.jsp">list</a></li>
			<li><a href="main.jsp">main</a></li>
			<li><a href="test.jsp">test</a></li>
			<li><a href="search/">search</a></li>
			<li><a href="ajaxform.jsp">ajaxform</a></li>
			<li><a href="fileUpload.jsp">fileUpload</a></li>
			<li><a href="RequsetParam" onclick="a_ajax('RequsetParam')">RequsetParam</a></li>
		</ul>
	</nav>
	
	<div id="test">
	<c:url value="js/jquery-1113.js" />
	</div>

	<div id="sampleresult">
		<%@ include file="debug/debug.jsp"%>
	</div>

</body>
</html>