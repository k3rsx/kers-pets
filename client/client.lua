localPet = {
    ['object'] = nil,
    ['position'] = Config.Menu.startPosition,
    ['petName'] = nil
}
QBCore = nil
isNuiFocus = false
Strings = {}

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
    elseif Config.Framework.name == 'STANDALONE' then
        RegisterCommand(Config.Framework.standaloneCommand, function(a, args, b)
            if args[1] and Config.Pets[args[1]] then
                TriggerEvent('pets:client:attachPet', args[1], Config.Pets[args[1]])
            end
        end)
    end
    while not NetworkIsSessionStarted() do
        Citizen.Wait(100)
    end
    Citizen.Wait(1000)
    
    if Config.Language == 'en' then
        Strings = Locale.en
    else
        Strings = Locale.tr
    end
    
    SendNUIMessage({
        action = 'config',
        locale = Config.Language,
        locales = Strings,
        menuAlign = Config.Menu.align
    })
end)

function TriggerCallback(cbName, cb, data)
    if Config.Framework.name == 'QB' then
        QBCore.Functions.TriggerCallback(cbName, function(data)
            if cb then cb(data) else return data end
        end, data)
    end
end

RegisterNetEvent('pets:client:attachPet')
AddEventHandler('pets:client:attachPet', function(petName, petData)
    if not localPet['object'] then
        local ped = PlayerPedId()
        local pedCo = GetEntityCoords(ped)
        loadModel(GetHashKey(petData['objectName']))
        localPet['object'] = CreateObject(GetHashKey(petData['objectName']), pedCo, 1, 1, 0)
        localPet['petName'] = petName
        localPet['position'] = Config.Menu.startPosition

        if Config.Menu.startPosition == 'left' then 
            AttachEntityToEntity(localPet['object'], ped, GetPedBoneIndex(ped, 24818), petData['settings']['left']['attachPos'], petData['settings']['left']['attachRot'], true, true, false, false, 1, true)
        else
            AttachEntityToEntity(localPet['object'], ped, GetPedBoneIndex(ped, 24818), petData['settings']['right']['attachPos'], petData['settings']['right']['attachRot'], true, true, false, false, 1, true)
        end
        
        if Config.Framework.name == 'QB' then
            QBCore.Functions.Notify(Strings['pet_activated'] .. ': ' .. petName, "success")
        else
            ShowNotification(Strings['pet_activated'] .. ': ' .. petName)
        end
    else
        if petName ~= localPet['petName'] then
            if Config.Framework.name == 'QB' then
                QBCore.Functions.Notify(Strings['already_have'], "error")
            else
                ShowNotification(Strings['already_have'])
            end
            return
        end
        DeletePet(false)
    end
end)

function DeletePet(refresh)
    if localPet['object'] then
        local ped = PlayerPedId()
        DetachEntity(localPet['object'], true, false)
        DeleteObject(localPet['object'])
    end
    
    if not refresh then
        localPet = {
            ['object'] = nil,
            ['position'] = Config.Menu.startPosition,
            ['petName'] = nil
        }
    end
end

RegisterCommand(Config.Menu.command, function()
    if localPet['object'] and localPet['petName'] then
        SendNUIMessage({
            action = 'show',
            petName = localPet['petName'],
            position = localPet['position'],
            locale = Config.Language,
            locales = Strings
        })
        SetNuiFocus(true, true)
        isNuiFocus = true
    else
        if Config.Framework.name == 'QB' and QBCore then
            QBCore.Functions.Notify(Strings['no_pet'] or 'You dont have pet', "error")
        else
            ShowNotification(Strings['no_pet'] or 'You dont have pet')
        end
    end
end)

RegisterNetEvent('pets:client:petEffect')
AddEventHandler('pets:client:petEffect', function(petObject, petConfig, petCoords)
    local ped = PlayerPedId()
    local pedCo = GetEntityCoords(ped)
    local dist = #(pedCo - petCoords)
    if dist <= 100.0 then
        loadPtfxAsset(petConfig['particle']['particleDict'])
        UseParticleFxAssetNextCall(petConfig['particle']['particleDict'])
        ptfx = StartParticleFxLoopedOnEntity(petConfig['particle']['particleName'], NetToObj(petObject), petConfig['particle']['particlePos'], petConfig['particle']['particleRot'], petConfig['particle']['particleScale'], 0.0, 0.0, 0.0)
        Wait(1000)
        StopParticleFxLooped(ptfx, 1)
    end
end)

