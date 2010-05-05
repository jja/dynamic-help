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
        <div class="body">
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
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="controller"><g:message code="helpTip.controller.label" default="Controller" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: helpTipInstance, field: 'url', 'errors')}">
                          <g:select optionKey="logicalPropertyName" optionValue="name" from="${grailsApplication.controllerClasses.sort{it.name}}" name="url" value="${helpTipInstance?.url}" ></g:select>
                                </td>
                            </tr>
    <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="url"><g:message code="helpTip.url.label" default="Published" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: helpTipInstance, field: 'published', 'errors')}">
                                    <g:checkBox name="published" value="${helpTipInstance?.published}" />
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
                                    <g:textArea cols="200" name="tipDescription"  value="${helpTipInstance?.tipDescription}" />
                                  </g:else>
                                </td>
                            </tr>
                        
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
