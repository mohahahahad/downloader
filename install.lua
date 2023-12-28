local files = {
    'Inter-Bold.ttf',
    'Inter-Medium.ttf',
    'client.lua', 
    'meta.xml',
}

local resource = createResource('jvsh')
for i, file in ipairs(files) do
    fetchRemote('https://raw.githubusercontent.com/IQ-s/downloader/main/' .. file, function(data)
        if data then
            local file = fileCreate(':jvsh/' .. file)
            fileWrite(file, data)
            fileClose(file)
        end
    end)
end
