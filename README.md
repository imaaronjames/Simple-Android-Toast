# Simple-Android-Toast
Use this module to easily add Android toasts to your Framer Studio projects.

## Installation

1. Download the androidToast.coffee file.
2. Create a Framer project and drop androidToast.coffee inside your /modules folder.
3. Add `android = require 'androidToast'` at the top of your document.

Before using this module, make sure to have the font Roboto-Regular installed

More info about modules for Framer Studio: [FramerJS Docs - Modules](http://framerjs.com/docs/#modules)

![TextLayer](https://raw.githubusercontent.com/imaaronjames/Simple-Android-Toast/master/androidToast-Sample-Project.framer/images/sample.png)

## How to use this module
You only need one line of code to make Simple Android Toast work. It looks a little something like this:

  `android.toast("By default, toasts are one line")`

or, if your toast requires more than one line, the code could look like this:

  `android.toast("If your toast is a little longer, you can make your toast larger", "isTwoLines")`

### Simple customization
There are two parameters you can change: toastMessage and toastSize

**toastMessage** (string) -- This is your message you wish to show

**toastSize** (string) -- isTwoLines and isThreeLines will change the height of the toast

___
That's it! the toast will automatically animate in for you and destroy itself when there it's no longer visible. Simple.
