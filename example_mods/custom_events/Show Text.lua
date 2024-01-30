-- Event "Show Text" Made by bloodiey
function onEvent(name, value1, value2)
	if name == 'Show Text' then
		makeLuaText(value1,value1, 900, 180,300)
		setTextString(value1,  '' .. value1)
		setTextFont(value1, 'vcr.ttf')
		setTextColor(value1, '0xffffff')
		setTextSize(value1, 45);
		addLuaText(value1);
		doTweenAlpha(value1.."Alpha", value1, 0, tonumber(value2), "linear")
	end
end