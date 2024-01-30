function onCreate()
	-- CHARACTER
	setPropertyFromClass('substates.GameOverSubstate', 'characterName', 'bf-dead');
	
	-- SOUNDS/MUSICS
	setPropertyFromClass('substates.GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --file goes inside sounds/ folder
	setPropertyFromClass('substates.GameOverSubstate', 'loopSoundName', 'gameOver'); --file goes inside music/ folder
	setPropertyFromClass('substates.GameOverSubstate', 'endSoundName', 'gameOverEnd'); --file goes inside music/ folder
end