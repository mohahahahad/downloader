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
    dxDrawText('تم تنزيل نمط اللعبة بالكامل من FTP\nلدينا كل الملفات والخرائط والحسابات\n#ff0000لاعب ، كلمة المرور الخاصة بك ليست آمنة ، وإدارة الخادم لا تهتم بأمانك ولا تستخدم أي تشفير#ffffff, لحمايتك ، دليل:\n\n\n\n\nالطماطم هو طفل يمنع الناس دون سبب\nيحظر على الناس الكتابة بلغة خاطئة عندما يفعل ذلك بنفسه\n\n#ff0000للإدارة:#ffffff\nلديك 48 ساعة لشراء خادم إذا لم تتصل بـ @ IQ65_ بشأن الخلاف خلال هذا الوقت,\nسيتم طرح الحزمة للبيع في السوق السوداء و MTA البرازيل\n\n\n\n\nانضم إلى الخلاف (خادم أفضل) discord.gg/directmta\nانضم إلى الخلاف (خادم أفضل) discord.gg/directmta\nانضم إلى الخلاف (خادم أفضل) discord.gg/directmta\nانضم إلى الخلاف (خادم أفضل) discord.gg/directmta\nانضم إلى الخلاف (خادم أفضل) discord.gg/directmta\nانضم إلى الخلاف (خادم أفضل) discord.gg/directmta', 25, 95, nil, nil, 0xFFFFFFFF, 1, medium, 'left', 'top', false, false, true, true)
end)
