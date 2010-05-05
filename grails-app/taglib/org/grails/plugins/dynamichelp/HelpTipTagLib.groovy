package org.grails.plugins.dynamichelp

class HelpTipTagLib {

  def helpTips = { attrs ->
    if (attrs.url) {
      //println "${attrs}"
      //def helpTips = HelpTip.findAllByUrl(attrs.url)
      def helpTips = HelpTip.findAllByPublishedAndUrl(true, attrs.url)
      if (helpTips) {
        //println "${attrs.includeJQuery}"
        if (attrs.includeJQuery==null || attrs.includeJQuery==true) {
          out << "<script type=\"text/javascript\" src=\"" + resource(dir: pluginContextPath, file: "/js/jquery/jquery-1.3.2.js" ) + "\"></script>"
        }
        if (attrs.includeJQueryUI==null || attrs.includeJQueryUI==true) {
          out << "<link rel='stylesheet' href=\"" + resource(dir: pluginContextPath, file: "/css/jquery/jquery-ui-1.7.2.custom.css" ) + "\"/>"
          out << "<script type=\"text/javascript\" src=\"" + resource(dir: pluginContextPath, file: "/js/jquery/jquery-ui-1.7.2.js" ) + "\"></script>"
		  }
        out << "<script type=\"text/javascript\" src=\"" + resource(dir: pluginContextPath, file: "/js/jquery/jquery.bt.custom.js" ) + "\"></script>"
        out << "<link rel='stylesheet' href=\"" + resource(dir: pluginContextPath, file: "/css/famfamfam.css" ) + "\"/>"
        out << "<script type=\"text/javascript\" src=\"" + resource(dir: pluginContextPath, file: "/js/jquery/dynamichelp.js" ) + "\"></script>"
        out << '<script type="text/javascript">\n'
        helpTips.each {
          out << "dynamichelp.createTip(\"${it.id}\", \"${it.tipSelector}\",\"${it.tipTitle}\",\"${it.tipDescription?.encodeAsJavaScript()}\");\n"
        }
        out << "</script>\n"
      } else  {
        out << "<!-- No HelpTips for Controller ${attrs.controller}. --> "
      }
    } else {
      throw new Exception("Parameter Controller Not Set in TagLib helpTips")
    }

  }

}
