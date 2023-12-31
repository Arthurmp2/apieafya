
<%@ page import="com.artson.eafya.Person" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'person.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="patientId" title="${message(code: 'person.patientId.label', default: 'Patient Id')}" />
                        
                            <g:sortableColumn property="maritalStatus" title="${message(code: 'person.maritalStatus.label', default: 'Marital Status')}" />
                        
                            <g:sortableColumn property="idNo" title="${message(code: 'person.idNo.label', default: 'Id No')}" />
                        
                            <g:sortableColumn property="firstName" title="${message(code: 'person.firstName.label', default: 'First Name')}" />
                        
                            <g:sortableColumn property="otherName" title="${message(code: 'person.otherName.label', default: 'Other Name')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${personInstanceList}" status="i" var="personInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${personInstance.id}">${fieldValue(bean: personInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: personInstance, field: "patientId")}</td>
                        
                            <td>${fieldValue(bean: personInstance, field: "maritalStatus")}</td>
                        
                            <td>${fieldValue(bean: personInstance, field: "idNo")}</td>
                        
                            <td>${fieldValue(bean: personInstance, field: "firstName")}</td>
                        
                            <td>${fieldValue(bean: personInstance, field: "otherName")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${personInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
