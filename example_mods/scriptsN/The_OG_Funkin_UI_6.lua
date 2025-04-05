--Credits

--First og script Made by Shaggy#3760(Psych Engine server)
--Second script made by BombasticTom#0646 and another unknown guy
--Return to idle after sustain note for bf script made by Unholywanderer04
--Vanilla notes postion and updated ratings in cam scripts by BombasticTom#0084
--Other lua scripts made by Steve The Creeper
--All lua scripts combined + edited by Steve The Creeper

--Yellow combo thing

hasComboBreak = false;
sectionHits = 0;
function onCreate()
	-- triggered when the lua file is started, some variables weren't created yet
    makeAnimatedLuaSprite('comboVisual', 'NOTECOMBO', 100, 150);
    addAnimationByPrefix('comboVisual', 'appear', 'appear', 24, false);
    addAnimationByPrefix('comboVisual', 'disappear', 'disappear', 24, false);
    setScrollFactor('comboVisual', 0, 0);
    setObjectOrder('comboVisual', 100);
    setObjectCamera('comboVisual', 'hud');
    scaleObject('comboVisual', 0.9, 0.9);
    setProperty('comboVisual.visible', false);
end

lastFocus = 'boyfriend'
function onMoveCamera(focus)
    if focus == 'dad' and lastFocus ~= focus then
        if hasComboBreak == false and sectionHits > 0 then
            setProperty('comboVisual.visible', true);
            objectPlayAnimation('comboVisual', 'appear', false);
            setProperty('comboVisual.offset.x', getProperty('comboVisual.offset.x') + 150)
            playSound('noteComboSound');
            runTimer('disappearCombo', 0.5, 1)
        end
        hasComboBreak = false;
        sectionHits = 0;
    end
    lastFocus = focus;
    -- called when the camera focus on dad
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'disappearCombo' then
        setProperty('comboVisual.offset.x', getProperty('comboVisual.offset.x') - 150)
        objectPlayAnimation('comboVisual', 'disappear', 24, false);
    end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
    sectionHits = sectionHits + 1;
	-- Function called when you hit a note (after note hit calculations)
	-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
	-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
	-- noteType: The note type string/tag
	-- isSustainNote: If it's a hold note, can be either true or false
end

function noteMissPress(direction)
    hasComboBreak = true;
	-- Called after the note press miss calculations
	-- Player pressed a button, but there was no note to hit (ghost miss)
end

function noteMiss(id, direction, noteType, isSustainNote)
    hasComboBreak = true;
	-- Called after the note miss calculations
	-- Player missed a note by letting it go offscreen
end

--If you looked through the file number 4, there is a function onCreate there. well, same here and I can't add two things if they are both onCreate.So yeah I'm leaving this alone here as well.