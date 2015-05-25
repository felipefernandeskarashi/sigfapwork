<!DOCTYPE html>
<html lang="pt-BR" id="extr-page">
<head>
<meta charset="utf-8">
<title>sigfap | Remover Pesquisador</title>
<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- #CSS Links -->
<!-- Basic Styles -->
<link rel="stylesheet" type="text/css" media="screen"
	href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${pageContext.request.contextPath}/static/css/font-awesome.min.css">
<!-- SmartAdmin Styles : Please note (smartadmin-production.css) was created using LESS variables -->
<link rel="stylesheet" type="text/css" media="screen"
	href="${pageContext.request.contextPath}/static/css/smartadmin-production.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${pageContext.request.contextPath}/static/css/smartadmin-skins.min.css">
<!-- SmartAdmin RTL Support is under construction
			 This RTL CSS will be released in version 1.5
		<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/static/css/smartadmin-rtl.min.css"> -->
<!-- We recommend you use "your_style.css" to override SmartAdmin
		     specific styles this will also ensure you retrain your customization with each SmartAdmin update.
		<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/static/css/your_style.css"> -->
<!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
<link rel="stylesheet" type="text/css" media="screen"
	href="${pageContext.request.contextPath}/static/css/demo.min.css">
<!-- #FAVICONS -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/static/img/favicon/favicon.ico"
	type="image/x-icon">
<link rel="icon"
	href="${pageContext.request.contextPath}/static/img/favicon/favicon.ico"
	type="image/x-icon">
<!-- #GOOGLE FONT -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">
<!-- #APP SCREEN / ICONS -->
<!-- Specifying a Webpage Icon for Web Clip 
			 Ref: https://developer.apple.com/library/ios/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html -->
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/static/img/splash/sptouch-icon-iphone.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="${pageContext.request.contextPath}/static/img/splash/touch-icon-ipad.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="${pageContext.request.contextPath}/static/img/splash/touch-icon-iphone-retina.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="${pageContext.request.contextPath}/static/img/splash/touch-icon-ipad-retina.png">

<!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">

<!-- Startup image for web apps -->
<link rel="apple-touch-startup-image"
	href="${pageContext.request.contextPath}/static/img/splash/ipad-landscape.png"
	media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
<link rel="apple-touch-startup-image"
	href="${pageContext.request.contextPath}/static/img/splash/ipad-portrait.png"
	media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
<link rel="apple-touch-startup-image"
	href="${pageContext.request.contextPath}/static/img/splash/iphone.png"
	media="screen and (max-device-width: 320px)">



</head>
<body id="login" onLoad="setDisabled()">
	<!-- possible classes: minified, no-right-panel, fixed-ribbon, fixed-header, fixed-width-->
	<header id="header">
		<!--<span id="logo">
		<img
				src="${pageContext.request.contextPath}/static/img/demo/sigfap.jpg"
				alt="sigfap"></span>-->
		<div id="logo-group">
			<span id="logo"> <img
				src="${pageContext.request.contextPath}/static/img/demo/sigfap.jpg"
				alt="sigfap">
			</span>
			<!-- END AJAX-DROPDOWN -->
		</div>
		<span id="extr-page-header-space"> <span class="hidden-mobile"></span>
			<a href="${pageContext.request.contextPath}/" class="btn btn-primary">Voltar</a>
		</span>
	</header>
	<div id="main" role="main">
		<!-- MAIN CONTENT -->
		<div id="content" class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
					<div class="well no-padding">
						<form action="${pageContext.request.contextPath}/remove"
							method="post" id="smart-form-register"
							class="smart-form client-form">
							<header> Remover Pesquisador </header>

							<fieldset>
								<section>
									<label class="label">ID do Pesquisador</label> <label class="input">
										<input type="text" name="research.id">
									</label>
								</section>
								
								<section>
									<label class="label">Nome</label> <label class="input">
										<input type="text" name="research.nome">
									</label>
								</section>

								<section>
									<label class="label">E-mail</label> <label class="input">
										<input type="text" name="research.email">
									</label>
								</section>
							</fieldset>

							<footer>
								<button type="submit" class="btn btn-primary" name="_method" value="DELETE">Remover
									Pesquisador</button>
							</footer>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--================================================== -->
	<!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
	<script
		src="${pageContext.request.contextPath}/static/js/plugin/pace/pace.min.js"></script>
	<!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
	<script>
		if (!window.jQuery) {
			document
					.write('<script src="${pageContext.request.contextPath}/static/js/libs/jquery-2.0.2.min.js"><\/script>');
		}
	</script>
	<script
		src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
	<script>
		if (!window.jQuery.ui) {
			document
					.write('<script src="${pageContext.request.contextPath}/static/js/libs/jquery-ui-1.10.3.min.js"><\/script>');
		}
	</script>
	<!-- JS TOUCH : include this plugin for mobile drag / drop touch events 		
		<script src="${pageContext.request.contextPath}/static/js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> -->
	<!-- BOOTSTRAP JS -->
	<script
		src="${pageContext.request.contextPath}/static/js/bootstrap/bootstrap.min.js"></script>
	<!-- JQUERY VALIDATE -->
	<script
		src="${pageContext.request.contextPath}/static/js/plugin/jquery-validate/jquery.validate.min.js"></script>

	<!-- JQUERY MASKED INPUT -->
	<script
		src="${pageContext.request.contextPath}/static/js/plugin/masked-input/jquery.maskedinput.min.js"></script>

	<!--[if IE 8]>
			
			<h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>
			
		<![endif]-->
	<!-- MAIN APP JS FILE -->

	<script src="${pageContext.request.contextPath}/static/js/app.min.js"></script>

</body>
</html>