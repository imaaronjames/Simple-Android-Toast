# Module created by Aaron James | November 21th, 2015
android = require ("androidToast")

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
	android.toast("By default, toasts are one line.")