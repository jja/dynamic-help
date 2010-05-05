<%@ page import="org.grails.plugins.dynamichelp.HelpTip" %>




<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title><g:message code="HelpTip.list" default="HelpTip List" encodeAs="HTML"/></title>


    </head>
    <body>

        <div class="body">
            <h1>
            	<g:message code="HelpTip.list" default="Help Tips" encodeAs="HTML"/>
            <span class="menuButton"><g:link class="create" action="create">New Help Tip</g:link></span>
            </h1>
            <g:hasErrors bean="${helpTipInstance}">
            <div class="errors">
                <g:renderErrors bean="${helpTipInstance}" as="list" />
            </div>
            </g:hasErrors>
            
		            <g:if test="${!helpTipInstanceList}">
						<g:message code="empty.list" default="No records available." encodeAs="HTML"/>
					</g:if>            
					<g:else>
                      <div class="list" width="100%" style="overflow-y:auto;height:600px; ">
              <table>
                  <thead>
                      <tr>
                        <th></th>
							<g:sortableColumn property="id" title="${message(code:'HelpTip.id.label', default:'Id')}" />
					
							<g:sortableColumn property="url" title="${message(code:'HelpTip.url.label', default:'Url')}" />
					
							<g:sortableColumn property="published" title="${message(code:'HelpTip.published.label', default:'Published')}" />
					
							<g:sortableColumn property="tipSelector" title="${message(code:'HelpTip.tipSelector.label', default:'Tip Selector')}" />
					
							<g:sortableColumn property="tipTitle" title="${message(code:'HelpTip.tipTitle.label', default:'Tip Title')}" />
					
							<g:sortableColumn property="tipDescription" title="${message(code:'HelpTip.tipDescription.label', default:'Tip Description')}" />
					
                        </tr>
                    </thead>
                    <tbody>
<tr>
		<g:form action="list" method="post" >
		                        	 
</g:form>
			                     </tr>
										<g:each in="${helpTipInstanceList}" status="i" var="helpTipInstance">
										<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
										

					                    <td width=60px>
					   						<g:if test="${params.callback}"> 
					   							<g:link action="choose" params="${params}" id="${helpTipInstance.id}"><img src='<g:resource dir="images/skin" file="database_add.png"/>' alt="Associate"/></g:link>
											</g:if>  

										<g:if test="${params?.callback==null}"> 
						                       <!-- <g:link action="show" id="${helpTipInstance.id}">${fieldValue(bean:helpTipInstance, field:'id')}</g:link>-->
												<g:link action="show" id="${helpTipInstance.id}"><img src='<g:resource dir="images/skin" file="information.png"/>' alt="Show"/></g:link>
												<g:link action="edit" id="${helpTipInstance.id}"><img src='<g:resource dir="images/skin" file="database_edit.png"/>' alt="Edit"/></g:link>
												<g:link action="delete" onclick="return confirm('${message(code:'delete.confirm', default:'Are you sure?', encodeAs:'HTML')}');" id="${helpTipInstance.id}"><img src='<g:resource dir="images/skin" file="database_delete.png"/>' alt="Delete"/></g:link>
					                    </g:if>
					                    </td>

										<td style="" class="number"><g:formatNumber number="${helpTipInstance.id}" format="###,##0"/>&nbsp;</td>
				                        		
				                        <td style="" class="value">${fieldValue(bean:helpTipInstance, field:"url")}&nbsp;</td>
				                        		
										<td style="" class="checkbox"><g:checkBox class="checkbox" name="published" disabled="true" checked="${fieldValue(bean:helpTipInstance, field:'published')}" value="${fieldValue(bean:helpTipInstance, field:'published')}"></g:checkBox></td>
												 
				                        <td style="" class="value">${fieldValue(bean:helpTipInstance, field:"tipSelector")}&nbsp;</td>
				                        		
				                        <td style="" class="value">${fieldValue(bean:helpTipInstance, field:"tipTitle")}&nbsp;</td>
				                        		
				                        <td style="" class="value">${fieldValue(bean:helpTipInstance, field:"tipDescription")}&nbsp;</td>
				                        		
                              </tr>
                              </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${helpTipInstanceTotal}" params="${params}"/>
            </div>
					</g:else>

<div class="nav">
  <!-- <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>-->
            <span class="menuButton"><g:link class="create" action="create">New HelpTip</g:link></span>
        </div>
        </div>

    
    </body>
</html>


