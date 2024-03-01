-- Event notes hooks
function onEvent(name, value1, value2)
	local opponentX = getCharacterX("dad");
	local opponentY = getCharacterY("dad");
	local ofsx = -140
	local ofsy = -20
	if name == 'Effect Aura' then
		--debugPrint('Event triggered: ', name, value1, value1);
		makeAnimatedLuaSprite("PowerAura", "VFX/PowerAura" ,opponentX+ofsx , opponentY+ofsy);
		addAnimationByPrefix("PowerAura", "PowerAura", "PowerAura", 24, true)
		--setGraphicSize("PowerAura", 1 ,1)
		scaleObject("PowerAura",1.5,1.5)
		setObjectOrder("PowerAura", -30)
		playSound("bloodieytransform", 1, null)
		local Onoff = tonumber(value1);
		local tensiontransition = value2
		if Onoff == 1 then
			addLuaSprite("PowerAura",false);
			--playSound("bloodieyblast",1, "pap");
		else
			removeLuaSprite("PowerAura", false);
			--playSound("bfcolidewithbloodieyt",1, "pap");
		end

		--setProperty('skybox.alpha', tensionamount);
		--doTweenAlpha('tensiontween', 'skybox', tensionamount, tensiontransition, 'linear');
		--[[
		duration = tonumber(value1);
		if duration < 0 then
			duration = 0;
		end

		targetAlpha = tonumber(value2);
		if duration == 0 then
			setProperty('dad.alpha', targetAlpha);
			setProperty('iconP2.alpha', targetAlpha);
		else
			doTweenAlpha('dadFadeEventTween', 'dad', targetAlpha, duration, 'linear');
			doTweenAlpha('iconDadFadeEventTween', 'iconP2', targetAlpha, duration, 'linear');
		end
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
		]]
	end
end