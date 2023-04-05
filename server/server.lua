local ESX = exports["es_extended"]:getSharedObject()

-- call back
ESX.RegisterServerCallback('esx-farming:server:SellInfoTomato', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.Tomato).count >= 1 then
            cb(true)
        else
            cb(false)
        end
    end
end)

ESX.RegisterServerCallback('esx-farming:server:SellInfoMango', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.Mango).count >= 1 then
            cb(true)
        else
            cb(false)
        end
    end
end)

ESX.RegisterServerCallback('esx-farming:server:SellInfoOrange', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.Orange).count >= 1 then
            cb(true)
        else
            cb(false)
        end
    end
end)

ESX.RegisterServerCallback('esx-farming:server:SellInfoApple', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.Apple).count >= 1 then
            cb(true)
        else
            cb(false)
        end
    end
end)

ESX.RegisterServerCallback('esx-farming:server:SellInfoGauva', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.Gauva).count >= 1 then
            cb(true)
        else
            cb(false)
        end
    end
end)


ESX.RegisterServerCallback('esx-farming:server:TomatoKetchupInfo', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.Tomato).count >= 5 then
            cb(true)
        else
            cb(false)
        end
    end
end)
ESX.RegisterServerCallback('esx-farming:server:TomatoPasteInfo', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.Tomato).count >= 10 then
            cb(true)
        else
            cb(false)
        end
    end
end)


ESX.RegisterServerCallback('esx-farming:server:MangoJuiceInfo', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.Mango).count >= 10 then
            cb(true)
        else
            cb(false)
        end
    end
end)

ESX.RegisterServerCallback('esx-farming:server:MangoWineInfo', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.Mango).count >= 25 then
            cb(true)
        else
            cb(false)
        end
    end
end)

ESX.RegisterServerCallback('esx-farming:server:OrangeJuiceInfo', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.Orange).count >= 10 then
            cb(true)
        else
            cb(false)
        end
    end
end)

ESX.RegisterServerCallback('esx-farming:server:OrangeWineInfo', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.Orange).count >= 25 then
            cb(true)
        else
            cb(false)
        end
    end
end)

ESX.RegisterServerCallback('esx-farming:server:AppleJuiceInfo', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.Apple).count >= 10 then
            cb(true)
        else
            cb(false)
        end
    end
end)

ESX.RegisterServerCallback('esx-farming:server:AppleWineInfo', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.Apple).count >= 25 then
            cb(true)
        else
            cb(false)
        end
    end
end)

ESX.RegisterServerCallback('esx-farming:server:GauvaJuiceInfo', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.Gauva).count >= 10 then
            cb(true)
        else
            cb(false)
        end
    end
end)

ESX.RegisterServerCallback('esx-farming:server:GauvaWineInfo', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.Gauva).count >= 25 then
            cb(true)
        else
            cb(false)
        end
    end
end)

ESX.RegisterServerCallback('esx-farming:server:TomatoKetchupInfoSell', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.TomatoKetchup).count >= 1 then
            cb(true)
        else
            cb(false)
        end
    end
end)

ESX.RegisterServerCallback('esx-farming:server:TomatoPasteInfoSell', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.TomatoPaste).count >= 1 then
            cb(true)
        else
            cb(false)
        end
    end
end)

--
ESX.RegisterServerCallback('esx-farming:server:MangoJuiceInfoSell', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.MangoJuice).count >= 1 then
            cb(true)
        else
            cb(false)
        end
    end
end)

ESX.RegisterServerCallback('esx-farming:server:MangoWineInfoSell', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.MangoWine).count >= 1 then
            cb(true)
        else
            cb(false)
        end
    end
end)


--
ESX.RegisterServerCallback('esx-farming:server:OrangeJuiceInfoSell', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.OrangeJuice).count >= 1 then
            cb(true)
        else
            cb(false)
        end
    end
end)

ESX.RegisterServerCallback('esx-farming:server:OrangeWineInfoSell', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.OrangeWine).count >= 1 then
            cb(true)
        else
            cb(false)
        end
    end
end)

