
--[[
function onCreate()
    makeLuaSprite("watermark", "watermark", 0, 0);
    setScrollFactor("watermark",1,1);
    addLuaSprite("watermark",true);
    makeLuaText("sub", "Subscribe to all bloodiey channels", 512, 1, 1);
    addLuaText("sub");
    close(true);
end
]]