<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>Campeonato</title>
	<style type="text/css" media="screen">

	#page-body {
		margin: 2em 1em 1.25em 18em;
	}

	h2 {
		margin-top: 1em;
		margin-bottom: 0.3em;
		font-size: 1em;
	}

	p {
		line-height: 1.5;
		margin: 0.25em 0;
	}

	#controller-list ul {
		list-style-position: inside;
	}

	#controller-list li {
		line-height: 1.3;
		list-style-position: inside;
		margin: 0.25em 0;
	}

	@media screen and (max-width: 480px) {
		#status {
			display: none;
		}

		#page-body {
			margin: 0 1em 1em;
		}

		#page-body h1 {
			margin-top: 0;
		}
	}
	</style>
</head>

<body>
<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div id="page-body" role="main">
	<h1>Sistema de Realização de Campeonato de Futebol</h1>

	<p>Bem-vindo!</p>

	<div id="controller-list" role="navigation">
		<h2>Controllers disponíveis:</h2>
		<ul>
			<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName }}">
				<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
			</g:each>
		</ul>
	</div>
</div>
</body>
</html>
