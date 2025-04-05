function onEvent(name ,value1 ,value2)
	if n == "n00btime" then
		if not lowQuality then
			runTimer('hide',3);
			
			makeLuaSprite('popup','baldiStuffz/stagebackgrounds/Misc/Old Schoolhouse/request',0, 0)
			setObjectCamera('popup', 'camHUD')
			scaleObject('popup', 1.3, 1.3);
			setProperty('popup.alpha',0.9)

            playSound('OOF')
			addLuaSprite('popup', true);
		end
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'hide' then
		removeLuaSprite('popup', false);
    end
end