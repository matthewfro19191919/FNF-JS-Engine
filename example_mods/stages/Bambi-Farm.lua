function onCreate()
	makeLuaSprite('hills', 'stages/DaveAndBambi/orangey hills', -234, 59);
	setScrollFactor('hills', 1, 1);
	makeLuaSprite('sky', 'stages/DaveAndBambi/ICANTBELIEVEIHAVETOCLARIFYTHIS', -500, -200);
	setScrollFactor('sky', 0.5, 0.5);

	addLuaSprite('sky', false);
	addLuaSprite('hills', false);
end