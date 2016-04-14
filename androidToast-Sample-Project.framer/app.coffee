# Module created by Aaron James | April 14th, 2016
Android = require ("androidToast")

# Setting up the background and help text
bg = new BackgroundLayer
	backgroundColor: "#eeeeee"

helpText = new Layer
	width: 1080, height: 60
	backgroundColor: null
	superLayer: bg
helpText.html = "Tap anywhere to see a toast."
helpText.style =
	"font-size": "42px"
	"line-height": "60px"
	"font-family": "Roboto-Regular, Arial, sans-serif"
	"color": "rgba(0,0,0,0.24)"
	"text-align": "center"
helpText.center()

## Call module on click
bg.on Events.Click, ->
	Android.Toast("By default, toasts are one line.")