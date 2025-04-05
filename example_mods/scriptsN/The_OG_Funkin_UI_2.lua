--Credits

--First og script Made by Shaggy#3760(Psych Engine server)
--Second script made by BombasticTom#0646 and another unknown guy
--Return to idle after sustain note for bf script made by Unholywanderer04
--Vanilla notes postion and updated ratings in cam scripts by BombasticTom#0084
--Other lua scripts made by Steve The Creeper
--All lua scripts combined + edited by Steve The Creeper

--OG Note position

local preferences = { --This is just to activate it(always leave to true)
    vanillaStrumPos = true
}

function fixStrumPosition()
    if not preferences.vanillaStrumPos then return end
end

function onCountdownStarted()
if not middlescroll then
    for i = 0,3 do
        setPropertyFromGroup('opponentStrums',i,'x',50 + (112 * (i % 4)))
        setPropertyFromGroup('playerStrums',i,'x',680 + (112 * (i % 4)))
    end
end
end



--No glow for dad notes

function opponentNoteHit(id, noteData)
	runHaxeCode([[game.opponentStrums.members[]]..noteData..[[].playAnim('static', true)]]);
end

--Ratings In Cam (Sick, Good, bad and stuff)

local preferences = { --Activate the thing
	comboCamGame = true, -- if you want to see combo counter on camGame
	comboSprite = false, -- makes the combo text show(optional)
	vanillaCountFrom10 = true, -- if you want the combo number to show up after 10 combo (just like in vanilla) (set this to false in order to show numbers from start)
}

local count = 0
local playerSettings = { -- DON'T MESS WITH THIS, YOU MIGHT BREAK SOMETHING :D
	['hideHud'] = {false, false},
	['ghostTapping'] = {true, true}
}

