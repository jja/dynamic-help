class DynamicHelpGrailsPlugin {
    // the plugin version
    def version = "0.4"
    // the version or versions of Grails the plugin is designed for
    def grailsVersion = "1.2.2 > *"
    // the other plugins this plugin depends on
    def dependsOn = [:]
	 //soft dependencies on the editor plugins - if any isntalled, will use their editor for editing help tips.
    def loadAfter = ['ckeditor', 'fckeditor', 'richui', 'grailsui']
    // resources that are excluded from plugin packaging
    def pluginExcludes = [
            "grails-app/views/error.gsp"
    ]

    // TODO Fill in these fields
    def author = "Jean Barmash, John Allison"
    //def authorEmail = "jean.barmash@gmail.com"
    def authorEmail = "jja@sinequanon.net"
    def title = "Dynamically add help messages that are editable"
    def description = '''\\
This plugin is designed as a mini-cms for help, so nondevelopers can maintain help throughout the site.  It injects help tips into pages by defining help tips domain obects.   Designed to be completely unobtrusive (dynamically adds the code through ajax, and only where help exists).   
'''

    // URL to the plugin's documentation
    //def documentation = "http://grails.org/plugin/dynamic-help"
    def documentation = "https://github.com/jja/dynamic-help/blob/master/README"

    def doWithWebDescriptor = { xml ->
        // TODO Implement additions to web.xml (optional), this event occurs before 
    }

    def doWithSpring = {
        // TODO Implement runtime spring config (optional)
    }

    def doWithDynamicMethods = { ctx ->
        // TODO Implement registering dynamic methods to classes (optional)
    }

    def doWithApplicationContext = { applicationContext ->
        // TODO Implement post initialization spring config (optional)
    }

    def onChange = { event ->
        // TODO Implement code that is executed when any artefact that this plugin is
        // watching is modified and reloaded. The event contains: event.source,
        // event.application, event.manager, event.ctx, and event.plugin.
    }

    def onConfigChange = { event ->
        // TODO Implement code that is executed when the project configuration changes.
        // The event is the same as for 'onChange'.
    }
}
