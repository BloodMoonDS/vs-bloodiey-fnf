function onCreate()
    makeLuaSprite("watermark", "watermark", 0, 0);
    setScrollFactor("watermark",2,2);
    addLuaSprite("watermark",true);
    makeLuaText("sub", "Subscribe to all bloodiey channels", 512, 0, 0);
    addLuaText("sub");
    close(true);
end