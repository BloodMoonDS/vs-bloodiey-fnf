function onEvent(name, value1, value2)
    if name == "Switch Skybox" then
        makeLuaSprite('Sky','stages/FunCentral/Sky', -600, -300);
        setScrollFactor('Sky', 1, 1);
        addLuaSprite('Sky',false);
    end
end