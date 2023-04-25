function onCreate()
    if not lowQuality then
        makeLuaSprite("watermark", "watermark.png", 0, 0);
        setScrollFactor("watermark",2,2);
        addLuaSprite("watermark",true);
        makeLuaText("sub", "Subscribe to all bloodiey channels", 512, 0, 0);
        addLuaText("sub");
        close(true);
    else
        makeLuaText("sub2", "Sub to all bloodiey channels", 512, 0, 0);
        addLuaText("sub2");
    end
end