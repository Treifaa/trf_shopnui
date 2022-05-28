ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('epi:pain')
AddEventHandler('epi:pain', function(coords, raison)
    local _source = source

    xPlayer = ESX.GetPlayerFromId(source)


    xPlayer.addInventoryItem(Config.pain, 1)

    TriggerClientEvent('esx:showNotification', source, '~g~Vous avez reçu un '..Config.namepain)

end)


RegisterServerEvent('epi:wat')
AddEventHandler('epi:wat', function(coords, raison)
    local _source = source

    xPlayer = ESX.GetPlayerFromId(source)


    xPlayer.addInventoryItem(Config.wat, 1)

    TriggerClientEvent('esx:showNotification', source, '~g~Vous avez reçu un ' ..Config.namewat)

end)


RegisterServerEvent('epi:cook')
AddEventHandler('epi:cook', function(coords, raison)
    local _source = source

    xPlayer = ESX.GetPlayerFromId(source)


    xPlayer.addInventoryItem(Config.cook, 1)

    TriggerClientEvent('esx:showNotification', source, '~g~Vous avez reçu un '..Config.namecook)

end)