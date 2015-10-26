<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%-- <%@ include file="/WEB-INF/include/include-header.jspf" %> --%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
	function gfn_isNull(str) {
		if (str == null)
			return true;
		if (str == "NaN")
			return true;
		if (new String(str).valueOf() == "undefined")
			return true;
		var chkStr = new String(str);
		if (chkStr.valueOf() == "undefined")
			return true;
		if (chkStr == null)
			return true;
		if (chkStr.toString().length == 0)
			return true;
		return false;
	}

	function ComSubmit(opt_formId) {
		this.formId = gfn_isNull(opt_formId) == true ? "commonForm"
				: opt_formId;
		this.url = "";

		if (this.formId == "commonForm") {
			$("#commonForm")[0].reset();
		}

		this.setUrl = function setUrl(url) {
			this.url = url;
		};

		this.addParam = function addParam(key, value) {
			$("#" + this.formId)
					.append(
							$("<input type='hidden' name='"+key+"' id='"+key+"' value='"+value+"' >"));
		};

		this.submit = function submit() {
			var frm = $("#" + this.formId)[0];
			frm.action = this.url;
			frm.method = "post";
			frm.submit();
		};
	}
</script>
</head>
<body>
	<form id="frm" name="frm" enctype="multipart/form-data">
		<table class="board_view">
			<colgroup>
				<col width="15%">
				<col width="*" />
			</colgroup>
			<caption>게시글 작성</caption>
			<tbody>
				<tr>
					<th scope="row">제목</th>
					<td><input type="text" id="TITLE" name="TITLE" class="wdp_90"></input></td>
				</tr>
				<tr>
					<td colspan="2" class="view_text"><textarea rows="20"
							cols="100" title="내용" id="CONTENTS" name="CONTENTS"></textarea></td>
				</tr>
			</tbody>
		</table>
		<input type="file" name="file"> <br />
		<br /> <a href="#this" class="btn" id="write">작성하기</a> <a href="#this"
			class="btn" id="list">목록으로</a>
	</form>

	<%--    <%@ include file="/WEB-INF/include/include-body.jspf" %> --%>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#list").on("click", function(e) { //목록으로 버튼
				e.preventDefault();
				fn_openBoardList();
			});

			$("#write").on("click", function(e) { //작성하기 버튼
				e.preventDefault();
				fn_insertBoard();
			});
		});

		function fn_openBoardList() {
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("");
			comSubmit.submit();
		}

		function fn_insertBoard() {
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("formfiletest");
			comSubmit.submit();
		}
	</script>
	<%@ include file="debug/debug.jsp"%>
</body>
</html>