--
ESX.RegisterServerCallback('esx-farming:server:AppleJuiceInfoSell', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.AppleJuice).count >= 1 then
            cb(true)
        else
            cb(false)
        end
    end
end)

ESX.RegisterServerCallback('esx-farming:server:AppleWineInfoSell', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.AppleWine).count >= 1 then
            cb(true)
        else
            cb(false)
        end
    end
end)

--
ESX.RegisterServerCallback('esx-farming:server:GauvaJuiceInfoSell', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.GauvaJuice).count >= 1 then
            cb(true)
        else
            cb(false)
        end
    end
end)

ESX.RegisterServerCallback('esx-farming:server:GauvaWineInfoSell', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    if Player ~= nil then
        if Player.getInventoryItem(Config.GauvaWine).count >= 1 then
            cb(true)
        else
            cb(false)
        end
    end
end)
---------------------------------------------- Tomato -------------------------------------------------------------------
---SEll Tomato Rewards
RegisterNetEvent("esx-farming:server:TomatoSellRewards")
AddEventHandler("esx-farming:server:TomatoSellRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local price = 0
    while true do
        local itemData = Player.getInventoryItem(Config.Tomato)
        if itemData and itemData.count >= 1 then
            price = itemData.count * 10
            Player.removeInventoryItem(Config.Tomato, itemData.count)
        else
            break
        end
    end
    Player.addMoney(price)
    TriggerClientEvent('esx-farming:client:notify', src, 'Tomato Sold', 'Tomato', 'center-right', 'success')
end)

-- Tomato Rewards
RegisterNetEvent("esx-farming:server:TomatoRewards")
AddEventHandler("esx-farming:server:TomatoRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local amount = Config.PickAmountTomato
    Player.addInventoryItem(Config.Tomato , amount)
    TriggerClientEvent('esx-farming:client:notify', src, 'Add '..amount..' Tomato', 'Picked Tomato', 'center-right', 'success')
end)
-- Tomato Ketchup Rewards
RegisterNetEvent("esx-farming:server:TomatoKetchupRewards")
AddEventHandler("esx-farming:server:TomatoKetchupRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local tomatoAmountMaKe = 5
    if Player.getInventoryItem(Config.Tomato) ~= nil and Player.getInventoryItem(Config.Tomato).count >= tomatoAmountMaKe then
        Player.removeInventoryItem(Config.Tomato, tomatoAmountMaKe)
        Player.addInventoryItem(Config.TomatoKetchup, 1)
        ESX.GetItemLabel(Config.TomatoKetchup)
        TriggerClientEvent('esx-farming:client:notify', src, 'Add Tomato Ketchup', 'Tomato Ketchup', 'center-right', 'success')
    end
end)
-- Tomato Paste Rewards
RegisterNetEvent("esx-farming:server:TomatoPasteRewards")
AddEventHandler("esx-farming:server:TomatoPasteRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local tomatoAmountMaKe = 10
    if Player.getInventoryItem(Config.Tomato) ~= nil and Player.getInventoryItem(Config.Tomato).count >= tomatoAmountMaKe then
        Player.removeInventoryItem(Config.Tomato, tomatoAmountMaKe)
        Player.addInventoryItem(Config.TomatoPaste, 1)
        ESX.GetItemLabel(Config.TomatoPaste)
        TriggerClientEvent('esx-farming:client:notify', src, 'Add Tomato Paste', 'Tomato Paste', 'center-right', 'success')
    end
end)
--Sell Tomato Ketchup Rewards
RegisterNetEvent("esx-farming:server:SellTomatoKetchupRewards")
AddEventHandler("esx-farming:server:SellTomatoKetchupRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local price = 0
    while true do
        local itemData = Player.getInventoryItem(Config.TomatoKetchup)
        if itemData and itemData.count >= 1 then
            price = itemData.count * 75
            Player.removeInventoryItem(Config.TomatoKetchup, itemData.count)
        else
            break
        end
    end
    Player.addMoney(price)
    TriggerClientEvent('esx-farming:client:notify', src, 'Tomato Ketchup Sold', 'Tomato Ketchup', 'center-right', 'success')
end)
--Sell Tomato Paste Rewards
RegisterNetEvent("esx-farming:server:SellTomatoPatseRewards")
AddEventHandler("esx-farming:server:SellTomatoPatseRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local price = 0
    while true do
        local itemData = Player.getInventoryItem(Config.TomatoPaste)
        if itemData and itemData.count >= 1 then
            price = itemData.count * 150
            Player.removeInventoryItem(Config.TomatoPaste, itemData.count)
        else
            break
        end
    end
    Player.addMoney(price)
    TriggerClientEvent('esx-farming:client:notify', src, 'Tomato Paste Sold', 'Tomato Paste', 'center-right', 'success')
end)

