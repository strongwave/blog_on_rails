/*
Author: Libo Cao Meyers
Date: 10/04/2011
Description: A javascript function that tests all modernizr supported html5/css3
             features for current browser. Alert will tell user the supported
             and non-supported feature for current browser. It contains a good
             list of html5 tags as well. 
*/
function testBrowserHtml5Support(){
	
	var browser_tests = [//html5 features
                    "applicationcache","canvas","canvastext", "audio","video",
                    "history","websockets","draganddrop", "hashchange",
                    "geolocation", "localstorage", "sessionstorage", "webworkers",
                    "postmessage", "websqldatabase","inlinesvg", "smil", "svg",
                    "svgclippaths", "touch", "webgl",
                    //input attributes
                    "input.autocomplete", "input.autofocus", "input.list",
                     "input.placeholder", "input.max", "input.min", "input.multiple",
                     "input.pattern", "input.required", "input.step",
                    //input types
                    "inputtypes.search","inputtypes.tel", "inputtypes.url",
                    "inputtypes.email", "inputtypes.datetime","inputtypes.date",
                    "inputtypes.month", "inputtypes.week", "inputtypes.time",
                    "inputtypes.datetimelocal", "inputtypes.number",
                    "inputtypes.range", "inputtypes.color",
                    //css features
                    "fontface", "backgroundsize", "borderimage",
                    "borderradius", "boxshadow", "flexbox", "multiplebgs",
                    "opacity","rgba", "textshadow", "hsla", "cssgradients",
                    "cssanimations", "csscolumns", "cssreflections", "csstransforms",
                    "csstransforms3d", "csstransitions"];
  //Modernizr.hasEvent('eventname', elem)
	var yArry=[], nArry=[];
	
	for (var t=0; t< browser_tests.length; t++) {   
		if (eval("Modernizr." + browser_tests[t])) {
			yArry.push(browser_tests[t]);
		}
		else {
			nArry.push(browser_tests[t]);
		}
	}
	
  alert_str = ""
  if (yArry.length > 0) {
    alert_str = "Your browser support the following HTML5/CSS3 features: \n" + yArry.join(", ") + "\n\n"
  }
  if (nArry.length > 0){
    alert_str +=  "Your browser does not support the following HTML5/CSS3 features: \n" + nArry.join(", ")   
  }
  
  alert(alert_str)
}
