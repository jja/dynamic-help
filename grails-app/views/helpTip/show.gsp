<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'helpTip.label', default: 'HelpTip')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="helpTip.id.label" default="Id" /></td>
                            <td valign="top" class="value">${fieldValue(bean: helpTipInstance, field: "id")}</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="helpTip.published.label" default="Published" /></td>
									  <td valign="top" class="value"> <g:checkBox disabled="disabled" name="published" value="${helpTipInstance?.published}" />  </td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="helpTip.url.label" default="Controller" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: helpTipInstance, field: "url")}</td>
                            
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="helpTip.tipSelector.label" default="Tip Selector" /></td>
                            <td valign="top" class="value">${fieldValue(bean: helpTipInstance, field: "tipSelector")}</td>
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="helpTip.tipTitle.label" default="Tip Title" /></td>
                            <td valign="top" class="value">${fieldValue(bean: helpTipInstance, field: "tipTitle")}</td>
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="helpTip.tipDescription.label" default="Tip Description" /></td>
                            <td valign="top" class="value">${fieldValue(bean: helpTipInstance, field: "tipDescription")}</td>
                        </tr>
                    
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${helpTipInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
