<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>


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



</head>
<body>
	<!--  -->
	<nav class="ink-navigation">
	<ul class="menu horizontal black">
		<li class="heading active"><a href="#">Home1</a></li>
		<li><a href="#">Post archive</a>
			<ul class="submenu">
				<li><a href="#">January</a></li>
				<li><a href="#">February</a></li>
				<li><a href="#">March</a></li>
				<li><a href="#">...</a></li>
			</ul></li>
		<li class="disabled"><a href="#">About</a></li>
	</ul>
	</nav>
	<div class="column-group">
		<nav class="ink-navigation all-100 xlarge-50 large-50">
		<ul class="menu vertical black">
			<li class="heading active"><a href="#">Home2</a></li>
			<li><a href="#">Post archive</a>
				<ul class="submenu">
					<li><a href="#">January</a></li>
					<li><a href="#">February</a></li>
					<li><a href="#">March</a></li>
					<li><a href="#">...</a></li>
				</ul></li>
			<li class="disabled"><a href="#">About</a></li>
		</ul>
		</nav>
		<nav class="ink-navigation all-100 xlarge-50 large-50">
		<ul class="menu vertical black">
			<li class="heading active"><a href="#">Home3</a></li>
			<li><a href="#">Post archive</a>
				<ul class="submenu flyout left">
					<li><a href="#">January</a></li>
					<li><a href="#">February</a></li>
					<li><a href="#">March</a></li>
					<li><a href="#">...</a></li>
				</ul></li>
			<li class="disabled"><a href="#">About</a></li>
		</ul>
		</nav>
	</div>
	<nav class="ink-navigation">
	<ul class="breadcrumbs black">
		<li><a href="#">Start</a></li>
		<li><a href="#">Level 1</a></li>
		<li><a href="#">Level 2</a></li>
		<li class="active"><a href="#">Current item</a></li>
	</ul>
	</nav>
	<nav class="ink-navigation">
	<ul class="pagination black">
		<li class="disabled"><a href="#">Previous</a></li>
		<li class="active"><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">Next</a></li>
	</ul>
	</nav>
	<nav class="ink-navigation">
	<ul class="pagination dotted">
		<li><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">4</a></li>
		<li><a href="#">5</a></li>
		<li><a href="#">6</a></li>
	</ul>
	</nav>
	<nav class="ink-navigation">
	<ul class="pagination chevron">
		<li class="previous"><a href="#"><span>Previous</span></a></li>
		<li class="next"><a href="#"><span>Next</span></a></li>
	</ul>
	</nav>
	<div class="column-group horizontal-gutters">
		<div class="xlarge-50 large-50 medium-50 small-100 tiny-100">
			<p class="example-title">Code</p>
			<div class="highlight">
				<pre>
					<code class="language-html" data-lang="html">
						
					</code>
				</pre>
			</div>
		</div>
		<div class="xlarge-50 large-50 medium-50 small-100 tiny-100">
			<p class="example-title">Demo</p>
			<div class="example">
				<div class="ink-navigation">
					<ul class="dropdown">
						<li class="heading">Browse</li>
						<li><a href="#">Back</a></li>
						<li><a href="#">Forward</a></li>
						<li class="heading separator-above">Clipboard</li>
						<li><a href="#">Copy</a></li>
						<li><a href="#">Cut</a></li>
						<li><a href="#">Paste</a></li>
						<li class="heading">Screenshot</li>
						<li class="submenu separator-above"><a href="#">Options</a>
							<ul class="dropdown">
								<li><a href="#">Whole screen</a></li>
								<li><a href="#">Portion of screen</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="example">
		<span class="ink-label black">black label</span> <span
			class="ink-label white">white label</span> <span
			class="ink-label grey">grey label</span> <span class="ink-label blue">blue
			label</span> <span class="ink-label red">red label</span> <span
			class="ink-label orange">orange label</span> <span
			class="ink-label yellow">yellow label</span> <span
			class="ink-label green">green label</span>
	</div>
	<div class="example">
		<span class="ink-badge black">99</span> <span class="ink-badge grey">99</span>
		<span class="ink-badge white">99</span> <span class="ink-badge blue">99</span>
		<span class="ink-badge red">99</span> <span class="ink-badge orange">99</span>
		<span class="ink-badge yellow">99</span> <span class="ink-badge green">99</span>
	</div>
</body>
</html>