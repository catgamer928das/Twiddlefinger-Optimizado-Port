function onCreate()
setProperty('skipArrowStartTween',true)
setProperty('skipCountdown', true)
end
function onCreatePost()
makeLuaSprite('UpperBar(With HUD)', 'empty', -750, -0)
	makeGraphic('UpperBar(With HUD)', 1500, 350, '000000')
	scaleObject('UpperBar(With HUD)', 1,2.4)
	setObjectCamera('UpperBar(With HUD)', 'HUD')
	addLuaSprite('UpperBar(With HUD)', false)

    makeLuaSprite('LowerBar(With HUD)', 'empty', 530, 0)
    scaleObject('LowerBar(With HUD)', 1, 2.4)
	makeGraphic('LowerBar(With HUD)', 1500, 350, '000000')
	setObjectCamera('LowerBar(With HUD)', 'HUD')
	
	addLuaSprite('LowerBar(With HUD)', false)

makeAnimatedLuaSprite('flame', 'flame', 0, -100)
addAnimationByPrefix('flame', 'flameidle', 'FI', 18, true);
setProperty('flame.alpha', 0)
scaleObject('flame',8,8)
	setObjectCamera('flame', 'HUD')
	addLuaSprite('flame', false)
	screenCenter('flame', 'x')

    UpperBar = getProperty('UpperBar(With HUD).y')
	LowerBar = getProperty('LowerBar(With HUD).y')
	
	setProperty('UpperBar(With HUD).angle', 90)
	setProperty('LowerBar(With HUD).angle', 90)
	
makeLuaSprite('bg_og','og',1600,-400)
scaleObject('bg_og', 6,6)
addLuaSprite('bg_og')

--bg

makeLuaSprite('bg','bg',0,800)
addLuaSprite('bg')
scaleObject('bg',4.8,4.8)
setProperty('bg.alpha', 0)

makeLuaSprite('ramaSexo','ramaSexo',600,1200)
addLuaSprite('ramaSexo', true)
scaleObject('ramaSexo',4.8,4.8)
setLuaSpriteScrollFactor('ramaSexo',1.2,1.2)
setProperty('ramaSexo.alpha', 0)

makeLuaSprite('sexoRama','sexoRama',0,800)
addLuaSprite('sexoRama',true)
scaleObject('sexoRama',4.8,4.8)
setLuaSpriteScrollFactor('sexoRama',1.2,1.2)
setProperty('sexoRama.alpha', 0)

noteTweenAlpha('0','0',0,0.00001,'linear')
noteTweenAlpha('1','1',0,0.00001,'linear')
noteTweenAlpha('2','2',0,0.00001,'linear')
noteTweenAlpha('3','3',0,0.00001,'linear')

if downscroll then 
noteTweenY('5','4',650,0.00001,'linear')
noteTweenY('4','5',650,0.00001,'linear')
noteTweenY('7','6',650,0.00001,'linear')
noteTweenY('6','7',650,0.00001,'linear')
end
-- que se joda la perfección --
end

function onUpdatePost()      
setProperty('camHUD.zoom',0.85)
end

function onStepHit()
if curStep == 271 then
makeLuaSprite('black', '', 0, 0);
        makeGraphic('black',1280,720,'000000')
	      addLuaSprite('black', false);
	      setLuaSpriteScrollFactor('black',0,0)
	      setProperty('black.scale.x',2)
	      setProperty('black.scale.y',2)
		setProperty('black.alpha',0)
		doTweenAlpha('flTw','black',1,0.8,'linear')
		doTweenX('up','UpperBar(With HUD)', -840, 0.5, 'linear')
doTweenX('down','LowerBar(With HUD)', 650, 0.5, 'linear')
end
if curStep == 287 then
setProperty('black.alpha',0)
doTweenX('up','UpperBar(With HUD)', -1200, 0.1, 'linear')
doTweenX('down','LowerBar(With HUD)', 1000, 0.1, 'linear')
setProperty('bg_og.alpha', 0)
setProperty('fg.alpha', 1)
setProperty('bg.alpha', 1)
setProperty('ramaSexo.alpha', 1)
setProperty('sexoRama.alpha', 1)
end
if curStep == 1563 then
noteTweenAlpha('4','4',0,1,'linear')
noteTweenAlpha('5','5',0,1,'linear')
noteTweenAlpha('6','6',0,1,'linear')
noteTweenAlpha('7','7',0,1,'linear')
end
if curStep == 1569 then
doTweenAlpha('up','UpperBar(With HUD)', 1,1, 'linear')
doTweenAlpha('down','LowerBar(With HUD)', 1,1, 'linear')
end
if curStep == 1792 then
       doTweenAlpha('hi','help', 0, 0.5, 'backIn')
    end
    if curStep == 1805 then
       setProperty('sexoRama.alpha', 0)
    end
    if curStep == 2584 then
    makeLuaSprite('black1', '', 0, 0);
        makeGraphic('black1',1280,720,'000000')
	      addLuaSprite('black1', false)
	      setProperty('black1.scale.x',2)
	      setProperty('black1.scale.y',2)
	setProperty('black1.alpha',0)
setObjectCamera('black1', 'Other')
       doTweenAlpha('adios','black1', 1, 1.4, 'backIn')
    end
    if curStep == 2288 then
    setProperty('sexoRama.alpha', 1)
    end
end