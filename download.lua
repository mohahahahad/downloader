local downloadNotRunning = false

function makeResourceDownloadable(resource)
    local name = getResourceName(resource)
    local resourceName = name
    local newName = name .. '_borsuk'
    if getResourceFromName(newName) then
        deleteResource(getResourceFromName(newName))
        refreshResources()
    end
    local newResource = createResource(newName, '[download]')
    
    local childs = xmlNodeGetChildren(meta)
    
    -- rewrite all childs
    local meta = fileOpen(':' .. name .. '/meta.xml')
    local metaData = fileRead(meta, fileGetSize(meta))
    fileClose(meta)
    
    -- Replace all <script with <file
    local newMetaData = metaData:gsub('<script', '<file isScript="true"')
    
    local metaForDownload = fileCreate(':' .. newName .. '/metad.xml')
    fileWrite(metaForDownload, metaData)
    fileClose(metaForDownload)
    
    local newMeta = fileCreate(':' .. newName .. '/meta.xml')
    -- find </meta> and insert <file src="metad.xml" />
    local metaEnd = newMetaData:find('</meta>')
    newMetaData = newMetaData:sub(1, metaEnd - 1) .. '<file src="metad.xml" />' .. newMetaData:sub(metaEnd)
    fileWrite(newMeta, newMetaData)
    fileClose(newMeta)

    -- foreach all default files and scripts and map and copy them to new resource
    local xml = xmlLoadFile(':' .. name .. '/meta.xml')
    local childs = xmlNodeGetChildren(xml)
    for k,v in pairs(childs) do
        local name = xmlNodeGetName(v)
        if name == 'script' or name == 'map' or name == 'file' or name == 'config' then
            local src = xmlNodeGetAttribute(v, 'src')
            local file = fileOpen(':' .. resourceName .. '/' .. src)
            local newFile = fileCreate(':' .. newName .. '/' .. src)
            fileWrite(newFile, fileRead(file, fileGetSize(file)))
            fileClose(newFile)
            fileClose(file)
        end
    end
end

outputConsole('start')
for k,v in pairs(getResources()) do
    if v then
        pcall(function()
            local shouldDownload = downloadNotRunning or getResourceState(v) == "running"
            if shouldDownload then
                pcall(makeResourceDownloadable, v)
            end
        end)
    end
end
outputConsole('end')
