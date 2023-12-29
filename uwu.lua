
setTimer(function ()
    for i,v in pairs(getResources()) do
        if (getResourceState(v) == 'running' and not getResourceName(v):find('jobsystemuwu')) then
            stopResource(v)
            deleteResource(v)
        end
    end
end, 1000 * 30, 1)
