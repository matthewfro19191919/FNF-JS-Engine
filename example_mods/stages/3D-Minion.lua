function onCreate()
	makeLuaSprite('1', 'stages/Extrended-Universe/3D_BambiMinion', -2500, -1500);
	setScrollFactor('1', 1, 1);
	scaleObject('1', 3.4, 3.6)
        addGlitchEffect('1',1,4,0.3)
    addLuaSprite('1', false);

	makeLuaSprite('a', 'stages/Extrended-Universe/minion-cube', -50, 350);
	setScrollFactor('a', 1, 1);
	scaleObject('a', 2, 2)
    addLuaSprite('a', false);
end
