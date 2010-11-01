
<%@ page import="wizza.Dessert" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'dessert.label', default: 'Dessert')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'dessert.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'dessert.description.label', default: 'Description')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'dessert.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="price" title="${message(code: 'dessert.price.label', default: 'Price')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${dessertInstanceList}" status="i" var="dessertInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${dessertInstance.id}">${fieldValue(bean: dessertInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: dessertInstance, field: "description")}</td>
                        
                            <td>${fieldValue(bean: dessertInstance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: dessertInstance, field: "price")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${dessertInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
