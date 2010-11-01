<html>
    <head>
        <title><g:layoutTitle default="WIZZA_APP" /></title>
        
        
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="stylesheet" href="${resource(dir:'css',file:'wizzaStyle.css')}" />
        
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        
        <g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body>
    	<div id="global">
    	
	        <div id="header">
	        	<p> BANNIERE - HORAIRE - TEL</p>
	        </div>
	        
	        <div id="navigation">
	        	<g:link controller="accueil" action="show">Accueil</g:link>
	        	<g:link controller="pizza" action="list">Pizzas</g:link>
	        	<g:link controller="drink" action="list">Boissons</g:link>
	        	<g:link controller="dessert" action="list">Desserts</g:link>
	        </div>
	        
	        <div id="menuGauche">
	        	<g:if test="${session.user != null}">
	        		<p>display ${session.user} option
	        			stats
	        			infos
	        			prefs
	        			logout
	        			etc...</p>
	        	</g:if>
	        	<g:else>
	        		<form action="login/show">
		        		<button type="submit">Se connecter</button>
	        		</form>
	        	</g:else>
	        	
	        </div>

	        <div id="menuDroit">
	        	<p>Cadi - resume</p>
	        </div>
	        
	        <div id="body">
		        <g:layoutBody />
	        </div>
	        
	        
	        <div id="footer">
	        	Copyright WIZZA 
	        </div>
	    </div>
    </body>
</html>