---------------------------------------------------------------------------Mango ---------------------------------------------------------------------------------
-- Mango Rewards
RegisterNetEvent("esx-farming:server:MangoRewards")
AddEventHandler("esx-farming:server:MangoRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local amount = Config.PickAmountMango 
    Player.addInventoryItem(Config.Mango , amount)
    TriggerClientEvent('esx-farming:client:notify', src, 'Add '..amount..' Mango', 'Picked Mango', 'center-right', 'success')
end)

---SEll Mango Rewards
RegisterNetEvent("esx-farming:server:MangoSellRewards")
AddEventHandler("esx-farming:server:MangoSellRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local price = 0
    while true do
        local itemData = Player.getInventoryItem(Config.Mango)
        if itemData and itemData.count >= 1 then
            price = itemData.count * 25
            Player.removeInventoryItem(Config.Mango, itemData.count)
        else
            break
        end
    end
    Player.addMoney(price)
    TriggerClientEvent('esx-farming:client:notify', src, 'Mango Sold', 'Mango', 'center-right', 'success')
end)

-- Mango Juice Rewards
RegisterNetEvent("esx-farming:server:MangoJuiceRewards")
AddEventHandler("esx-farming:server:MangoJuiceRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local tomatoAmountMaKe = 10
    if Player.getInventoryItem(Config.Mango) ~= nil and Player.getInventoryItem(Config.Mango).count >= tomatoAmountMaKe then
        Player.removeInventoryItem(Config.Mango, tomatoAmountMaKe)
        Player.addInventoryItem(Config.MangoJuice, 1)
        ESX.GetItemLabel(Config.MangoJuice)
        TriggerClientEvent('esx-farming:client:notify', src, 'Add Mango Juice', 'Mango Juice', 'center-right', 'success')
    end
end)
-- Mango Wine Rewards
RegisterNetEvent("esx-farming:server:MangoWineRewards")
AddEventHandler("esx-farming:server:MangoWineRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local tomatoAmountMaKe = 25
    if Player.getInventoryItem(Config.Mango) ~= nil and Player.getInventoryItem(Config.Mango).count >= tomatoAmountMaKe then
        Player.removeInventoryItem(Config.Mango, tomatoAmountMaKe)
        Player.addInventoryItem(Config.MangoWine, 1)
        ESX.GetItemLabel(Config.MangoWine)
        TriggerClientEvent('esx-farming:client:notify', src, 'Add Mango Wine', 'Mango Wine', 'center-right', 'success')
    end
end)

--Sell Mango Juice Rewards
RegisterNetEvent("esx-farming:server:SellMangoJuiceRewards")
AddEventHandler("esx-farming:server:SellMangoJuiceRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local price = 0
    while true do
        local itemData = Player.getInventoryItem(Config.MangoJuice)
        if itemData and itemData.count >= 1 then
            price = itemData.count * Config.JuicePrice
            Player.removeInventoryItem(Config.MangoJuice, itemData.count)
        else
            break
        end
    end
    Player.addMoney(price)
    TriggerClientEvent('esx-farming:client:notify', src, 'Mango Juice Sold', 'Mango Juice', 'center-right', 'success')
end)
--Sell Mango Wine Rewards
RegisterNetEvent("esx-farming:server:SellMangoWineRewards")
AddEventHandler("esx-farming:server:SellMangoWineRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local price = 0
    while true do
        local itemData = Player.getInventoryItem(Config.MangoWine)
        if itemData and itemData.count >= 1 then
            price = itemData.count * Config.WinePrice
            Player.removeInventoryItem(Config.MangoWine, itemData.count)
        else
            break
        end
    end
    Player.addMoney(price)
    TriggerClientEvent('esx-farming:client:notify', src, 'Mango Wine Sold', 'Mango Wine', 'center-right', 'success')
end)

