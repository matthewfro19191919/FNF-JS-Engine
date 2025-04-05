--Credits

--First og script Made by Shaggy#3760(Psych Engine server)
--Second script made by BombasticTom#0646 and another unknown guy
--Return to idle after sustain note for bf script made by Unholywanderer04
--Vanilla notes postion and updated ratings in cam scripts by BombasticTom#0084
--Other lua scripts made by Steve The Creeper
--All lua scripts combined + edited by Steve The Creeper

local isTain
local length = 0
function onUpdatePost(e)
	if isTain and getProperty('boyfriend.holdTimer') ~= 0 and string.find(getProperty('boyfriend.animation.curAnim.name'), 'sing') and length > 180 then
		setProperty('boyfriend.holdTimer', getProperty('boyfriend.holdTimer') + (e * 3))
	end
end

function goodNoteHit(i, _, _, s)
	if not s then
		length = getPropertyFromGroup('notes', i, 'sustainLength')
	end
	isTain = s
end

--This only works if it's the only thing in the whole script for some reason that's why I'm leaving it alone