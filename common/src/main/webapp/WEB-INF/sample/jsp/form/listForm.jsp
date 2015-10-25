<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!-- ink-badge ink-label black -->
<div class="ink-grid">
	<div class="column-group">
		<c:if test="${ fn:length(list)==0}">
			<div class="ink-label black">검색 없음</div>
		</c:if>
		<div class="all-50 tiny-100">
			<ol>
				<c:forEach items="${ list}" var="item">
					<li class="ink-label black">${item }</li>
				</c:forEach>
			</ol>
		</div>
		<div class="all-50 tiny-100">
			<ul class="unstyled">
				<c:forEach items="${ list}" var="item">
					<li class="ink-label black">${item }</li>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>


<%@ include file="../debug/debug.jsp"%>