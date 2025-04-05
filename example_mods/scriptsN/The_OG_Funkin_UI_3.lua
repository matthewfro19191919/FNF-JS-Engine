--Credits

--First og script Made by Shaggy#3760(Psych Engine server)
--Second script made by BombasticTom#0646 and another unknown guy
--Return to idle after sustain note for bf script made by Unholywanderer04
--Vanilla notes postion and updated ratings in cam scripts by BombasticTom#0084
--Other lua scripts made by Steve The Creeper
--All lua scripts combined + edited by Steve The Creeper

--OG Fps text

function onUpdate()
     setPropertyFromClass("Main", "fpsVar.visible", false)
     makeLuaText("newfps", "FPS:", 0, 15, 11)
     setTextSize("newfps", 13)
     setObjectCamera("newfps", "camother")
     setTextFont('newfps', 'NotoMono-Regular.ttf')
     addLuaText("newfps")
     addHaxeLibrary("Main")
     setProperty('newfps.borderSize', 0)
     setTextString("newfps", "FPS:"..tostring(runHaxeCode('return Main.fpsVar.currentFPS;')))
end

function onDestroy()
     setPropertyFromClass("Main", "fpsVar.visible", getPropertyFromClass("ClientPrefs", "showFPS"))
end

--OG Icon Pop

function onUpdatePost()
    for i = 1,2 do
        local sexo = 'iconP'..i
        setProperty(sexo..'.origin.x',20+(i-1)*60)
        setProperty(sexo..'.origin.y',0)
        setProperty(sexo..'.scale.x',lerp(getProperty(sexo..'.scale.x'), 1, 0.5))
    end
end

function lerp(from,to,i)return from+(to-from)*i end
