-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

display.setDefault( "background", 0, 255, 174 )

local answerTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 200, 75 )
answerTextField.id = "answer textField"

local enterButton = display.newImageRect( "MyAssets/button.png", 157, 157 )
enterButton.x = display.contentCenterX
enterButton.y = display.contentCenterY 
enterButton.id = "enter button"
 
local function enterButtonTouch( event )
    -- it is not perfect, but we will make it better soon
    print( answerTextField.text )

    return true
end

enterButton:addEventListener( "touch", enterButtonTouch )