function onCreate()
	makeLuaSprite('Sky','stages/FunCentralCorrupted/Sky', -600, -300);
	makeAnimatedLuaSprite('BG','stages/FunCentralCorrupted/StageAnim',-600, -300);
	makeLuaSprite('buildingCelling','stages/FunCentralCorrupted/Floor', -600, -300);
	if not lowQuality then -- if the game is not in low graphics mode

	else	-- optimized code for a toaster	

	end
	setScrollFactor('BG', 0.7, 0.7);
	setScrollFactor('Sky', 1, 1);
	addLuaSprite('Sky',false);
	addLuaSprite('BG',false);
	addLuaSprite('buildingCelling',false);

	close(true);
end

function onBeatHit()


end
function onStepHit()



end

function onUpdate()



end