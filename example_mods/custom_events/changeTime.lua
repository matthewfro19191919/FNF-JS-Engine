
function onSongStart()

    runTimer('countdown', 1, 9999)

end


function onTimerCompleted(tag)

    if tag == 'countdown' then

        if sec ~= -1 then

            sec = sec - 1

        end

        if sec == -1 then

            if min ~= 0 then

                min = min - 1

                sec = 59

            end

            if min == 0 and sec == 0 then

                return

            end

        end

    end

end


function onUpdatePost()

    if sec > 9 then

        setProperty('timeTxt.text', min .. ':' .. sec)

    end

    if sec <= 9 then

        setProperty('timeTxt.text', min .. ':0' .. sec)

    end

end


function onEvent(name, value1, value2)

    if name == 'changeTime' then

        sec = value1

        min = value2

    end

end