function onCreate()
	makeLuaSprite('1', 'stages/DaveAndBambi/redsky', -4500, -2500);
	setScrollFactor('1', 1, 1);
	scaleObject('1', 3.4, 3.6)
        addGlitchEffect('1',1,4,0.3)
    addLuaSprite('1', false);

	makeLuaSprite('a', 'stages/DaveAndBambi/land', -50, 450);
	setScrollFactor('a', 1, 1);
	scaleObject('a', 2, 2)
    addLuaSprite('a', false);

	makeLuaSprite('black', 'stages/black', -800, -600);
	setScrollFactor('black', 0, 0);
	scaleObject('black', 2.2, 2.2)
	setProperty('black.visible', false)
    addLuaSprite('black', true);

end

function onStepHit()
	if curStep == 640 then
		setProperty('black.visible', true)
	end
	if curStep == 832 then
		setProperty('black.visible', false)
	end
end