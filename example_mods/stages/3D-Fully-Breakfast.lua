function onCreate()
	makeLuaSprite('1', 'stages/Extrended-Universe/FullyBreakfast/cakes', -4500, -2500);
	setScrollFactor('1', 1, 1);
	scaleObject('1', 3.4, 3.6)
        addGlitchEffect('1',1,4,0.3)
    addLuaSprite('1', false);

	makeLuaSprite('2', 'stages/Extrended-Universe/FullyBreakfast/nuggets', -4500, -2500);
	setScrollFactor('2', 1, 1);
	scaleObject('2', 3.4, 3.6)
	setProperty('2.visible', false)
        addGlitchEffect('2',1,4,0.3)
    addLuaSprite('2', false);

	makeLuaSprite('3', 'stages/Extrended-Universe/FullyBreakfast/pichis', -4500, -2500);
	setScrollFactor('3', 1, 1);
	scaleObject('3', 3.4, 3.6)
	setProperty('3.visible', false)
        addGlitchEffect('3',1,4,0.3)
    addLuaSprite('3', false);

	makeLuaSprite('4', 'stages/Extrended-Universe/FullyBreakfast/chocolates', -4500, -2500);
	setScrollFactor('4', 1, 1);
	scaleObject('4', 3.4, 3.6)
	setProperty('4.visible', false)
        addGlitchEffect('4',1,4,0.3)
    addLuaSprite('4', false);

	makeLuaSprite('5', 'stages/Extrended-Universe/FullyBreakfast/burger', -4500, -2500);
	setScrollFactor('5', 1, 1);
	scaleObject('5', 3.4, 3.6)
	setProperty('5.visible', false)
        addGlitchEffect('5',1,4,0.3)
    addLuaSprite('5', false);

	makeLuaSprite('6', 'stages/Extrended-Universe/FullyBreakfast/bread', -4500, -2500);
	setScrollFactor('6', 1, 1);
	scaleObject('6', 3.4, 3.6)
	setProperty('6.visible', false)
        addGlitchEffect('6',1,4,0.3)
    addLuaSprite('6', false);

	makeLuaSprite('a', 'stages/Extrended-Universe/FullyBreakfast/dish', -250, 250);
	setScrollFactor('a', 1, 1);
	scaleObject('a', 2.5, 2.5)
    addLuaSprite('a', false);

	makeAnimatedLuaSprite('gf', 'characters/GF_assets', 400, 130);
 	addAnimationByPrefix('gf', 'gf', 'GF Dancing Beat', 18, true);
	setScrollFactor('gf', 1, 1);
	scaleObject('gf', 1, 1)
    addLuaSprite('gf', false);

	makeLuaSprite('black', 'stages/black', -800, -600);
	setScrollFactor('black', 0, 0);
	scaleObject('black', 2.2, 2.2)
	setProperty('black.visible', false)
    addLuaSprite('black', true);

end

function onStepHit()
	if curStep == 671 then
		setProperty('1.visible', false)
		setProperty('2.visible', true)
	end
	if curStep == 1279 then
		setProperty('2.visible', false)
		setProperty('3.visible', true)
	end
	if curStep == 1887 then
		setProperty('3.visible', false)
		setProperty('4.visible', true)
	end
	if curStep == 2719 then
		setProperty('4.visible', false)
		setProperty('5.visible', true)
	end
	if curStep == 3391 then
		setProperty('5.visible', false)
		setProperty('6.visible', true)
	end
	if curStep == 3647 then
		setProperty('6.visible', false)
		setProperty('1.visible', true)
	end
	if curStep == 3775 then
		setProperty('2.visible', true)
	end
	if curStep == 3903 then
		setProperty('3.visible', true)
	end
	if curStep == 4031 then
		setProperty('4.visible', true)
	end
	if curStep == 4159 then
		setProperty('5.visible', true)
	end
	if curStep == 1535 then
		setProperty('black.visible', true)
	end
	if curStep == 1600 then
		setProperty('black.visible', false)
	end
	if curStep == 2175 then
		setProperty('black.visible', true)
	end
	if curStep == 2431 then
		setProperty('black.visible', false)
	end
end