---------------------------------------------------------------------------Orange ---------------------------------------------------------------------------------

-- Orange Rewards
RegisterNetEvent("esx-farming:server:OrangeRewards")
AddEventHandler("esx-farming:server:OrangeRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local amount = Config.PickAmountOrange 
    Player.addInventoryItem(Config.Orange, amount)
    TriggerClientEvent('esx-farming:client:notify', src, 'Add '..amount..' Orange', 'Picked Orange', 'center-right', 'success')
end)

---SEll Orange Rewards
RegisterNetEvent("esx-farming:server:OrangeSellRewards")
AddEventHandler("esx-farming:server:OrangeSellRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local price = 0
    while true do
        local itemData = Player.getInventoryItem(Config.Orange)
        if itemData and itemData.count >= 1 then
            price = itemData.count * 25
            Player.removeInventoryItem(Config.Orange, itemData.count)
        else
            break
        end
    end
    Player.addMoney(price)
    TriggerClientEvent('esx-farming:client:notify', src, 'Orange Sold', 'Orange', 'center-right', 'success')
end)

-- Orange Juice Rewards
RegisterNetEvent("esx-farming:server:OrangeJuiceRewards")
AddEventHandler("esx-farming:server:OrangeJuiceRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local tomatoAmountMaKe = 10
    if Player.getInventoryItem(Config.Orange) ~= nil and Player.getInventoryItem(Config.Orange).count >= tomatoAmountMaKe then
        Player.removeInventoryItem(Config.Orange, tomatoAmountMaKe)
        Player.addInventoryItem(Config.OrangeJuice, 1)
        ESX.GetItemLabel(Config.OrangeJuice)
        TriggerClientEvent('esx-farming:client:notify', src, 'Add Orange Juice', 'Orange Juice', 'center-right', 'success')
    end
end)
-- Orange Wine Rewards
RegisterNetEvent("esx-farming:server:OrangeWineRewards")
AddEventHandler("esx-farming:server:OrangeWineRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local tomatoAmountMaKe = 25
    if Player.getInventoryItem(Config.Orange) ~= nil and Player.getInventoryItem(Config.Orange).count >= tomatoAmountMaKe then
        Player.removeInventoryItem(Config.Orange, tomatoAmountMaKe)
        Player.addInventoryItem(Config.OrangeWine, 1)
        ESX.GetItemLabel(Config.OrangeWine)
        TriggerClientEvent('esx-farming:client:notify', src, 'Add Orange Wine', 'Orange Wine', 'center-right', 'success')
    end
end)

--Sell Orange Juice Rewards
RegisterNetEvent("esx-farming:server:SellOrangeJuiceRewards")
AddEventHandler("esx-farming:server:SellOrangeJuiceRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local price = 0
    while true do
        local itemData = Player.getInventoryItem(Config.OrangeJuice)
        if itemData and itemData.count >= 1 then
            price = itemData.count * Config.JuicePrice
            Player.removeInventoryItem(Config.OrangeJuice, itemData.count)
        else
            break
        end
    end
    Player.addMoney(price)
    TriggerClientEvent('esx-farming:client:notify', src, 'Orange Juice Sold', 'Orange Juice', 'center-right', 'success')
end)
--Sell Orange Wine Rewards
RegisterNetEvent("esx-farming:server:SellOrangeWineRewards")
AddEventHandler("esx-farming:server:SellOrangeWineRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local price = 0
    while true do
        local itemData = Player.getInventoryItem(Config.OrangeWine)
        if itemData and itemData.count >= 1 then
            price = itemData.count * Config.WinePrice
            Player.removeInventoryItem(Config.OrangeWine, itemData.count)
        else
            break
        end
    end
    Player.addMoney(price)
    TriggerClientEvent('esx-farming:client:notify', src, 'Orange Wine Sold', 'Orange Wine', 'center-right', 'success')
end)
---------------------------------------------------------------------------Apple ---------------------------------------------------------------------------------

