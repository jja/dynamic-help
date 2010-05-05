package org.grails.plugins.dynamichelp

class HelpTip {

    static constraints = {
	   url()
	   published()
	   tipSelector()
	   tipTitle()
	   tipDescription(widget:'textarea', maxSize:10000)
    }

	 String url
	 String tipSelector
	 String tipTitle
	 String tipDescription
	 boolean published = true

}
