function onCreate()
	makeLuaSprite('1', 'stages/DaveAndBambi/3D_GreenVoid', -4000, -2000);
	setScrollFactor('1', 1, 1);
	scaleObject('1', 3.4, 3.6)
        addGlitchEffect('1',1,4,0.3)
    addLuaSprite('1', false);

	makeLuaSprite('2', 'stages/DaveAndBambi/3D_ExpungedVoid', -4000, -2000);
	setScrollFactor('2', 1, 1);
	scaleObject('2', 3.4, 3.6)
        addGlitchEffect('2',1,4,0.3)
	setProperty('2.visible', false)
    addLuaSprite('2', false);

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
	if curStep == 896 then
		setProperty('black.visible', false)
	end
	if curStep == 1024 then
		setProperty('2.visible', true)
		setProperty('1.visible', false)
	end
	if curStep == 1664 then
		setProperty('2.visible', false)
	end
end