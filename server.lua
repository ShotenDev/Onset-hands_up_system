AddRemoteEvent("HandsUp", function(playerid)
    SetPlayerAnimation(playerid, "HANDSUP_STAND")
end)
    
AddRemoteEvent("StopAnimation", function(playerid)
    SetPlayerAnimation(playerid, "STOP")
end)