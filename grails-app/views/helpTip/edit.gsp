<% def pluginManager = org.codehaus.groovy.grails.plugins.PluginManagerHolder.pluginManager %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'helpTip.label', default: 'HelpTip')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
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
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${helpTipInstance}">
            <div class="errors">
                <g:renderErrors bean="${helpTipInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${helpTipInstance?.id}" />
                <g:hiddenField name="version" value="${helpTipInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="controller"><g:message code="helpTip.controller.label" default="Controller" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: helpTipInstance, field: 'controller', 'errors')}">
                                    <g:textField name="controller" value="${helpTipInstance?.controller}" />
                                </td>
                            </tr>
                        
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tipSelector"><g:message code="helpTip.tipSelector.label" default="Tip Selector" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: helpTipInstance, field: 'tipSelector', 'errors')}">
                                    <g:textField name="tipSelector" value="${helpTipInstance?.tipSelector}" />
                                </td>
                            </tr>
                        
								    <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tipTitle"><g:message code="helpTip.tipTitle.label" default="Tip Title" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: helpTipInstance, field: 'tipTitle', 'errors')}">
                                    <g:textField name="tipTitle" value="${helpTipInstance?.tipTitle}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="tipDescription"><g:message code="helpTip.tipDescription.label" default="Tip Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: helpTipInstance, field: 'tipDescription', 'errors')}">
                                  <g:if test="${pluginManager.hasGrailsPlugin('ckeditor')}">
                                    <ckeditor:editor name="tipDescription" height="400px" width="80%" toolbar="Basic"> ${helpTipInstance?.tipDescription} </ckeditor:editor>
                                  </g:if>
                                  <g:elseif test="${pluginManager.hasGrailsPlugin('fckeditor')}">
                                   <fckeditor:editor name="tipDescription" width="100%" height="400" toolbar="Standard" fileBrowser="default"> ${helpTipInstance?.tipDescription}  </fckeditor:editor>
                                  </g:elseif>
                                  <g:elseif test="${pluginManager.hasGrailsPlugin('grailsUi')}">
                                    <gui:richEditor id='tipDescription' value='${helpTipInstance?.tipDescription}'/>
                                  </g:elseif>
                                  <g:elseif test="${pluginManager.hasGrailsPlugin('richui')}">
                                    <richui:richTextEditor name="tipDescription" value="${helpTipInstance?.tipDescription}" width="800" />
                                  </g:elseif>
                                  <g:else>
                                    <g:textArea width="500px" name="tipDescription"  value="${helpTipInstance?.tipDescription}" />
                                  </g:else>
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
