<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="kr">

<head>

<meta charset="utf-8">
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<title>Sticky footer</title>

<meta name="description" content="">
<meta name="author" content="ink, cookbook, recipes">
<meta name="HandheldFriendly" content="True">
<meta name="MobileOptimized" content="320">
<meta name="mobile-web-app-capable" content="yes">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

<!-- Place favicon.ico and apple-touch-icon(s) here  -->

<link rel="shortcut icon" href="http://cdn.ink.sapo.pt/3.1.10/img/favicon.ico">
<link rel="apple-touch-icon" href="http://cdn.ink.sapo.pt/3.1.10/img/touch-icon-iphone.png">
<link rel="apple-touch-icon" sizes="76x76" href="http://cdn.ink.sapo.pt/3.1.10/img/touch-icon-ipad.png">
<link rel="apple-touch-icon" sizes="120x120" href="http://cdn.ink.sapo.pt/3.1.10/img/touch-icon-iphone-retina.png">
<link rel="apple-touch-icon" sizes="152x152" href="http://cdn.ink.sapo.pt/3.1.10/img/touch-icon-ipad-retina.png">
<link rel="apple-touch-startup-image" href="http://cdn.ink.sapo.pt/3.1.10/img/splash.320x460.png"
	media="screen and (min-device-width: 200px) and (max-device-width: 320px) and (orientation:portrait)">
<link rel="apple-touch-startup-image" href="http://cdn.ink.sapo.pt/3.1.10/img/splash.768x1004.png"
	media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
<link rel="apple-touch-startup-image" href="http://cdn.ink.sapo.pt/3.1.10/img/splash.1024x748.png"
	media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">

<!-- load Ink's css from the cdn -->
<link rel="stylesheet" type="text/css" href="http://cdn.ink.sapo.pt/3.1.10/css/ink-flex.min.css">
<link rel="stylesheet" type="text/css" href="http://cdn.ink.sapo.pt/3.1.10/css/font-awesome.min.css">

<!-- load Ink's css for IE8 -->
<!--[if lt IE 9 ]>
            <link rel="stylesheet" href="http://cdn.ink.sapo.pt/3.1.10/css/ink-ie.min.css" type="text/css" media="screen" title="no title" charset="utf-8">
        <![endif]-->

<!-- test browser flexbox support and load legacy grid if unsupported -->
<script type="text/javascript" src="http://cdn.ink.sapo.pt/3.1.10/js/modernizr.js"></script>
<script type="text/javascript">
	Modernizr.load({
		test : Modernizr.flexbox,
		nope : 'http://cdn.ink.sapo.pt/3.1.10/css/ink-legacy.min.css'
	});
</script>

<!-- load Ink's javascript files from the cdn -->
<script type="text/javascript" src="http://cdn.ink.sapo.pt/3.1.10/js/holder.js"></script>
<script type="text/javascript" src="http://cdn.ink.sapo.pt/3.1.10/js/ink-all.min.js"></script>
<script type="text/javascript" src="http://cdn.ink.sapo.pt/3.1.10/js/autoload.js"></script>


<style type="text/css">
html, body {
	/* height: 100%; */
	background: #f0f0f0;
}

.wrap {
	min-height: 100%;
	height: auto !important;
	height: 100%;
	margin: 0 auto -120px;
	overflow: auto;
}

.push, footer {
	height: 120px;
	margin-top: 0;
}

footer {
	background: #ccc;
	border: 0;
}

footer * {
	line-height: inherit;
}

.top-menu {
	background: #1a1a1a;
}
</style>
</head>

<body>

	<!--[if lte IE 9 ]>
        <div class="ink-grid">
            <div class="ink-alert basic" role="alert">
                <button class="ink-dismiss">&times;</button>
                <p>
                    <strong>You are using an outdated Internet Explorer version.</strong>
                    Please <a href="http://browsehappy.com/">upgrade to a modern browser</a> to improve your web experience.
                </p>
            </div>
        </div>
        -->

	<div class="wrap">
		<div class="top-menu">
			<nav class="ink-navigation">
				<ul class="menu horizontal black">
					<li class="heading"><a href="#">Home</a></li>
					<li><a href="#">Post archive</a>
						<ul class="submenu">
							<li><a href="#">January</a></li>
							<li><a href="#">February</a>
								<ul class="submenu flyout right">
									<li><a href="#">1st week</a></li>
									<li><a href="#">2nd week</a></li>
									<li><a href="#">3rd week</a></li>
									<li><a href="#">4th week</a></li>
								</ul></li>
							<li><a href="#">March</a></li>
							<li><a href="#">...</a></li>
						</ul></li>
					<li><a href="#">About</a></li>
				</ul>
			</nav>
		</div>

		<div class="ink-grid vertical-space">
			<h1>heading</h1>
			<p>And though of all men the moody captain of the Pequod was the least given to that sort of shallowest assumption; and though the only homage he ever
				exacted, was implicit, instantaneous obedience; though he required no man to remove the shoes from his feet ere stepping upon the quarter-deck; and though
				there were times when, owing to peculiar circumstances connected with events hereafter to be detailed, he addressed them in unusual terms, whether of
				condescension or IN TERROREM, or otherwise; yet even Captain Ahab was by no means unobservant of the paramount forms and usages of the sea.</p>
		</div>
		<!-- footer와 겹치지 않게하기위한 태그 -->
		<div class="push"></div>
	</div>

	<footer class="clearfix">
		<div class="ink-grid">
			<ul class="unstyled inline half-vertical-space">
				<li class="active"><a href="#">About</a></li>
				<li><a href="#">Sitemap</a></li>
				<li><a href="#">Contacts</a></li>
			</ul>
			<p class="note">Identification of the owner of the copyright, either by name, abbreviation, or other designation by which it is generally known.</p>
		</div>
	</footer>

	<%@ include file="debug/debug.jsp"%>
</body>

</html>