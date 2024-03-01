-- Tension Script made by bloodiey 2023 :D

--Config
local aggresivity = 15 --amount of pressure that applies (don't use too high values please)
local tween_speed = 0.000000001 -- speed of the tweeening
local ZoomIncrement =1 --zoom increment does not make the zoom more aggresive
--[[
ZoomIncrement = 0.5 zoomed out relative to the original position
ZoomIncrement = 1.2 zoomed in relative to the original position

aggresivity: values above 17 may get you dizzy

]]

--end config 
local DefaultYPos = 570; -- by default is gonna be this value
function onCreate()
    
end
function onCountdownTick(counter)
    
	if counter == 0 then
        --[[
        if  getPropertyFromClass('ClientPrefs', 'downScroll') ==false then
            setPropertyFromClass("ClientPrefs", "downScroll", true);
             -- forces the player to be in downscroll
        end
        ]]
        
	end
end
function onUpdate(elapsed)songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/24)

    --Check if the note is an Instakill Note
    --noteSplashTexture
    --[[
    if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Powernote' then
        setPropertyFromGroup('unspawnNotes', i, 'texture', 'POWER_ASSETS');	--Change texture
        setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.04'); --Default value is: 0.023, health gained on hit
        setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.5'); --Default value is: 0.0475, health lost on miss
        setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
        setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'POWER_SPLASHES');
        
        if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
            setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
        end
    end
    --]]
    if  getPropertyFromClass('ClientPrefs', 'downScroll') ==false then
        DefaultYPos = 300
    else
        DefaultYPos = 570
    end
    local eqagg = aggresivity*-1;
    local moveEquation = math.cos(currentBeat*2)*eqagg;
    
    --saving code
    --strumY0 = getPropertyFromGroup('strumGroup', 0, 'y');
    
    -- used to get the strums in his right place, it was glitched with the bf notes
--[[
    strumY0 = getPropertyFromGroup('members', 0, 'y');
    strumY1 = getPropertyFromGroup('members', 1, 'y');
    strumY2 = getPropertyFromGroup('members', 2, 'y');
    strumY3 = getPropertyFromGroup('members', 3, 'y');

    strumY4 = getPropertyFromGroup('members', 4, 'y');
    strumY5 = getPropertyFromGroup('members', 5, 'y');
    strumY6 = getPropertyFromGroup('members', 6, 'y');
    strumY7 = getPropertyFromGroup('members', 7, 'y');
]]
    local zom = getProperty('defaultCamZoom')
    -- Y tween
    noteTweenY("bounce0",0, DefaultYPos+moveEquation,tween_speed,"linear");
    noteTweenY("bounce1",1, DefaultYPos+moveEquation*-1,tween_speed,"linear");
    noteTweenY("bounce2",2, DefaultYPos+moveEquation,tween_speed,"linear");
    noteTweenY("bounce3",3, DefaultYPos+moveEquation*-1,tween_speed,"linear");
    

    --debugPrint(currentBeat)
    noteTweenY("bounce4",4, DefaultYPos+moveEquation,tween_speed,"linear");
    noteTweenY("bounce5",5, DefaultYPos+moveEquation*-1,tween_speed,"linear");
    noteTweenY("bounce6",6, DefaultYPos+moveEquation,tween_speed,"linear");
    noteTweenY("bounce7",7, DefaultYPos+moveEquation*-1,tween_speed,"linear");

    -- Tween X

    noteTweenY("bounce0",0, DefaultYPos+moveEquation,tween_speed,"linear");
    noteTweenY("bounce1",1, DefaultYPos+moveEquation*-1,tween_speed,"linear");
    noteTweenY("bounce2",2, DefaultYPos+moveEquation,tween_speed,"linear");
    noteTweenY("bounce3",3, DefaultYPos+moveEquation*-1,tween_speed,"linear");

    noteTweenY("bounce4",4, DefaultYPos+moveEquation,tween_speed,"linear");
    noteTweenY("bounce5",5, DefaultYPos+moveEquation*-1,tween_speed,"linear");
    noteTweenY("bounce6",6, DefaultYPos+moveEquation,tween_speed,"linear");
    noteTweenY("bounce7",7, DefaultYPos+moveEquation*-1,tween_speed,"linear");

    local zoomequation = zom+moveEquation*0.001
    local finalZoom = zoomequation*ZoomIncrement
    --setProperty('defaultCamZoom', zoomequation)
    doTweenZoom('in','camGame',finalZoom,tween_speed,'linear')
    --triggerEvent("Zoom camera",tostring(zoomequation))
    --debugPrint(getProperty('defaultCamZoom'))
end