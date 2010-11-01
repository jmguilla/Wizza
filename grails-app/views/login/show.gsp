<html>
    <head>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="login" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    </head>
    <body>

		<g:form action="login">
		
			<label>Identifiant : </label> <input id="userId"/>
			
			<label>Mot de passe : </label> <input id="password" type="password"/>
		
			<button type="submit"> Connexion </button>
		</g:form>

    </body>
</html>