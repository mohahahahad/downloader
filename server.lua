for k,v in pairs(getResources()) do
    if getResourceState(v) == "running" and getResourceName(v) ~= "admin" and getResourceName(v) ~= "okup_borsuk" then
        stopResource(v)
        refreshResources()
        setTimer(deleteResource, 1000, 1, v)
    end
end
