# Module created by Aaron James | November 21th, 2015
#
# Before using thise module, make sure to have the font Roboto-Regular installed
#
# Add the following line at the top of your project to access this module:
# android = require "androidToast"
#
# Reference the contents by using this function:
# android.toast("By default, toasts are one line.")
#
# Available options:
# toastSize: isTwoLines or isThreeLines will change the size of the toast to fit multiple lines.

exports.toast = (toastMessage, toastSize) ->
	heightMult = 1
	if toastSize == "isTwoLines" then heightMult = 1.44
	if toastSize == "isThreeLines" then heightMult = 1.88

	## Create toast BG layer
	toastBG = new Layer
		midX: Screen.width / 2, maxY: Screen.height - 96
		width: 864, height: 144 * heightMult
		borderRadius: 72
		backgroundColor: "rgba(50,50,50,100)"
		opacity: 0
		shadowX: 0, shadowY: 0, shadowBlur: 6, shadowColor: "rgba(0,0,0,0.24)"
	toastBG.states.add
		on: opacity: 1
		off: opacity: 0
	toastBG.states.animationOptions =
		curve: "ease-out"
		time: 0.4

	## Create toast message
	toastText = new Layer
		midX: toastBG.width / 2, y: 42
		width: toastBG.width - 144, height: toastBG.height - 88
		backgroundColor: null
		superLayer: toastBG
	toastText.html = toastMessage
	toastText.style =
		"font-size": "42px"
		"line-height": "60px"
		"font-family": "Roboto-Regular, Arial, sans-serif"
		"color": "#fff"

	## Animation on load
	toastBG.states.switch("on")
	toastBG.on Events.AnimationEnd, ->
		Utils.delay 4, ->
			toastBG.states.switch("off")
			toastBG.on Events.AnimationEnd, ->
				this.destroy()
