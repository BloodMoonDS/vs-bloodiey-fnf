function onCreate()
	-- background shit
	makeLuaSprite('skybox', 'stage/liltown/SkyBox', -600, -300);
	setScrollFactor('skybox', 1, 1);
	addLuaSprite('skybox', false);
	
	if not lowQuality then
		makeLuaSprite('SkyClouds', 'stage/liltown/TownClouds', -500, -300);
		setScrollFactor('SkyClouds', 1.3, 1.3);
		scaleObject('SkyClouds', 0.7, 0.7);

		makeLuaSprite('CityBack', 'stage/liltown/CityBG', -500, -300);
		setScrollFactor('CityBack', 1.3, 1.3);
		scaleObject('CityBack', 0.9, 0.9);

		addLuaSprite('SkyClouds', false);
	addLuaSprite('CityBack', false);
	end

	
	
	makeLuaSprite('stagefront', 'LilTownFront', -650, 600);
	setScrollFactor('stagefront', 1, 1);
	scaleObject('stagefront', 1.3, 1.3);

	-- sprites that only load if Low Quality is turned off
	
	
	addLuaSprite('stagefront', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end