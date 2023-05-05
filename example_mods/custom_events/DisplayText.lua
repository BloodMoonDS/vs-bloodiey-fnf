function onEvent(name, value1, value2) --not working yet will be used later...
    if name == "DisplayText" then
        makeLuaText("Text", , width:Int, x:Float, y:Float)
        setTextFont("Text", "Bloody400.ttf");
        setTextString("Text",value2 ) 
        if value1 == "1" then

            setTextColor("Text", "Red")
        end
    end
end