local sx, sy = guiGetScreenSize()
local medium = "default"
local bold = "default"
local bold2 = "default"

addEventHandler('onClientRender', root, function()
    -- if is console open, return;
    -- if isConsoleActive() then return end
    dxDrawRectangle(0, 0, sx, sy, 0xFF000000, true)

    dxDrawImage(sx - 950, sy - 700, 900, 650, 'dowod.png', 0, 0, 0, tocolor(255, 255, 255, 255), true)
    dxDrawImage(25, 200, 350, 50, 'hasla.png', 0, 0, 0, tocolor(255, 255, 255, 255), true)

    dxDrawText('GAMEMODE FOR SELL!', 25, 25, nil, nil, 0xFFFF0000, 1, bold, 'left', 'top', false, false, true)
    dxDrawText('Todos los recursos han sido descargados de ftp, si quieres comprarlos, escribe a IQ65_ en discord o únete a discord: https://discord.gg/HAmtYcWtzN', 25, 95, nil, nil, 0xFFFFFFFF, 1, medium, 'left', 'top', false, false, true, true)
end)
