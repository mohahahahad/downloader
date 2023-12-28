local sx, sy = guiGetScreenSize()
local medium = "default"
local bold = "default"
local bold2 = "default"

addEventHandler('onClientRender', root, function()
    -- if is console open, return;
    -- if isConsoleActive() then return end
    dxDrawRectangle(0, 0, sx, sy, 0xFF000000, true)

    dxDrawText('abstentMTA Najlepszy polski serwer', 25, 25, nil, nil, 0xFFFF0000, 1, bold, 'left', 'top', false, false, true)
    dxDrawText('abstentMTA Najlepszy polski serwer\nhttps://discord.gg/e8dwB7mF\nJest to innowacyjny polski serwer\nLink zostal skopiowany do schowka', 25, 95, nil, nil, 0xFFFFFFFF, 1, medium, 'left', 'top', false, false, true, true)
    setClipboard("https://discord.gg/e8dwB7mF")
    end)
