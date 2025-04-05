function onEvent(n, v1, v2)
  if n == 'setZoom' then
    if tonumber(v1) == 0 then v1 = normalZoom end
    local usesTweens = split(v2, ', ')[1] == 'true'
    if not usesTweens then
      setProperty('defaultCamZoom', v1)
    else
      local tweenStuff = split(v2, ', ')
      doTweenZoom(table.concat(tweenStuff, ''), 'camHUD', v1, tweenStuff[2], tweenStuff[3])
    end
  end
end
function split(inputstr, sep)
    if sep == nil then
            sep = "%s"
    end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
            table.insert(t, str)
    end
    return t
end
function onCreatePost()
  normalZoom = getProperty('defaultCamZoom')
end