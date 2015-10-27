<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		$(function() {

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
		/* 이건 제대로 되는듯 */
		$(function() {
			//폼전송
			$('#ajaxform').ajaxForm(
					{
						//보내기전 validation check가 필요할경우
						beforeSubmit : function(data, frm, opt) {
							alert("전송전!!" + "/data:" + data + "/frm:" + frm
									+ "/opt:" + opt);
							return true;
						},
						//submit이후의 처리
						success : function(responseText, statusText) {
							alert("전송성공!!" + "/responseText:" + responseText
									+ "/statusText:" + statusText);
						},
						//ajax error
						error : function() {
							alert("에러발생!!");
						}
					});
		});
	</script>
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


	<form id="ajaxform" action="formfiletest" method="post"
		enctype="multipart/form-data">
		<input type="text" name="test2" /><br />
		<textarea rows="10" cols="10" name="test3"></textarea>
		<br /> <input type="file" name="test4" /> <input type="submit"
			value="Submit" />
	</form>

	<%@ include file="debug/debug.jsp"%>
</body>
</html>