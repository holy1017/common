<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>search</title>

<link rel="stylesheet" type="text/css" href="http://fastly.ink.sapo.pt/3.1.10/css/ink.css">
<!-- inks css file -->
<!--[if lt IE 9 ]>
  <link rel="stylesheet" href="ink-ie.min.css" type="text/css">
<![endif]-->
<script type="text/javascript" src="http://fastly.ink.sapo.pt/3.1.10/js/ink-all.js"></script>
<!-- inks js bundle -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="js/jquery-1.11.3.min.js"></script>

<script type="text/javascript">
	$(function() {
		// 		검색창 인식
		$("#search").keyup(function() {
			// 값 받기
			var word = $(this).val()
			// 테스트 출력
			$("#result").html("")
			$("#word").html("")
			//서버로 요청 주소 방식. 특문 불가
			// 			$.ajax({
			// 				method : "POST",
			// 				url : "Word/" + word,
			// 				success : function(msg) {
			// 					$("#word").append("success:" + msg)
			// 				}
			// 			}).done(function() {
			// 			});

			//서버로 요청 주소 방식. 특문 불가
			$.ajax({
				method : "POST",
				url : "Words",
				data : {
					word : word
				},
				success : function(msg) {
					$("#result").html("success")
					$("#word").append(msg)
				},
				error : function() {
					$("#result").html("error")
				}
			}).done(function() {
			});

		})

	})
</script>
</head>

<body>
	<span>찿을 단어</span>
	<input id="search" type="text" />
	<div id="result"></div>
	<div id="word"></div>
	<%@include file="../debug/debug.jsp"%>
</body>
</html>