effectDelay = false
RegisterNUICallback('petEffect', function(data, cb)
    if localPet['object'] and localPet['petName'] then
        if not effectDelay then
            local ped = PlayerPedId()
            local pedCo = GetEntityCoords(ped)
            local petConfig = Config.Pets[localPet['petName']]['settings']
            TriggerServerEvent('pets:server:petEffect', ObjToNet(localPet['object']), petConfig, pedCo)
            effectDelay = true

            Citizen.CreateThread(function()
                Citizen.Wait(Config.Timing.effectDelay)
                effectDelay = false
            end)
        else
            if Config.Framework.name == 'QB' then
                QBCore.Functions.Notify(Strings['cooldown'], "error")
            else
                ShowNotification(Strings['cooldown'])
            end
        end
    end
    cb('ok')
end)

refreshDelay = false
stopUpdate = false
RegisterNUICallback('refreshPet', function(data, cb)
    if localPet['object'] and localPet['petName'] then
        if not refreshDelay then
            DeletePet(true)
            stopUpdate = true
            Wait(1000)
            local ped = PlayerPedId()
            local pedCo = GetEntityCoords(ped)
            local petData = Config.Pets[localPet['petName']]
            loadModel(GetHashKey(petData['objectName']))
            localPet['object'] = CreateObject(GetHashKey(petData['objectName']), pedCo, 1, 1, 0)
            
            if localPet['position'] == 'left' then 
                AttachEntityToEntity(localPet['object'], ped, GetPedBoneIndex(ped, 24818), petData['settings']['left']['attachPos'], petData['settings']['left']['attachRot'], true, true, false, false, 1, true)
            else
                AttachEntityToEntity(localPet['object'], ped, GetPedBoneIndex(ped, 24818), petData['settings']['right']['attachPos'], petData['settings']['right']['attachRot'], true, true, false, false, 1, true)
            end
            
            stopUpdate = false
            refreshDelay = true

            Citizen.CreateThread(function()
                Citizen.Wait(Config.Timing.refreshDelay)
                refreshDelay = false
            end)
        else
            if Config.Framework.name == 'QB' then
                QBCore.Functions.Notify(Strings['cooldown'], "error")
            else
                ShowNotification(Strings['cooldown'])
            end
        end
    end
    cb('ok')
end)

RegisterNUICallback('updatePosition', function(data, cb)
    if stopUpdate then 
        cb('ok')
        return 
    end
    
    if localPet['object'] and localPet['petName'] then
        local ped = PlayerPedId()
        local petData = Config.Pets[localPet['petName']]
        
        if data['position'] == 'left' then 
            AttachEntityToEntity(localPet['object'], ped, GetPedBoneIndex(ped, 24818), petData['settings']['left']['attachPos'], petData['settings']['left']['attachRot'], true, true, false, false, 1, true)
        else
            AttachEntityToEntity(localPet['object'], ped, GetPedBoneIndex(ped, 24818), petData['settings']['right']['attachPos'], petData['settings']['right']['attachRot'], true, true, false, false, 1, true)
        end

        localPet['position'] = data['position']
    end
    cb('ok')
end)

RegisterNUICallback('close', function(data, cb)
    SetNuiFocus(false, false)
    isNuiFocus = false
    cb('ok')
end)

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        if localPet['object'] then
            DeleteObject(localPet['object'])
        end
        if isNuiFocus then
            SetNuiFocus(false, false)
            isNuiFocus = false
        end
    end
end)

function loadPtfxAsset(dict)
    while not HasNamedPtfxAssetLoaded(dict) do
        RequestNamedPtfxAsset(dict)
        Citizen.Wait(50)
	end
end

function loadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Citizen.Wait(50)
    end
end

function loadModel(model)
    if type(model) == 'number' then
        model = model
    else
        model = GetHashKey(model)
    end
    while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(10)
    end
end

function ShowNotification(msg)
	SetNotificationTextEntry('STRING')
	AddTextComponentString(msg)
	DrawNotification(0, 1)
end