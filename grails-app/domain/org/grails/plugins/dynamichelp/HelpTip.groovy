package org.grails.plugins.dynamichelp

class HelpTip {

    static constraints = {
	   controller(nullable:true)
	   tipSelector()
	   tipTitle()
	   tipDescription(widget:'textarea')
    }

	 String controller
	 String tipSelector
	 String tipTitle
	 String tipDescription

}