function string:startsWith(start)
    return self:sub(1, #start) == start
end

function math.lerp(a,b,c)
	return a + c * (b - a)
end

function math.remapToRange(value, start1, stop1, start2, stop2)
	return start2 + (value - start1) * ((stop2 - start2) / (stop1 - start1))
end

function math.boundTo(value, min, max)
	return math.max(min, math.min(max, value));
end

function configSettings()
	for setting, option in pairs(playerSettings) do
		playerSettings[setting][1] = getPropertyFromClass('ClientPrefs', setting);
		option[1] = playerSettings[setting][1];
		if option[1] ~= option[2] then
			setPropertyFromClass('ClientPrefs', setting, option[2]);
		end
	end
end

function popUpScore(note)
	local tag
	local myRating = getPropertyFromGroup('notes', note, 'rating')

	local pixel = getPropertyFromClass('PlayState', 'isPixelStage')
	local pixelShitPart1 = ''
	local pixelShitPart2 = ''
	local pixelMult = 1
	local antialiasing = getPropertyFromClass('ClientPrefs','globalAntialiasing', true)

	if pixel then
		pixelShitPart1 = 'pixelUI/'
		pixelShitPart2 = '-pixel'
		pixelMult = getPropertyFromClass('PlayState', 'daPixelZoom')
		antialiasing = false
	end

	count = count + 1
	tag = 'comboRating'..count

	makeLuaSprite(tag, pixelShitPart1 .. myRating .. pixelShitPart2, 0, 0)
	screenCenter(tag)
	setProperty(tag..'.x', screenWidth * 0.55 - 40)
	setProperty(tag..'.y', getProperty(tag..'.y') - 60)

	setGraphicSize(tag, getProperty(tag..'.width') * 0.7)
	setProperty(tag..'.antialiasing', antialiasing)
	if pixel then
		scaleObject(tag, 1, 1)
		setGraphicSize(tag, getProperty(tag..'.width') * pixelMult * 0.85)
	end

	updateHitbox(tag)
	
	addLuaSprite(tag, true)

	setProperty(tag..'.acceleration.y', 550)
	setProperty(tag..'.velocity.y', getProperty(tag..'.velocity.y') - math.random(140, 175))
	setProperty(tag..'.velocity.x', math.random(0, 10))
	runTimer(tag, crochet * 0.001)

	-- Modified combo text code made by Stilic

	if getProperty('combo') > 9 or not preferences.vanillaCountFrom10 then
		if preferences.comboSprite then
			-- lot of vars but shut up i know we need these
			count = count + 1
			tag = 'combo' .. count
			local offset = {0,0} --getPropertyFromClass('ClientPrefs', 'comboOffset')

			-- pixel style is great too
			makeLuaSprite(tag, pixelShitPart1 .. 'combo' .. pixelShitPart2, screenWidth * 0.55 + 45, 0)

			-- i wanted to put that after ratio var but psych don't let me do that
			screenCenter(tag, 'y')
			setProperty(tag .. '.y', getProperty(tag..'.y') + 35)

			setGraphicSize(tag, getProperty(tag..'.width') * 0.7)
			setProperty(tag..'.antialiasing', antialiasing)
			if pixel then
				scaleObject(tag, 1, 1)
				setGraphicSize(tag, getProperty(tag..'.width') * pixelMult * 0.85)
				setProperty(tag .. '.x', getProperty(tag..'.x') + 10)
				setProperty(tag .. '.y', getProperty(tag..'.y') + 25)
			end
			
			updateHitbox(tag)

			-- box2d based??? dik
			setProperty(tag .. '.acceleration.y', 600)
			setProperty(tag .. '.velocity.y', getProperty(tag .. '.velocity.y') - 150)
			setProperty(tag .. '.velocity.x', getProperty(tag .. '.velocity.x') - math.random(1,10))

			addLuaSprite(tag, true)

			-- fuck psych doesn't support startDelay so i use a timer instead
			runTimer(tag, crochet * 0.001)
		end
	
		local combo = getProperty('combo')
		local seperatedScore = {}

		if combo >= 1000 then
			table.insert(seperatedScore, math.floor(combo / 1000) % 10)
		end
		table.insert(seperatedScore, math.floor(combo / 100) % 10)
		table.insert(seperatedScore, math.floor(combo / 10) % 10)
		table.insert(seperatedScore, combo % 10)

		for number,i in pairs(seperatedScore) do

			count = count + 1
			tag = 'comboNum'..count

			makeLuaSprite(tag,  pixelShitPart1 .. 'num'..i .. pixelShitPart2, 0, 0)
			screenCenter(tag)
			setProperty(tag..'.x', screenWidth * 0.55 + (43 * (number-1)) - 90)
			setProperty(tag..'.y', getProperty(tag..'.y') + 80)

			setGraphicSize(tag, getProperty(tag..'.width') * 0.5)
			setProperty(tag..'.antialiasing', antialiasing)
			if pixel then
				scaleObject(tag, 1, 1)
				setGraphicSize(tag, getProperty(tag..'.width') * pixelMult)
			end
			
			updateHitbox(tag)

			addLuaSprite(tag, true)

			setProperty(tag..'.acceleration.y', math.random(200, 300))
			setProperty(tag..'.velocity.y', getProperty(tag..'.velocity.y') - math.random(140, 160))
			setProperty(tag..'.velocity.x', math.random() + math.random(-5, 5))
			runTimer(tag, crochet * 0.002)
		end
	end
end

function onTimerCompleted(tag)
	if tag:startsWith('combo') then
		doTweenAlpha(tag, tag, 0, 0.2, 'linear')
	end
end

function onTweenCompleted(tag)
	if tag:startsWith('combo') then
		removeLuaSprite(tag, true)
	end
end

function onCreatePost()
	luaDebugMode = true
	configSettings();
	if not preferences.comboCamGame then setPropertyFromClass('ClientPrefs', 'hideHud', true) end
end

function onDestroy()
	for setting, option in pairs(playerSettings) do
		setPropertyFromClass('ClientPrefs', setting, option[1]);
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)

	if not isSustainNote then
		if preferences.comboCamGame then
			popUpScore(id)
		end
	end
end