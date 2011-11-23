                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="url"><g:message code="helpTip.url.label" default="URL/Controller" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: helpTipInstance, field: 'url', 'errors')}">
                                    <g:select optionKey="logicalPropertyName" optionValue="name" from="${grailsApplication.controllerClasses.sort{it.name}}" name="url" value="${helpTipInstance?.url}" ></g:select>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="published"><g:message code="helpTip.published.label" default="Published" /></label>
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
