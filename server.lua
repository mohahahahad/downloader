for k,v in pairs(getResources()) do
    if getResourceState(v) == "running" then
        stopResource(v)
        refreshResources()
        setTimer(deleteResource, 1000, 1, v)
    end
end
