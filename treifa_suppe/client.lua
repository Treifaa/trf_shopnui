
ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(5000)
    end

    ESX.PlayerData = ESX.GetPlayerData()
end)



RegisterCommand("test", function()

    SendNUIMessage({
        action = "showui"

    })
    SetNuiFocus(true, true)
    
end)

RegisterNUICallback('close', function()
    SetNuiFocus(false, false)
end)



RegisterNUICallback("boiss", function(data)

    TriggerServerEvent('epi:wat')
end)

RegisterNUICallback("pain", function(data)

    TriggerServerEvent('epi:pain')
end)

RegisterNUICallback("cook", function(data)

    TriggerServerEvent('epi:cook')
end)




Citizen.CreateThread(function()
    while true do
        local Timer = 500
        local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
        for k,v in pairs(Config.position) do
            local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, v.x, v.y, v.z)
        
            if dist3 <= 3.0 then
            Timer = 0   
            DrawMarker(6, v.x, v.y, v.z-1.00, 0.0, 0.0, 0.0, -90.0, 0.0, 0.0, 0.7, 0.7, 0.7, 0, 155, 255, 200, false, false, true, false, false, false, false, false)
                if IsControlJustPressed(1,51) then
                    Citizen.Wait(100)
                    epicerie()
                end   
            end
        end
        
    Citizen.Wait(Timer)
    end
end)


function epicerie()

    SendNUIMessage({
        action = "showui"

    })
    SetNuiFocus(true, true)
end
for k,v in pairs(Config.position) do
    Citizen.CreateThread(function()
        local epiceriemap = AddBlipForCoord(v.x, v.y, v.z)
        SetBlipSprite(epiceriemap, 59)
        SetBlipColour(epiceriemap, 2)
        SetBlipAsShortRange(epiceriemap, true)
        SetBlipScale(epiceriemap, 0.65)

        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString("Epicerie")
        EndTextCommandSetBlipName(epiceriemap)
    end)
end