<% def pluginManager = org.codehaus.groovy.grails.plugins.PluginManagerHolder.pluginManager %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'helpTip.label', default: 'HelpTip')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>

        <g:if test="${pluginManager.hasGrailsPlugin('ckeditor')}">
            <ckeditor:resources />
        </g:if>
        <g:elseif test="${pluginManager.hasGrailsPlugin('grailsUi')}">
            <gui:resources components="richEditor"/>
        </g:elseif>
        <g:elseif test="${pluginManager.hasGrailsPlugin('richui')}">
            <resource:richTextEditor />
        </g:elseif>

    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body" style="position:relative;">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${helpTipInstance}">
            <div class="errors">
                <g:renderErrors bean="${helpTipInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                            <g:render template="edit" />
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
