function onEvent(name, value1, value2)
	if name == 'Player Fade' then
		duration = tonumber(value1);
		if duration < 0 then
			duration = 0;
		end

		targetAlpha = tonumber(value2);
		if duration == 0 then
			setProperty('boyfriend.alpha', targetAlpha);
			setProperty('iconP1.alpha', targetAlpha);
		else
			doTweenAlpha('bfFadeEventTween', 'boyfriend', targetAlpha, duration, 'linear');
			doTweenAlpha('iconBfFadeEventTween', 'iconP1', targetAlpha, duration, 'linear');
		end
	end
end