
<%@ page import="wizza.Drink" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'drink.label', default: 'Drink')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'drink.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'drink.description.label', default: 'Description')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'drink.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="price" title="${message(code: 'drink.price.label', default: 'Price')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${drinkInstanceList}" status="i" var="drinkInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${drinkInstance.id}">${fieldValue(bean: drinkInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: drinkInstance, field: "description")}</td>
                        
                            <td>${fieldValue(bean: drinkInstance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: drinkInstance, field: "price")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${drinkInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
