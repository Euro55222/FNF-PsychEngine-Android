function onCreatePost() 
    makeLuaText("message", "Charted by Cahne | Song by Cynda and AadstaPinwheel", 500, 30, 50)
    setTextAlignment("message", "left")
    addLuaText("message")

    makeLuaText("engineText", "Cheating Not Cute - Definitive Engine (PE v0.6.3)", 500, 30, 30)
    setTextAlignment("engineText", "left")
    addLuaText("engineText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 680)
        setProperty('engineText.y', 660)
    end
end

function onUpdate(elapsed)

	if curStep >= 0 then
  
		songPos = getSongPosition()
  
		local currentBeat = (songPos/1000)*(bpm/80)
  
		doTweenY(dadTweenY, 'bf', 300-110*math.sin((currentBeat*0.25)*math.pi),0.001)
		
	end
end
