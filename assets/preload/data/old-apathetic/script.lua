function onCreatePost() 
  makeLuaText("message", "By LiterallyWize", 500, 30, 50)
  setTextAlignment("message", "left")
  addLuaText("message")

  makeLuaText("engineText", "Apathetic (Old) - Definitive Engine (PE v0.6.3)", 500, 30, 30)
  setTextAlignment("engineText", "left")
  addLuaText("engineText")

  if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
      setProperty('message.y', 680)
      setProperty('engineText.y', 660)
  end
end