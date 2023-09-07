function onCreate()
	makeLuaSprite('Sky','stages/FunCentralRuins/Sky', -600, -300);
	makeAnimatedLuaSprite('BG','stages/FunCentralRuins/StageAnim',-600, -300);
	makeLuaSprite('buildingCelling','stages/FunCentralRuins/Floor', -600, -300);
	if not lowQuality then

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