-- Apple Rewards
RegisterNetEvent("esx-farming:server:AppleRewards")
AddEventHandler("esx-farming:server:AppleRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local amount = Config.PickAmountApple
    Player.addInventoryItem(Config.Apple, amount)
    TriggerClientEvent('esx-farming:client:notify', src, 'Add '..amount..' Apple', 'Picked Apple', 'center-right', 'success')
end)

---SEll Apple Rewards
RegisterNetEvent("esx-farming:server:AppleSellRewards")
AddEventHandler("esx-farming:server:AppleSellRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local price = 0
    while true do
        local itemData = Player.getInventoryItem(Config.Apple)
        if itemData and itemData.count >= 1 then
            price = itemData.count * 25
            Player.removeInventoryItem(Config.Apple, itemData.count)
        else
            break
        end
    end
    Player.addMoney(price)
    TriggerClientEvent('esx-farming:client:notify', src, 'Apple Sold', 'Apple', 'center-right', 'success')
end)

-- Apple Juice Rewards
RegisterNetEvent("esx-farming:server:AppleJuiceRewards")
AddEventHandler("esx-farming:server:AppleJuiceRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local tomatoAmountMaKe = 10
    if Player.getInventoryItem(Config.Apple) ~= nil and Player.getInventoryItem(Config.Apple).count >= tomatoAmountMaKe then
        Player.removeInventoryItem(Config.Apple, tomatoAmountMaKe)
        Player.addInventoryItem(Config.AppleJuice, 1)
        ESX.GetItemLabel(Config.AppleJuice)
        TriggerClientEvent('esx-farming:client:notify', src, 'Add Apple Juice', 'Apple Juice', 'center-right', 'success')
    end
end)
-- Apple Wine Rewards
RegisterNetEvent("esx-farming:server:AppleWineRewards")
AddEventHandler("esx-farming:server:AppleWineRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local tomatoAmountMaKe = 25
    if Player.getInventoryItem(Config.Apple) ~= nil and Player.getInventoryItem(Config.Apple).count >= tomatoAmountMaKe then
        Player.removeInventoryItem(Config.Apple, tomatoAmountMaKe)
        Player.addInventoryItem(Config.AppleWine, 1)
        ESX.GetItemLabel(Config.AppleWine)
        TriggerClientEvent('esx-farming:client:notify', src, 'Add Apple Wine', 'Apple Wine', 'center-right', 'success')
    end
end)

--Sell Apple Juice Rewards
RegisterNetEvent("esx-farming:server:SellAppleJuiceRewards")
AddEventHandler("esx-farming:server:SellAppleJuiceRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local price = 0
    while true do
        local itemData = Player.getInventoryItem(Config.AppleJuice)
        if itemData and itemData.count >= 1 then
            price = itemData.count * Config.JuicePrice
            Player.removeInventoryItem(Config.AppleJuice, itemData.count)
        else
            break
        end
    end
    Player.addMoney(price)
    TriggerClientEvent('esx-farming:client:notify', src, 'Apple Juice Sold', 'Apple Juice', 'center-right', 'success')
end)
--Sell Apple Wine Rewards
RegisterNetEvent("esx-farming:server:SellAppleWineRewards")
AddEventHandler("esx-farming:server:SellAppleWineRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local price = 0
    while true do
        local itemData = Player.getInventoryItem(Config.AppleWine)
        if itemData and itemData.count >= 1 then
            price = itemData.count * Config.WinePrice
            Player.removeInventoryItem(Config.AppleWine, itemData.count)
        else
            break
        end
    end
    Player.addMoney(price)
    TriggerClientEvent('esx-farming:client:notify', src, 'Apple Wine Sold', 'Apple Wine', 'center-right', 'success')
end)
---------------------------------------------------------------------------Gauva ---------------------------------------------------------------------------------

