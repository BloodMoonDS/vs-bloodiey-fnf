function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		--noteSplashTexture
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Powernote' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'POWER_ASSETS');	--Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.04'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.5'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'POWER_SPLASHES');
			
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Powernote' then
		cameraShake('game', 0.02, 0.25);
		characterPlayAnim('dad', 'attack', true);
		characterPlayAnim('bf', 'dodge', true);
		characterPlayAnim('gf', 'scared', true);
		playSound("bloodieyblast",1, "blastsound");
		-- put something here if you want
	end
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Powernote' then
		cameraShake('game', 0.02, 0.25);
		characterPlayAnim('dad', 'attack', true);
		characterPlayAnim('bf', 'hurt', true);
		characterPlayAnim('gf', 'scared', true);
		playSound("bloodieyblast",1, "blastsound");
		playSound("bfcolidewithshock",1, "blastsound2");
		-- put something here if you want
	end
end