function onCreate()
	makeLuaSprite('1', 'stages/other/codingclass', -1000, -500);
	setScrollFactor('1', 1, 1);
	scaleObject('1', 2.4, 2.6)
    addLuaSprite('1', false);

	makeLuaSprite('2', 'stages/other/youCANTthink', -1500, -900);
	setScrollFactor('2', 1, 1);
	scaleObject('2', 3.2, 3.2)
	setProperty('2.visible', false)
    addLuaSprite('2', true);

	makeAnimatedLuaSprite('3', 'stages/other/bg-run', -1000, -500);
 	addAnimationByPrefix('3', '3', 'bg-run', 18, true);
	setScrollFactor('3', 1, 1);
	scaleObject('3', 2.4, 2.6)
	setProperty('3.visible', false)
    addLuaSprite('3', false);

	makeAnimatedLuaSprite('stop1', 'stages/other/bg-run', -1000, -500);
 	addAnimationByPrefix('stop1', '3', 'bg-run0000', 18, false);
	setScrollFactor('stop1', 1, 1);
	scaleObject('stop1', 2.4, 2.6)
	setProperty('stop1.visible', false)
    addLuaSprite('stop1', false);

	makeAnimatedLuaSprite('stop2', 'stages/other/bg-run', -1000, -500);
 	addAnimationByPrefix('stop2', '3', 'bg-run0001', 18, false);
	setScrollFactor('stop2', 1, 1);
	scaleObject('stop2', 2.4, 2.6)
	setProperty('stop2.visible', false)
    addLuaSprite('stop2', false);

	makeLuaSprite('end', 'stages/other/codingclassred', -2000, -1000);
	setScrollFactor('end', 1, 1);
	scaleObject('end', 3.4, 3.6)
        addGlitchEffect('end',1,4,0.3)
	setProperty('end.visible', false)
    addLuaSprite('end', false);

	makeLuaSprite('p', 'stages/other/speis', -2000, -1000);
	setScrollFactor('p', 1, 1);
	scaleObject('p', 3.4, 3.6)
        addGlitchEffect('p',1,4,0.3)
	setProperty('p.visible', false)
    addLuaSprite('p', false);

	makeLuaSprite('black', 'stages/black', -800, -600);
	setScrollFactor('black', 0, 0);
	scaleObject('black', 2.2, 2.2)
	setProperty('black.visible', false)
    addLuaSprite('black', true);
 
	makeAnimatedLuaSprite('c1', 'codekill/emma', -600, 0);
 	addAnimationByPrefix('c1', 'c1', 'idle', 18, false);
	scaleObject('c1', 1, 1)
	setProperty('c1.visible', false)
    addLuaSprite('c1', false);
end

function onStepHit()
	if curStep == 657 then
		setProperty('1.visible', false)
		setProperty('2.visible', true)
	end
	if curStep == 1169 then
		setProperty('1.visible', true)
		setProperty('c1.visible', true)
		setProperty('2.visible', false)
	end
	if curStep == 1984 then
		setProperty('1.visible', false)
		setProperty('c1.visible', false)
		setProperty('3.visible', true)
	end
	if curStep == 2768 then
		setProperty('stop1.visible', true)
		setProperty('3.visible', false)
	end
	if curStep == 3456 then
		setProperty('black.visible', true)
	end
	if curStep == 3840 then
		setProperty('black.visible', false)
	end
	if curStep == 4016 then
		setProperty('stop1.visible', false)
		setProperty('1.visible', true)
	end
	if curStep == 4688 then
		setProperty('3.visible', true)
		setProperty('1.visible', false)
	end
	if curStep == 5970 then
		setProperty('stop2.visible', true)
		setProperty('3.visible', false)
	end
	if curStep == 6480 then
		setProperty('stop2.visible', false)
		setProperty('1.visible', true)
	end
	if curStep == 7680 then
		setProperty('1.visible', false)
		setProperty('end.visible', true)
	end
	if curStep == 8576 then
		setProperty('p.visible', true)
		setProperty('end.visible', false)
	end
end