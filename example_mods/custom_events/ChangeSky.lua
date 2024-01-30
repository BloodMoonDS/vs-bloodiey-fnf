function onEvent(name, value1, value2)
    if name == "Change Sky To Red" then
        makeLuaSprite('Sky','stages/FunCentralRuins/Sky', -600, -300);
        setScrollFactor('Sky', 1, 1);
        addLuaSprite('Sky',false);
    end
end