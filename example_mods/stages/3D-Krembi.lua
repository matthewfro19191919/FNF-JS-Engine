function onCreate()
	makeLuaSprite('1', 'stages/Extrended-Universe/3D_RedVoid', -2500, -1500);
	setScrollFactor('1', 1, 1);
	scaleObject('1', 3.4, 3.6)
        addGlitchEffect('1',1,4,0.3)
    addLuaSprite('1', false);

	makeLuaSprite('a', 'stages/Extrended-Universe/KrembIsland', -50, -250);
	setScrollFactor('a', 1, 1);
	scaleObject('a', 2, 2)
    addLuaSprite('a', false);

	makeLuaSprite('1a', 'stages/Extrended-Universe/cristals', -50, -250);
	setScrollFactor('1a', 1, 1);
	scaleObject('1a', 0.5, 0.5)
    addLuaSprite('1a', false);

	makeLuaSprite('black', 'stages/black', -800, -600);
	setScrollFactor('black', 0, 0);
	scaleObject('black', 2.2, 2.2)
	setProperty('black.visible', false)
    addLuaSprite('black', true);

end

function onCreatePost()
  	setProperty('1a.antialiasing', false)
end

function onStartCountdown()
	doTweenAngle('spinnie', '1a', 600, 210)
end

function onStepHit()
	if curStep == 1535 then
		setProperty('black.visible', true)
	end
	if curStep == 1792 then
		setProperty('black.visible', false)
	end
end