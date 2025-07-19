QBCore = nil

Citizen.CreateThread(function()
    if Config.Framework.name == 'QB' then
        while not QBCore do
            pcall(function() QBCore = exports[Config.Framework.scriptName]:GetCoreObject() end)
            if not QBCore then
                pcall(function() QBCore = exports[Config.Framework.scriptName]:GetSharedObject() end)
            end
            if not QBCore then
                TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
            end
            Citizen.Wait(10)
        end
        
        for itemName, itemData in pairs(Config.Pets) do
            QBCore.Functions.CreateUseableItem(itemName, function(source, item)
                local src = source
                local player = QBCore.Functions.GetPlayer(src)

                if player then
                    TriggerClientEvent('pets:client:attachPet', src, itemName, itemData)
                end
            end)
        end

        AddEventHandler('QBCore:OnRemoveInventoryItem', function(source, item, count)
            local src = source
            local player = QBCore.Functions.GetPlayer(src)
            
            if player then
                for itemName, itemData in pairs(Config.Pets) do
                    if item == itemName and count < 1 then
                        TriggerClientEvent('pets:client:attachPet', src, itemName, itemData)
                    end
                end
            end
        end)
    end
end)

RegisterServerEvent('pets:server:petEffect')
AddEventHandler('pets:server:petEffect', function(petObject, petConfig, petCoords)
    TriggerClientEvent('pets:client:petEffect', -1, petObject, petConfig, petCoords)
end)