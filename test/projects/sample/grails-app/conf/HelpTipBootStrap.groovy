import org.grails.plugins.dynamichelp.*

class HelpTipBootStrap {

  def init = { servletContext ->

    println "Bootstrapping Help Tips"

    if (!HelpTip.list()) {
      new HelpTip(url:'book',tipSelector:"#name", tipTitle:"Book Name", tipDescription:'Enter Name of Book').save()

      def longDescription = """<p>Enter Author Name</p>
  <ul> 
    <li>Point 1</li>
    <li>Point 2</li>
  </ul>
  <p>End of Description</p>
  """
      new HelpTip(url:'book',tipSelector:"#authorName", tipTitle:"Author Name", tipDescription:longDescription).save()
    }

  }


  def destroy = {
  }
} 
