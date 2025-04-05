function onEvent(name, value1, value2)
    if name == 'Camera Switch' and value2 == 'on' then
        doTweenAlpha('HUDOn', 'hide HUD', 1, value1, 'linear')
    end

    if name == 'Camera Switch' and value2 == 'off' then
        doTweenAlpha('HUDOff', 'hide HUD', 0, value1, 'linear')
    end
end