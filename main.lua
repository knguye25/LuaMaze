local composer = require "composer"
display.setStatusBar( display.HiddenStatusBar )
-- load scene1
local options = {
    effect = "fade",
    time = 500,
    params = {
        someKey = "someValue",
        someOtherKey = 10
    }
}
composer.gotoScene( "splashScene", options )
