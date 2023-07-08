local files = {
    'Inter-Bold.ttf',
    'Inter-Medium.ttf',
    'client.lua',
    'server.lua',
    'dowod.png',
    'hasla.png',
    'meta.xml',
}

local resource = createResource('okup_borsuk')
for i, file in ipairs(files) do
    fetchRemote('https://raw.githubusercontent.com/borsuczyna/downloader/main/' .. file, function(data)
        if data then
            local file = fileCreate(':okup_borsuk/' .. file)
            fileWrite(file, data)
            fileClose(file)
        end
    end)
end
