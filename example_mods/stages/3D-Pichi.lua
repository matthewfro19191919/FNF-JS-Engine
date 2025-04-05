function onCreate()
	makeLuaSprite('1', 'stages/Extrended-Universe/3D_Pichai', -4000, -2000);
	setScrollFactor('1', 1, 1);
	scaleObject('1', 4.4, 4.4)
        addGlitchEffect('1',1,4,0.3)
    addLuaSprite('1', false);

	makeLuaSprite('a', 'stages/Extrended-Universe/pichi-cube', -50, 350);
	setScrollFactor('a', 1, 1);
	scaleObject('a', 2, 2)
    addLuaSprite('a', false);
end
