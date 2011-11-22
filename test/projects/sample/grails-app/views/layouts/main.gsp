<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />

        <!-- unfortunately, jquery-ui plugin is broken and always looks inside the plugin for the theme/themedir;
             it's included css has a bad transparent dialog box, so let's use dynamic-help's customized version
        -->
        <g:helpTips url="$controllerName" includeJQuery="${true}" includeJQueryUI="${true}"/>

       <%--  <g:javascript library="application" />--%>
    </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="Spinner" />
        </div>
        <div id="grailsLogo" class="logo"><a href="http://grails.org"><img src="${resource(dir:'images',file:'grails_logo.png')}" alt="Grails" border="0" /></a></div>
        <g:layoutBody />
    </body>
</html>
