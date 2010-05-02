<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'helpTip.label', default: 'HelpTip')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'helpTip.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="controller" title="${message(code: 'helpTip.controller.label', default: 'Controller')}" />
                        
                            <g:sortableColumn property="tipTitle" title="${message(code: 'helpTip.tipTitle.label', default: 'Tip Title')}" />
                        
                            <g:sortableColumn property="tipSelector" title="${message(code: 'helpTip.tipSelector.label', default: 'Tip Selector')}" />
                        
                            <g:sortableColumn property="tipDescription" title="${message(code: 'helpTip.tipDescription.label', default: 'Tip Description')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${helpTipInstanceList}" status="i" var="helpTipInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${helpTipInstance.id}">${fieldValue(bean: helpTipInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: helpTipInstance, field: "controller")}</td>
                        
                            <td>${fieldValue(bean: helpTipInstance, field: "tipTitle")}</td>
                        
                            <td>${fieldValue(bean: helpTipInstance, field: "tipSelector")}</td>
                        
                            <td>${fieldValue(bean: helpTipInstance, field: "tipDescription")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${helpTipInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
