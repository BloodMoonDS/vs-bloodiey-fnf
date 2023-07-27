-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Zoom Camera' then
		debugPrint(value1)
		setProperty('defaultCamZoom',tonumber(value1));
	end
end