-- Gauva Rewards
RegisterNetEvent("esx-farming:server:GauvaRewards")
AddEventHandler("esx-farming:server:GauvaRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local amount = Config.PickAmountGauva
    Player.addInventoryItem(Config.Gauva, amount)
    TriggerClientEvent('esx-farming:client:notify', src, 'Add '..amount..' Gauva', 'Picked Gauva', 'center-right', 'success')
end)

---SEll Gauva Rewards
RegisterNetEvent("esx-farming:server:GauvaSellRewards")
AddEventHandler("esx-farming:server:GauvaSellRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local price = 0
    while true do
        local itemData = Player.getInventoryItem(Config.Gauva)
        if itemData and itemData.count >= 1 then
            price = itemData.count * 25
            Player.removeInventoryItem(Config.Gauva, itemData.count)
        else
            break
        end
    end
    Player.addMoney(price)
    TriggerClientEvent('esx-farming:client:notify', src, 'Gauva Sold', 'Gauva', 'center-right', 'success')
end)


-- Gauva Juice Rewards
RegisterNetEvent("esx-farming:server:GauvaJuiceRewards")
AddEventHandler("esx-farming:server:GauvaJuiceRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local tomatoAmountMaKe = 10
    if Player.getInventoryItem(Config.Gauva) ~= nil and Player.getInventoryItem(Config.Gauva).count >= tomatoAmountMaKe then
        Player.removeInventoryItem(Config.Gauva, tomatoAmountMaKe)
        Player.addInventoryItem(Config.GauvaJuice, 1)
        ESX.GetItemLabel(Config.GauvaJuice)
        TriggerClientEvent('esx-farming:client:notify', src, 'Add Gauva Juice', 'Gauva Juice', 'center-right', 'success')
    end
end)
-- Gauva Wine Rewards
RegisterNetEvent("esx-farming:server:GauvaWineRewards")
AddEventHandler("esx-farming:server:GauvaWineRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local tomatoAmountMaKe = 25
    if Player.getInventoryItem(Config.Gauva) ~= nil and Player.getInventoryItem(Config.Gauva).count >= tomatoAmountMaKe then
        Player.removeInventoryItem(Config.Gauva, tomatoAmountMaKe)
        Player.addInventoryItem(Config.GauvaWine, 1)
        ESX.GetItemLabel(Config.GauvaWine)
        TriggerClientEvent('esx-farming:client:notify', src, 'Add Gauva Wine', 'Gauva Wine', 'center-right', 'success')
    end
end)


--Sell Gauva Juice Rewards
RegisterNetEvent("esx-farming:server:SellGauvaJuiceRewards")
AddEventHandler("esx-farming:server:SellGauvaJuiceRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local price = 0
    while true do
        local itemData = Player.getInventoryItem(Config.GauvaJuice)
        if itemData and itemData.count >= 1 then
            price = itemData.count * Config.JuicePrice
            Player.removeInventoryItem(Config.GauvaJuice, itemData.count)
        else
            break
        end
    end
    Player.addMoney(price)
    TriggerClientEvent('esx-farming:client:notify', src, 'Gauva Juice Sold', 'Gauva Juice', 'center-right', 'success')
end)
--Sell Gauva Wine Rewards
RegisterNetEvent("esx-farming:server:SellGauvaWineRewards")
AddEventHandler("esx-farming:server:SellGauvaWineRewards", function(src)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local price = 0
    while true do
        local itemData = Player.getInventoryItem(Config.GauvaWine)
        if itemData and itemData.count >= 1 then
            price = itemData.count * Config.WinePrice
            Player.removeInventoryItem(Config.GauvaWine, itemData.count)
        else

            break
        end
    end
    Player.addMoney(price)
    TriggerClientEvent('esx-farming:client:notify', src, 'Gauva Wine Sold', 'Gauva Wine', 'center-right', 'success')
end)


AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    print("---------------------------------------------------------------------------------------------")
    print("       ^Github ^5 --> ^https://github.com/Gjayz         "," ^Author Gjayz")
    print("       ^Main Github ^5 --> ^https://github.com/gjayz099         ","ESX-Legacy Farming Job")
    print("---------------------------------------------------------------------------------------------")
end)
