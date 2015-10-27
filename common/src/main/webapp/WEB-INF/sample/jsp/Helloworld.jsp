<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1>Hello, world!</h1>
	<script type="text/javascript">
		var now = new Date();
		var nowAll = now.getFullYear() + "-" + (now.getMonth() + 1) + "-"
				+ now.getDate() + " " + now.getHours() + ":" + now.getMinutes()
				+ ":" + now.getSeconds() + " ";
	</script>



	<%@ include file="debug/debug.jsp"%>
	
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrapjs"></script>

</body>
</html>