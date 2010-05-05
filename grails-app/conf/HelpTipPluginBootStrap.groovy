import org.grails.plugins.dynamichelp.*

class HelpTipPluginBootStrap {

  def init = { servletContext ->

    if (!HelpTip.findAllByUrl('helpTip')) {

      def longDescription = """<p>This is the tip selector, which follows jQuery Syntax.&nbsp;&nbsp; For most usage, you'll want to target an HTML element with ID field (i.t. input textbox or span).&nbsp;</p>
<p>In that case, if your input box has id <em>abc</em>, enter <em>#abc</em> into the tip selector.&nbsp;</p>"""
      new HelpTip(url:'helpTip',tipSelector:"#tipSelector", tipTitle:"Tip Selector", tipDescription:longDescription).save()
      new HelpTip(url:'helpTip',tipSelector:"#url", tipTitle:"URL / Controller", tipDescription: "<p>Select a controller from the drop down.&nbsp; Note - some of the controllers may be ones you don't usually have access to, or are renamed in the application.&nbsp;</p>").save()
		new HelpTip(url:'helpTip',tipSelector:"#tipTitle", tipTitle:"Tip Title ", tipDescription: "<p>This will be shown as the title, in bold.&nbsp;</p>" ).save()

    }

  }


  def destroy = {
  }
} 
