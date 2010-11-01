
<%@ page import="wizza.Pizza" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'pizza.label', default: 'Pizza')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'pizza.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'pizza.description.label', default: 'Description')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'pizza.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="price" title="${message(code: 'pizza.price.label', default: 'Price')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${pizzaInstanceList}" status="i" var="pizzaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${pizzaInstance.id}">${fieldValue(bean: pizzaInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: pizzaInstance, field: "description")}</td>
                        
                            <td>${fieldValue(bean: pizzaInstance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: pizzaInstance, field: "price")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${pizzaInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
