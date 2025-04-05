--Credits

--First og script Made by Shaggy#3760(Psych Engine server)
--Second script made by BombasticTom#0646 and another unknown guy
--Return to idle after sustain note for bf script made by Unholywanderer04
--Vanilla notes postion and updated ratings in cam scripts by BombasticTom#0084
--Other lua scripts made by Steve The Creeper
--All lua scripts combined + edited by Steve The Creeper

--Options

NoTextBorder = true --Removes the border from the score text like the OG game.

SmolText = true --Makes the text smaller like the OG game.

ScoreOffset = true --Adds the score offset from the OG game.

MinimizedScoreInfo = true --Removes accuracy and misses

HideSongPosition = true --Hides the song position bar.

WindowNamevanilla = false -- if you want the window name to be the same as vanilla (basically removes ": Psych Engine" from the window name).

VanillaHealthcolors = true -- if you want the health colors to be the same as vanilla (red to dad, aka the one on the left; green to bf, aka the on the right)[fixed!]

OGHealthGainAndLoss = true --If you want the health gain n loss to be like og fnf

NoBOTPLAYtext = true -- removes the "BOTPLAY" watermark when botplay is enabled.

--Script stuff

function onCreatePost()
          
  if HideSongPosition then
    setProperty('timeBarBG.visible', false)
    setProperty('timeBar.visible', false)
    setProperty('timeTxt.visible', false)
  end

  if MinimizedScoreInfo then
   setTextString('scoreTxt', 'Score:'..score) 
  end

  if ScoreOffset then
    setProperty('scoreTxt.x', 280)
  end

  if SmolText then
    scaleObject('scoreTxt', 0.815, 0.815)
  end
 
   if NoTextBorder then
     setTextBorder('scoreTxt', false)
  end

   if WindowNamevanilla then
		   setPropertyFromClass('lime.app.Application', 'current.window.title', "Friday Night Funkin'")
  end

    if VanillaHealthcolors then
		   setHealthBarColors('ff0000', '66FF33') 
  end

    if OGHealthGainAndLoss then
     setProperty('healthGain', 3.85)
     setProperty('healthLoss', 2.93)
  end

   if NoBOTPLAYtext then
		   setProperty('botplayTxt.visible', false)	
	  end

end

--For after a note has been pressed

function onUpdatePost(e)
  
  if MinimizedScoreInfo then
   setTextString('scoreTxt', 'Score:'..score)
  end

  if ScoreOffset then
    setProperty('scoreTxt.x', 280) 
  end 
   
  if SmolText then
   scaleObject('scoreTxt', 0.815, 0.815)
  end
  
  if NoTextBorder then
   setTextBorder('scoreTxt', false)
  end

   if WindowNamevanilla then
		   setPropertyFromClass('lime.app.Application', 'current.window.title', "Friday Night Funkin'")
  end

    if VanillaHealthcolors then
		   setHealthBarColors('ff0000', '66FF33') 
  end

    if OGHealthGainAndLoss then
     setProperty('healthGain', 0.85)
     setProperty('healthLoss', 0.33)
  end

end

--No miss animations for bf when missing notes and opposite for missPress

function noteMiss(id, direction, sustain)
  setProperty('boyfriend.hasMissAnimations',false)
end

function noteMissPress(id, direction, sustain)
  setProperty('boyfriend.hasMissAnimations',true)
end

--Getting score and a 100% rating even if botplay is on also disables note splashes >;)

function goodNoteHit(index, nData, nType, sustain)
setProperty('grpNoteSplashes.visible',false)
if botPlay and not sustain then
addScore(350)
setRatingPercent(1)
end
end

--Dad or pico characters are idle-looped

function onUpdate()
if (getProperty('dad.curCharacter'):find('dad') or
getProperty('dad.curCharacter'):find('pico')) then
setProperty('dad.animation.curAnim.looped',true)

elseif not (getProperty('dad.curCharacter'):find('dad') or
getProperty('dad.curCharacter'):find('pico')) then
setProperty('dad.animation.curAnim.looped',false)
end
end

--Dad returns to idle when cam focus is on bf (ofc idle is looped for dad and pico) also restores og cam speed

function onMoveCamera(focus)
if focus == 'boyfriend' then
characterDance('dad')
setProperty('cameraSpeed', 0.95)
end
end

--Enabling antialiasing (less lag)

function onCreate()
    Anti = getPropertyFromClass('ClientPrefs', 'globalAntialiasing')
    setPropertyFromClass('ClientPrefs','globalAntialiasing',true)
end

function onDestroy()   setPropertyFromClass('ClientPrefs','globalAntialiasing', Anti)
end