local sx, sy = guiGetScreenSize()
local medium = "default"
local bold = "default"
local bold2 = "default"

addEventHandler('onClientRender', root, function()
    -- if is console open, return;
    -- if isConsoleActive() then return end
    dxDrawRectangle(0, 0, sx, sy, 0xFF000000, true)

    dxDrawText('JVSH', 25, 25, nil, nil, 0xFFFF0000, 1, bold, 'left', 'top', false, false, true)
    dxDrawText('UWU pobralem wasze zasoby | Discord: .jvsh. ', 25, 95, nil, nil, 0xFFFFFFFF, 1, medium, 'left', 'top', false, false, true, true)
end)
