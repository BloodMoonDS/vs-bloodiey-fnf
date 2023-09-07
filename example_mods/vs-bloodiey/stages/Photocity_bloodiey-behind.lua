function onCreate()
	makeLuaSprite('Sky','stages/FunCentral/Sky', -600, -300);
	makeAnimatedLuaSprite('BG','stages/FunCentral/StageAnim',-600, -300);
	makeLuaSprite('buildingCelling','stages/FunCentral/Floor', -600, -300);
	if not lowQuality then -- ima optimizing this shit for a tosater

	else

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