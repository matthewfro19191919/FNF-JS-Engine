function onCreate()
	makeLuaSprite('black', 'stages/black', -800, -600);
	setScrollFactor('black', 0, 0);
	scaleObject('black', 2.2, 2.2)
	setProperty('black.visible', false)
    addLuaSprite('black', true);

end

function onStepHit()
	if curStep == 895 then
		setProperty('black.visible', true)
	end
	if curStep == 1408 then
		setProperty('black.visible', false)
	end
end