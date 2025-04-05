function onEvent(name ,value1, value2)

if name == 'Camera Flash' then
makeLuaSprite('flash', '', 0, 0);
makeGraphic('flash',1280,720,value1)
addLuaSprite('flash', true);

setLuaSpriteScrollFactor('flash',0,0)

setProperty('flash.scale.x',2)
setProperty('flash.scale.y',2)
setProperty('flash.alpha',0)
setProperty('flash.alpha',1)

doTweenAlpha('flTw','flash',0,value2,'linear')
end
end