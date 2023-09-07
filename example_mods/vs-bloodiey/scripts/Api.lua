local module = {}

function onCreate()
    print("Loading The mod LOL")
end
function module.ChangeSprite(SpriteTag,Image,X,Y,Front,ScrollX,ScrollY)
    makeLuaSprite(SpriteTag,Image,X,Y);
    addLuaSprite(SpriteTag,Front);
    setScrollFactor(SpriteTag,ScrollX,ScrollY);
end


return module;

