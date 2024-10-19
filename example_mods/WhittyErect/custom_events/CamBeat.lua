camZooming = false
zoomStep = 4
zoomMulti = 1

function onSectionHit()
    if getProperty('camZooming') and camZooming then
        if getProperty('camGame.zoom') < 1.35 then
            setProperty('camGame.zoom', getProperty('camGame.zoom') - (0.015 * getProperty('camZoomingMult')))
            setProperty('camHUD.zoom', getProperty('camHUD.zoom') - (0.03 * getProperty('camZoomingMult')))
        end
    end
end

function onEvent(name, value1, value2)
    if name == 'CamBeat' then
        camZooming = value1~= ''
        zoomStep  = tonumber(value1)
        zoomMulti = (value2 == '' and 1 or tonumber(value2))
    end
end

function onStepHit()
    if camZooming then
        if curStep % (16 / zoomStep or zoomStep * 4) == 0 and getProperty('camGame.zoom') < 1.35 then
            setProperty('camGame.zoom', getProperty('camGame.zoom') + (0.015 * zoomMulti))
            setProperty('camHUD.zoom', getProperty('camHUD.zoom') + (0.03 * zoomMulti))
        end
    end
end