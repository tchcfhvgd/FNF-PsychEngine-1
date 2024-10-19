function onEvent(name,value1,value2)
    if name == "SetCamZoom" then    
        if value2 == '' then
      	  	setProperty("defaultCamZoom", value1)
		else
            doTweenZoom('camera', 'camGame', tonumber(value1), tonumber(value2), 'sineInOut')
		end           
    end
end

function onTweenCompleted(name)
	if name == 'camera' then
      	 setProperty("defaultCamZoom", getProperty('camGame.zoom')) 
	end
end