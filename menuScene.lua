 local composer = require( "composer" )
local scene = composer.newScene()
local physics = require ("physics")

physics.start()
physics.setGravity(0,0)

-- -----------------------------------------------------------------------------------------------------------------
-- All code outside of the listener functions will only be executed ONCE unless "composer.removeScene()" is called.
-- -----------------------------------------------------------------------------------------------------------------

-- local forward references should go here

-- -------------------------------------------------------------------------------


-- "scene:create()"
function scene:create( event )
    local sceneGroup = self.view

    local background, player, lineSeperator, movesDisp, boxesDisp
    local moves=0
    local width, height
    width = display.actualContentWidth
    height = display.actualContentHeight

    local function onCollision (event)
      -- body...
    end

    background = display.newRect(sceneGroup,0,0,width,height)
    background.x = width/2
    background.y = height/2
    background:setFillColor(58/255,160/255,75/255)

    player = display.newImage(sceneGroup,"ball.png", 10,10 )
    player.x = player.width
    player.y = player.height
    player.name = "player"
    physics.addBody(player,"dynamic")

    lineSeperator = display.newLine( sceneGroup, width*0.75,0, width*0.75, height)
    movesDisp = display.newText(sceneGroup, "Moves: ".. moves, width*.85,10,native.systemFont,22)
    movesDisp:setFillColor(0.1,0.1,0.1)
    boxesDisp = display.newText(sceneGroup, "Boxes: ".. moves, width*.85,40,native.systemFont,22)
    boxesDisp:setFillColor(186/255,138/255,10/255)

end


-- "scene:show()"
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Called when the scene is still off screen (but is about to come on screen).
    elseif ( phase == "did" ) then
        -- Called when the scene is now on screen.
        -- Insert code here to make the scene come alive.
        -- Example: start timers, begin animation, play audio, etc.
    end
end


-- "scene:hide()"
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Called when the scene is on screen (but is about to go off screen).
        -- Insert code here to "pause" the scene.
        -- Example: stop timers, stop animation, stop audio, etc.
    elseif ( phase == "did" ) then
        -- Called immediately after scene goes off screen.
    end
end


-- "scene:destroy()"
function scene:destroy( event )

    local sceneGroup = self.view

    -- Called prior to the removal of scene's view ("sceneGroup").
    -- Insert code here to clean up the scene.
    -- Example: remove display objects, save state, etc.
end


-- -------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-- -------------------------------------------------------------------------------

return scene
