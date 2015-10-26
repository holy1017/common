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
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="js/jquery.form.js"></script>
<script src="http://malsup.github.io/jquery.form.js"></script>


<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="/common/css/bootstrap.min.css" rel="stylesheet">
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
	$.ajax({
		url : "session",
		statusCode : {
			404 : function() {
				alert("page not found");
			}
		},
		success : function(data) {
			alert(data);
			alert("${sessionScope.sessiontest}");
			/* 아래 작동 안됨 */
			/* alert( $.session.get("sessiontest") ); */
		}
	});
	$(function() {
		$("#formbt").click(function() {
			$("#formtest").attr({
				"method" : "POST",
				"action" : "formtest"
			})
			$("#formtest").submit()
		})
	})
	function sendIt() {
		alert("sendIt")
		$('#formdatatest').ajaxForm({
			url : "formtest",
			success : function(data, status) {
				alert(status)
				$('#bbsLayout').html(data);
			},
			error : function(e) {
				alert(e.responseText);
			}
		})
		alert("submit")
		$('#formdatatest').submit();
	}
</script>
</head>
<body>
	<nav class="ink-navigation">
		<ul class="menu horizontal black">
			<li><a href="ink">ink.jsp</a></li>
			<li><a href="list">list.jsp</a></li>
			<li><a href="main">main.jsp</a></li>
			<li><a href="test">test.jsp</a></li>
			<li><a href="search/">search</a></li>
			<li><a href="fileUpload">"fileUpload"</a></li>
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

	<form action="formtest">
		<input type="text" name="test"> <input type="button"
			id="formbt" value="전송테스트">
	</form>
	<form action="formdatatest" enctype="multipart/form-data">
		<div>
			<input type="file" name="file">
		</div>
		<div>
			<input type="text" name="test">
		</div>
		<br>
		<div>
			<input type="button" id="formdatabt" onclick="sendIt()" value="전송테스트">
		</div>
	</form>

	<script type="text/javascript">
	/* 이건 제대로 되는듯 */
		$(function() {
			//폼전송
			$('#ajaxform').ajaxForm({
				//보내기전 validation check가 필요할경우
				beforeSubmit : function(data, frm, opt) {
					alert("전송전!!"+"/data:"+data+"/frm:"+frm+"/opt:"+opt);
					return true;
				},
				//submit이후의 처리
				success : function(responseText, statusText) {
					alert("전송성공!!"+"/responseText:"+responseText+"/statusText:"+statusText);
				},
				//ajax error
				error : function() {
					alert("에러발생!!");
				}
			});
		});
	</script>
	<form id="ajaxform" action="formfiletest" method="post"
		enctype="multipart/form-data">
		<input type="text" name="test2" /><br />
		<textarea rows="10" cols="10" name="test3"></textarea>
		<br /> <input type="file" name="test4" /> <input type="submit"
			value="Submit" />
	</form>

	<div id="bbsLayout"></div>

	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>



	<%@ include file="debug/debug.jsp"%>
</body>
</html>