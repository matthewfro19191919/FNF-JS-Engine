function onCreate()
	makeLuaSprite('grass', 'stages/DaveAndBambi/grass', -832, 505);
	makeLuaSprite('gate', 'stages/DaveAndBambi/gate', -755, 250);
	setScrollFactor('gate', 0.9, 1);
	makeLuaSprite('hills', 'stages/DaveAndBambi/hills', -834, -159);
	setScrollFactor('hills', 0.7, 0.7);
	makeLuaSprite('sky', 'stages/DaveAndBambi/ICANTBELIEVEIHAVETOCLARIFYTHIS', -500, -200);
	setScrollFactor('sky', 0.5, 0.5);
	makeLuaSprite('redsky', 'stages/DaveAndBambi/redsky', -600, -200);
	addGlitchEffect('redsky', 2, 5);
	setProperty('redsky.antialiasing', false)
	makeLuaSprite('redskyinsanity', 'stages/DaveAndBambi/redsky_insanity', -600, -200);
	addGlitchEffect('redskyinsanity', 2, 5);

	addLuaSprite('sky', false);
	addLuaSprite('hills', false);
	addLuaSprite('gate', false);
	addLuaSprite('grass', false)
end