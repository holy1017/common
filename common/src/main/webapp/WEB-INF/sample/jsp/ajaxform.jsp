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
		/* �̰� ����� �Ǵµ� */
		$(function() {
			//������
			$('#ajaxform').ajaxForm(
					{
						//�������� validation check�� �ʿ��Ұ��
						beforeSubmit : function(data, frm, opt) {
							alert("������!!" + "/data:" + data + "/frm:" + frm
									+ "/opt:" + opt);
							return true;
						},
						//submit������ ó��
						success : function(responseText, statusText) {
							alert("���ۼ���!!" + "/responseText:" + responseText
									+ "/statusText:" + statusText);
						},
						//ajax error
						error : function() {
							alert("�����߻�!!");
						}
					});
		});
	</script>
	<form action="formtest">
		<input type="text" name="test"> <input type="button"
			id="formbt" value="�����׽�Ʈ">
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
			<input type="button" id="formdatabt" onclick="sendIt()" value="�����׽�Ʈ">
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