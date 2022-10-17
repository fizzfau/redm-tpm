RegisterCommand("tpm", function(source)
    local waypointCoords = GetWaypointCoords()
    for height = 1, 999 do
      Citizen.Wait(5)
      local retval, groundZ = GetGroundZAndNormalFor_3dCoord(waypointCoords.x, waypointCoords.y, height + 0.0)
      SetEntityCoords(PlayerPedId(), waypointCoords["x"], waypointCoords["y"], height + 0.0)
      if retval then
        SetEntityCoords(PlayerPedId(), waypointCoords["x"], waypointCoords["y"], height + 0.0)
        break
      end
    end
end)
