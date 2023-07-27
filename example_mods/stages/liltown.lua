function onCreate()
	-- background shit
	makeLuaSprite('skybox', 'stage/liltown/SkyBox', -400, -300);
	setScrollFactor('skybox', 1, 1);

	makeLuaSprite('stagefront', 'stage/liltown/LilTownFront', -400, -300);
	setScrollFactor('stagefront', 1, 1);
	scaleObject('stagefront', 1, 1);
	
	if not lowQuality then

		makeLuaSprite('CITYBG', 'stage/liltown/CityBG', -400, -300);
		setScrollFactor('CITYBG', 1, 1);
		scaleObject('CITYBG', 1, 1);

		makeLuaSprite('SkyClouds', 'stage/liltown/TownClouds', -400, -300);
		setScrollFactor('SkyClouds', 1, 1);
		scaleObject('SkyClouds', 1, 1);

	end

	-- sprites that only load if Low Quality is turned off
	
	addLuaSprite('skybox', false);
	
	if not lowQuality then
		addLuaSprite('SkyClouds', false);
		addLuaSprite('CITYBG', false);
	end
	
	addLuaSprite('stagefront', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end