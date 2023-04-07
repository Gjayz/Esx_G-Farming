local ESX = exports["es_extended"]:getSharedObject()
-- target
local Target = exports.ox_target


-- Notifiy
RegisterNetEvent('esx-farming:client:notify')
AddEventHandler('esx-farming:client:notify', function(title, description, position, typeM)
    lib.notify({
        title = title,
        description = description,
        position = position,
        type = typeM
    })
end)


-- Progresbarr pick
RegisterNetEvent('esx-farmming:client:progressbar')
AddEventHandler('esx-farmming:client:progressbar', function(duration, position, label, useWhileDead, canCancel, move, car, dict, clip)
    lib.progressCircle({
        duration = duration,
        position = position,
        label = label,
        useWhileDead = useWhileDead,
        canCancel = canCancel,
        disable = {
            move = move,
            car = car,
        },
        anim = {
            dict =  dict,
            clip = clip
        },
    })
end)
-- Progresbarr Sell And Process
RegisterNetEvent('esx-farmming:client:progressbarSellPros')
AddEventHandler('esx-farmming:client:progressbarSellPros', function(duration, position, label, useWhileDead, canCancel, move, car, dict, clip, model, pos, rot)
    lib.progressCircle({
        duration = duration,
        position = position,
        label = label,
        useWhileDead = useWhileDead,
        canCancel = canCancel,
        disable = {
            move = move,
            car = car,
        },
        anim = {
            dict =  dict,
            clip = clip
        },
        prop = {
            model = model,
            pos = pos,
            rot = rot
        },
    })
end)



--- Ped
Citizen.CreateThread(function()
    for k, v in pairs(Config.PedLocation) do
    local modelHash = GetHashKey(v.model)
    RequestModel(modelHash) 
    while ( not HasModelLoaded(modelHash) ) do
        Wait(1)
    end
    local ped = CreatePed(1, modelHash, v.coords, false, true)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true) 
    TaskStartScenarioInPlace(ped, v.scenario, -1, true) 
    -- FreezeEntityPosition(ped, true)
    end
end)

if Config.UseBlips then
    Citizen.CreateThread(function()
      -- All Blips
        for k, v in pairs(Config.Allblips) do
            local AllBlip = AddBlipForCoord(v.coords)
            SetBlipSprite(AllBlip, v.SetBlipSprite)
            SetBlipDisplay(AllBlip, v.SetBlipDisplay)
            SetBlipScale(AllBlip, v.SetBlipScale)
            SetBlipColour(AllBlip, v.SetBlipColour)
            SetBlipAsShortRange(AllBlip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(v.BlipName)
            EndTextCommandSetBlipName(AllBlip)
        end

        --- Tomato 
        for _, v in pairs(Config.TomatoFields) do
            exports.ox_target:addBoxZone({
                coords = vec3(v.Coords.x, v.Coords.y, v.Coords.z),
                size = v.size,
                rotation = v.heading,
                debugPoly = drawZones,
                options = {
                    {
                    name = 'Picking Tomato',
                    event = "esx-farming:client:StartfarmTomato",
                    icon = "fa fa-sign-language",
                    label = Config.Label["PickTomato"],
                    }
                } 
            })
        end
        --- Mango
        for _, v in pairs(Config.MangoFields) do
            exports.ox_target:addBoxZone({
                coords = vec3(v.Coords.x, v.Coords.y, v.Coords.z),
                size = v.size,
                rotation = v.heading,
                debugPoly = drawZones,
                options = {
                    {
                    name = 'Picking Mango',
                    event = "esx-farming:client:StartfarmMango",
                    icon = "fa fa-sign-language",
                    label = Config.Label["PickMango"],
                    }
                } 
            })
        end
        --- Orange
        for _, v in pairs(Config.OrangeFields) do
            exports.ox_target:addBoxZone({
                coords = vec3(v.Coords.x, v.Coords.y, v.Coords.z),
                size = v.size,
                rotation = v.heading,
                debugPoly = drawZones,
                options = {
                    {
                    name = 'Picking Mango',
                    event = "esx-farming:client:StartfarmOrange",
                    icon = "fa fa-sign-language",
                    label = Config.Label["PickOrange"],
                    }
                } 
            })
        end

        --- Apple
        for _, v in pairs(Config.AppleFields) do
            exports.ox_target:addBoxZone({
                coords = vec3(v.Coords.x, v.Coords.y, v.Coords.z),
                size = v.size,
                rotation = v.heading,
                debugPoly = drawZones,
                options = {
                    {
                    name = 'Picking Apple',
                    event = "esx-farming:client:StartfarmApple",
                    icon = "fa fa-sign-language",
                    label = Config.Label["PickApple"],
                    }
                } 
            })
        end

        --- Gauva
        for _, v in pairs(Config.GauvaFields) do
            exports.ox_target:addBoxZone({
                coords = vec3(v.Coords.x, v.Coords.y, v.Coords.z),
                size = v.size,
                rotation = v.heading,
                debugPoly = drawZones,
                options = {
                    {
                    name = 'Picking Apple',
                    event = "esx-farming:client:StartfarmGauva",
                    icon = "fa fa-sign-language",
                    label = Config.Label["PickGauva"],
                    }
                } 
            })
        end

        exports.ox_target:addBoxZone({
            coords = vec3(2588.34, 3167.86, 50.97),
            size = vec3(.5, .5, 2),
            rotation = 325,
            debug = false,
            options = {
                {
                    name = 'Sell Food',
                    event = 'esx-farming:client:SellFood',
                    icon = "fa-solid fa-money-bill-wave",
                    label = Config.Label["Food"],
                },
                {
                    name = 'Processing Tomato',
                    event = 'esx-farming:client:FooodProcess',
                    icon = 'fa-solid fa-chalkboard-user',
                    label = Config.Label["ProcessFood"],
                },

            }
        })

        exports.ox_target:addBoxZone({
            coords = vec3(84.04, 190.71, 105.26),
            size = vec3(.5, .5, 2),
            rotation = 340,
            debug = false,
            options = {
                {
                    name = 'Sell Product',
                    event = 'esx-farming:client:SellProduct',
                    icon = "fa-solid fa-money-bill-wave",
                    label = Config.Label["SellProduct"],
                },
            }
        })
    end)
end

 -- all Sell menu
 RegisterNetEvent('esx-farming:client:SellFood')
 AddEventHandler('esx-farming:client:SellFood', function(src)
     lib.registerContext({
         id = 'sell_food',
         title = 'Sell Food',
         options = {
            {
                 icon = "fa-regular fa-money-bill-1",
                 title = 'Start Sell Tomato',
                 description = 'Tomato',
                 args = 1,
                 event = 'esx-farming:client:Sell',
            },  
            {
                icon = "fa-regular fa-money-bill-1",
                title = 'Start Sell Mango',
                description = 'Mango',
                args = 2,
                event = 'esx-farming:client:Sell',
            },  
            {
                icon = "fa-regular fa-money-bill-1",
                title = 'Start Sell Orange',
                description = 'Orange',
                args = 3,
                event = 'esx-farming:client:Sell',
            },  
            {
                icon = "fa-regular fa-money-bill-1",
                title = 'Start Sell Apple',
                description = 'Apple',
                args = 4,
                event = 'esx-farming:client:Sell',
            },  
            {
                icon = "fa-regular fa-money-bill-1",
                title = 'Start Sell Gauva',
                description = 'Gauva',
                args = 5,
                event = 'esx-farming:client:Sell',
            },  
         },
     })
     lib.showContext('sell_food')
 end)


 -- all Process menu
 RegisterNetEvent('esx-farming:client:FooodProcess')
 AddEventHandler('esx-farming:client:FooodProcess', function(src)
     lib.registerContext({
         id = 'proccess_food',
         title = 'Food Process',
         options = {
             {
                 icon = "fa-solid fa-clipboard",
                 title = 'Start Process Tomato',
                 description = 'Tomato',
                 event = 'esx-farming:client:TomatoProces',
             },  
             {
                icon = "fa-solid fa-clipboard",
                title = 'Start Process Mango',
                description = 'Mango',
                event = 'esx-farming:client:MangoProces',
            },  
            {
                icon = "fa-solid fa-clipboard",
                title = 'Start Process Orange',
                description = 'Orange',
                event = 'esx-farming:client:OrangeProces',
            },  
            {
                icon = "fa-solid fa-clipboard",
                title = 'Start Process Apple',
                description = 'Apple',
                event = 'esx-farming:client:AppleProces',
            },
            {
                icon = "fa-solid fa-clipboard",
                title = 'Start Process Gauva',
                description = 'Gauva',
                event = 'esx-farming:client:GauvaProces',
            },
         }
     })
     lib.showContext('proccess_food')
 end)

 -- Tomato
 RegisterNetEvent('esx-farming:client:TomatoProces')
 AddEventHandler('esx-farming:client:TomatoProces', function(src)
     lib.registerContext({
         id = 'proccess_tomato',
         title = 'Tomato Process',
         options = {
             {
                icon = "fa-solid fa-cubes-stacked",
                title = 'Start Process Tomato Ketchup',
                description = 'Tomato Ketchup',
                args = 1,
                event = "esx-farming:client:StartTomatoProduct",
                metadata = {
                    {label = 'Tomato', value = 5},
                },
             },  
             {
                icon = "fa-solid fa-cubes-stacked",
                title = 'Start Process Tomato Ketchup',
                description = 'Tomato Ketchup',
                args = 2,
                event = "esx-farming:client:StartTomatoProduct",
                metadata = {
                    {label = 'Tomato', value = 10},
                },
             },  
             {
                 title = '< Back',
                 event = "esx-farming:client:FooodProcess",
             }
         },
     })
     lib.showContext('proccess_tomato')
end)
-- Mango Product
RegisterNetEvent('esx-farming:client:MangoProces')
AddEventHandler('esx-farming:client:MangoProces', function(src)
     lib.registerContext({
         id = 'proccess_mango',
         title = 'Mango Process',
         options = {
             {
                icon = "fa-solid fa-cubes-stacked",
                title = 'Start Process Mango Juice',
                description = 'Mango Juice',
                args = 1,
                event = "esx-farming:client:StartMangoProduct",
                metadata = {
                    {label = 'Mango', value = 10},
                },
             },  
             {
                icon = "fa-solid fa-cubes-stacked",
                title = 'Start Process Mango Wine',
                description = 'Mango Wine',
                args = 2,
                event = "esx-farming:client:StartMangoProduct",
                metadata = {
                    {label = 'Mango', value = 25},
                },
             },  
             {
                 title = '< Back',
                 event = "esx-farming:client:FooodProcess",
             }
         },
     })
     lib.showContext('proccess_mango')
end)

-- Orange Product
RegisterNetEvent('esx-farming:client:OrangeProces')
AddEventHandler('esx-farming:client:OrangeProces', function(src)
     lib.registerContext({
         id = 'proccess_orange',
         title = 'Orange Process',
         options = {
             {
                icon = "fa-solid fa-cubes-stacked",
                title = 'Start Process Orange Juice',
                description = 'Orange Juice',
                args = 1,
                event = "esx-farming:client:StartOrangeProduct",
                metadata = {
                    {label = 'Orange', value = 10},
                },
             },  
             {
                icon = "fa-solid fa-cubes-stacked",
                title = 'Start Process Orange Wine',
                description = 'Orange Wine',
                args = 2,
                event = "esx-farming:client:StartOrangeProduct",
                metadata = {
                    {label = 'Orange', value = 25},
                },
             },  
             {
                 title = '< Back',
                 event = "esx-farming:client:FooodProcess",
             }
         },
     })
     lib.showContext('proccess_orange')
end)

-- Apple Product
RegisterNetEvent('esx-farming:client:AppleProces')
AddEventHandler('esx-farming:client:AppleProces', function(src)
     lib.registerContext({
         id = 'proccess_apple',
         title = 'Apple Process',
         options = {
             {
                icon = "fa-solid fa-cubes-stacked",
                title = 'Start Process Apple Juice',
                description = 'Apple Juice',
                args = 1,
                event = "esx-farming:client:StartAppleProduct",
                metadata = {
                    {label = 'Apple', value = 10},
                },
             },  
             {
                icon = "fa-solid fa-cubes-stacked",
                title = 'Start Process Apple Wine',
                description = 'Apple Wine',
                args = 2,
                event = "esx-farming:client:StartAppleProduct",
                metadata = {
                    {label = 'Apple', value = 25},
                },
             },  
             {
                 title = '< Back',
                 event = "esx-farming:client:FooodProcess",
             }
         },
     })
     lib.showContext('proccess_apple')
end)

-- Gauva Product
RegisterNetEvent('esx-farming:client:GauvaProces')
AddEventHandler('esx-farming:client:GauvaProces', function(src)
     lib.registerContext({
         id = 'proccess_gauva',
         title = 'Gauva Process',
         options = {
             {
                icon = "fa-solid fa-cubes-stacked",
                title = 'Start Process Gauva Juice',
                description = 'Gauva Juice',
                args = 1,
                event = "esx-farming:client:StartGauvaProduct",
                metadata = {
                    {label = 'Gauva', value = 10},
                },
             },  
             {
                icon = "fa-solid fa-cubes-stacked",
                title = 'Start Process Gauva Wine',
                description = 'Gauva Wine',
                args = 2,
                event = "esx-farming:client:StartGauvaProduct",
                metadata = {
                    {label = 'Gauva', value = 25},
                },
             },  
             {
                 title = '< Back',
                 event = "esx-farming:client:FooodProcess",
             }
         },
     })
     lib.showContext('proccess_gauva')
end)

-- all Product sell menu
 RegisterNetEvent('esx-farming:client:SellProduct')
 AddEventHandler('esx-farming:client:SellProduct', function(src)
     lib.registerContext({
         id = 'sell_product',
         title = 'Sell Product',
         options = {
            {
                icon = "fa-regular fa-money-bill-1",
                title = 'Sell Tomato Product',
                description = 'Tomato Product',
                event = "esx-farming:client:SellTomatoProduct",
            },  
            {
                icon = "fa-regular fa-money-bill-1",
                title = 'Sell Mango Product',
                description = 'Mango Product',
                event = "esx-farming:client:SellMangoProduct",
            },  
            {
                icon = "fa-regular fa-money-bill-1",
                title = 'Sell Orange Product',
                description = 'Orange Product',
                event = "esx-farming:client:SellOrangeProduct",
            },  
            {
                icon = "fa-regular fa-money-bill-1",
                title = 'Sell Apple Product',
                description = 'Apple Product',
                event = "esx-farming:client:SellAppleProduct",
            },  
            {
                icon = "fa-regular fa-money-bill-1",
                title = 'Sell Gauva Product',
                description = 'Gauva Product',
                event = "esx-farming:client:SellGauvaProduct",
            },  
         },
     })
     lib.showContext('sell_product')
 end)

-- Sell Tomato Product menu
 RegisterNetEvent('esx-farming:client:SellTomatoProduct')
 AddEventHandler('esx-farming:client:SellTomatoProduct', function(src)
     lib.registerContext({
         id = 'sell_product_tomato',
         title = 'Sell Tomato Product',
         options = {
             {
                icon = "fa-regular fa-money-bill-1",
                title = 'Sell Tomato Ketchup',
                description = 'Tomato Ketchup',
                args = 1,
                event = "esx-farming:client:StartSellTomatoProduct",
             },  
             {
                icon = "fa-regular fa-money-bill-1",
                title = 'Sell Tomato Paste',
                description = 'Tomato Paste',
                args = 2,
                event = "esx-farming:client:StartSellTomatoProduct",
             },  
             {
                title = '< Back',
                event = "esx-farming:client:SellProduct",
            }
         },
     })
     lib.showContext('sell_product_tomato')
 end)

-- Sell Mango Product menu
RegisterNetEvent('esx-farming:client:SellMangoProduct')
AddEventHandler('esx-farming:client:SellMangoProduct', function(src)
    lib.registerContext({
        id = 'sell_product_mango',
        title = 'Sell Mango Product',
        options = {
            {
               icon = "fa-regular fa-money-bill-1",
               title = 'Sell Mango Juice',
               description = 'Mango Juice',
               args = 1,
               event = "esx-farming:client:StartSellMangoProduct",
            },  
            {
               icon = "fa-regular fa-money-bill-1",
               title = 'Sell Mango Wine',
               description = 'Mango Wine',
               args = 2,
               event = "esx-farming:client:StartSellMangoProduct",
            },  
            {
               title = '< Back',
               event = "esx-farming:client:SellProduct",
           }
        },
    })
    lib.showContext('sell_product_mango')
end)

-- Sell Orange Product menu
RegisterNetEvent('esx-farming:client:SellOrangeProduct')
AddEventHandler('esx-farming:client:SellOrangeProduct', function(src)
    lib.registerContext({
        id = 'sell_product_orange',
        title = 'Sell Orange Product',
        options = {
            {
               icon = "fa-regular fa-money-bill-1",
               title = 'Sell Orange Juice',
               description = 'Orange Juice',
               args = 1,
               event = "esx-farming:client:StartSellOrangeProduct",
            },  
            {
               icon = "fa-regular fa-money-bill-1",
               title = 'Sell Orange Wine',
               description = 'Orange Wine',
               args = 2,
               event = "esx-farming:client:StartSellOrangeProduct",
            },  
            {
               title = '< Back',
               event = "esx-farming:client:SellProduct",
           }
        },
    })
    lib.showContext('sell_product_orange')
end)

-- Sell Apple Product menu
RegisterNetEvent('esx-farming:client:SellAppleProduct')
AddEventHandler('esx-farming:client:SellAppleProduct', function(src)
    lib.registerContext({
        id = 'sell_product_apple',
        title = 'Sell Apple Product',
        options = {
            {
               icon = "fa-regular fa-money-bill-1",
               title = 'Sell Apple Juice',
               description = 'Apple Juice',
               args = 1,
               event = "esx-farming:client:StartSellAppleProduct",
            },  
            {
               icon = "fa-regular fa-money-bill-1",
               title = 'Sell Apple Wine',
               description = 'Apple Wine',
               args = 2,
               event = "esx-farming:client:StartSellAppleProduct",
            },  
            {
               title = '< Back',
               event = "esx-farming:client:SellProduct",
           }
        },
    })
    lib.showContext('sell_product_apple')
end)

-- Sell Gauva Product menu
RegisterNetEvent('esx-farming:client:SellGauvaProduct')
AddEventHandler('esx-farming:client:SellGauvaProduct', function(src)
    lib.registerContext({
        id = 'sell_product_gauva',
        title = 'Sell Gauva Product',
        options = {
            {
               icon = "fa-regular fa-money-bill-1",
               title = 'Sell Gauva Juice',
               description = 'Gauva Juice',
               args = 1,
               event = "esx-farming:client:StartSellGauvaProduct",
            },  
            {
               icon = "fa-regular fa-money-bill-1",
               title = 'Sell Gauva Wine',
               description = 'Gauva Wine',
               args = 2,
               event = "esx-farming:client:StartSellGauvaProduct",
            },  
            {
               title = '< Back',
               event = "esx-farming:client:SellProduct",
           }
        },
    })
    lib.showContext('sell_product_gauva')
end)
---------------------------------------------------------------------------------------------------------
-- Start Pick Tomato
RegisterNetEvent('esx-farming:client:StartfarmTomato')
AddEventHandler('esx-farming:client:StartfarmTomato', function(args)
    TriggerEvent('esx-farmming:client:progressbar', 3000, 'bottom', Config.Label["PickTomato"], false, true, true, true, 'missmechanic', 'work_base')
    Wait(3000)
    TriggerServerEvent('esx-farming:server:TomatoRewards', src)
end)

-- Sell 
RegisterNetEvent('esx-farming:client:Sell')
AddEventHandler('esx-farming:client:Sell', function(args)
    if args == 1 then
        ESX.TriggerServerCallback('esx-farming:server:SellInfoTomato', function(Tomato)
            if Tomato then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 3000, 'bottom', Config.Label["SellTomato"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(3000)
                TriggerServerEvent('esx-farming:server:TomatoSellRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'Dont Have Tomato', 'Tomato', 'center-right', 'error')
            end
        end)
    elseif args == 2 then
        ESX.TriggerServerCallback('esx-farming:server:SellInfoMango', function(Mango)
            if Mango then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 3000, 'bottom', Config.Label["SellMango"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(3000)
                TriggerServerEvent('esx-farming:server:MangoSellRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'Dont Have Mango', 'Mango', 'center-right', 'error')
            end
        end)
    elseif args == 3 then
        ESX.TriggerServerCallback('esx-farming:server:SellInfoOrange', function(Orange)
            if Orange then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 3000, 'bottom', Config.Label["SellOrange"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(3000)
                TriggerServerEvent('esx-farming:server:OrangeSellRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'Dont Have Orange', 'Orange', 'center-right', 'error')
            end
        end)
    elseif args == 4 then
        ESX.TriggerServerCallback('esx-farming:server:SellInfoApple', function(Apple)
            if Apple then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 3000, 'bottom', Config.Label["SellApple"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(3000)
                TriggerServerEvent('esx-farming:server:AppleSellRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'Dont Have Apple', 'Apple', 'center-right', 'error')
            end
        end)
    elseif args == 5 then
        ESX.TriggerServerCallback('esx-farming:server:SellInfoGauva', function(Guava)
            if Guava then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 3000, 'bottom', Config.Label["SellApple"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(3000)
                TriggerServerEvent('esx-farming:server:GauvaSellRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'Dont Have Gauva', 'Guava', 'center-right', 'error')
            end
        end)
    end
end)
-- -Tomato Process
RegisterNetEvent('esx-farming:client:StartTomatoProduct')
AddEventHandler('esx-farming:client:StartTomatoProduct', function(args)
    if args == 1 then
        ESX.TriggerServerCallback('esx-farming:server:TomatoKetchupInfo', function(Tomato)
            if Tomato then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 2000, 'bottom', Config.Label["MakeTomatoKetchup"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(2000)
                TriggerServerEvent('esx-farming:server:TomatoKetchupRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'Need Tomato 5', 'Tomato Ketchup', 'center-right', 'error')
            end
        end)   
    elseif args == 2 then
        ESX.TriggerServerCallback('esx-farming:server:TomatoPasteInfo', function(Tomato)
            if Tomato then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 2000, 'bottom', Config.Label["MakeTomatoPaste"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(2000)
                TriggerServerEvent('esx-farming:server:TomatoPasteRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'Need Tomato 10', 'Tomato Paste', 'center-right', 'error')
            end
        end)
    end
end)


-- -Mango Process
RegisterNetEvent('esx-farming:client:StartMangoProduct')
AddEventHandler('esx-farming:client:StartMangoProduct', function(args)
    if args == 1 then
        ESX.TriggerServerCallback('esx-farming:server:MangoJuiceInfo', function(Mango)
            if Mango then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 2000, 'bottom', Config.Label["MakeMangoJuice"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(2000)
                TriggerServerEvent('esx-farming:server:MangoJuiceRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'Need Mango 10', 'Mango Juice', 'center-right', 'error')
            end
        end)   
    elseif args == 2 then
        ESX.TriggerServerCallback('esx-farming:server:MangoWineInfo', function(Mango)
            if Mango then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 2000, 'bottom', Config.Label["MakeMangoWine"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(2000)
                TriggerServerEvent('esx-farming:server:MangoWineRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'Need Mango 25', 'Mango Wine', 'center-right', 'error')
            end
        end)
    end
end)

-- -Orange Process
RegisterNetEvent('esx-farming:client:StartOrangeProduct')
AddEventHandler('esx-farming:client:StartOrangeProduct', function(args)
    if args == 1 then
        ESX.TriggerServerCallback('esx-farming:server:OrangeJuiceInfo', function(Orange)
            if Orange then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 2000, 'bottom', Config.Label["MakeOrangeJuice"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(2000)
                TriggerServerEvent('esx-farming:server:OrangeJuiceRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'Need Orange 10', 'Orange Juice', 'center-right', 'error')
            end
        end)   
    elseif args == 2 then
        ESX.TriggerServerCallback('esx-farming:server:OrangeWineInfo', function(Orange)
            if Orange then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 2000, 'bottom', Config.Label["MakeOrangeWine"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(2000)
                TriggerServerEvent('esx-farming:server:OrangeWineRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'Need Orange 25', 'Orange Wine', 'center-right', 'error')
            end
        end)
    end
end)

-- -Orange Process
RegisterNetEvent('esx-farming:client:StartAppleProduct')
AddEventHandler('esx-farming:client:StartAppleProduct', function(args)
    if args == 1 then
        ESX.TriggerServerCallback('esx-farming:server:AppleJuiceInfo', function(Apple)
            if Apple then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 2000, 'bottom', Config.Label["MakeAppleJuice"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(2000)
                TriggerServerEvent('esx-farming:server:AppleJuiceRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'Need Apple 10', 'Apple Juice', 'center-right', 'error')
            end
        end)   
    elseif args == 2 then
        ESX.TriggerServerCallback('esx-farming:server:AppleWineInfo', function(Apple)
            if Apple then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 2000, 'bottom', Config.Label["MakeAppleWine"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(2000)
                TriggerServerEvent('esx-farming:server:AppleWineRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'Need Apple 25', 'Apple Wine', 'center-right', 'error')
            end
        end)
    end
end)

-- -Gauva Process
RegisterNetEvent('esx-farming:client:StartGauvaProduct')
AddEventHandler('esx-farming:client:StartGauvaProduct', function(args)
    if args == 1 then
        ESX.TriggerServerCallback('esx-farming:server:GauvaJuiceInfo', function(Gauva)
            if Gauva then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 2000, 'bottom', Config.Label["MakeGauvaJuice"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(2000)
                TriggerServerEvent('esx-farming:server:GauvaJuiceRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'Need Gauva 10', 'Gauva Juice', 'center-right', 'error')
            end
        end)   
    elseif args == 2 then
        ESX.TriggerServerCallback('esx-farming:server:GauvaWineInfo', function(Gauva)
            if Gauva then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 2000, 'bottom', Config.Label["MakeGauvaWine"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(2000)
                TriggerServerEvent('esx-farming:server:GauvaWineRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'Need Gauva 25', 'Gauva Wine', 'center-right', 'error')
            end
        end)
    end
end)



-- -Tomato Product Sell
RegisterNetEvent('esx-farming:client:StartSellTomatoProduct')
AddEventHandler('esx-farming:client:StartSellTomatoProduct', function(args)
    if args == 1 then
        ESX.TriggerServerCallback('esx-farming:server:TomatoKetchupInfoSell', function(TomatoKetchup)
            if TomatoKetchup then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 2000, 'bottom', Config.Label["SellTomatoKetchup"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(2000)
                TriggerServerEvent('esx-farming:server:SellTomatoKetchupRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'No Tomato Ketchup', 'Tomato Ketchup', 'center-right', 'error')
            end
        end)   
    elseif args == 2 then
        ESX.TriggerServerCallback('esx-farming:server:TomatoPasteInfoSell', function(TomatoPaste)
            if TomatoPaste then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 2000, 'bottom', Config.Label["SellTomatoPatse"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(2000)
                TriggerServerEvent('esx-farming:server:SellTomatoPatseRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'No Tomato Paste', 'Tomato Paste', 'center-right', 'error')
            end
        end)
      
    end
end)

-- -Mango Product Sell
RegisterNetEvent('esx-farming:client:StartSellMangoProduct')
AddEventHandler('esx-farming:client:StartSellMangoProduct', function(args)
    if args == 1 then
        ESX.TriggerServerCallback('esx-farming:server:MangoJuiceInfoSell', function(MangoJuice)
            if MangoJuice then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 2000, 'bottom', Config.Label["SellMangoJuice"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(2000)
                TriggerServerEvent('esx-farming:server:SellMangoJuiceRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'No Mango Juice', 'Mango Juice', 'center-right', 'error')
            end
        end)   
    elseif args == 2 then
        ESX.TriggerServerCallback('esx-farming:server:MangoWineInfoSell', function(MangoWine)
            if MangoWine then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 2000, 'bottom', Config.Label["SellMangoWine"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(2000)
                TriggerServerEvent('esx-farming:server:SellMangoWineRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'No Mango Wine', 'Mango Wine', 'center-right', 'error')
            end
        end)
    end
end)


-- -Orange Product Sell
RegisterNetEvent('esx-farming:client:StartSellOrangeProduct')
AddEventHandler('esx-farming:client:StartSellOrangeProduct', function(args)
    if args == 1 then
        ESX.TriggerServerCallback('esx-farming:server:OrangeJuiceInfoSell', function(OrangeJuice)
            if OrangeJuice then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 2000, 'bottom', Config.Label["SellOrangeJuice"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(2000)
                TriggerServerEvent('esx-farming:server:SellOrangeJuiceRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'No Orange Juice', 'Orange Juice', 'center-right', 'error')
            end
        end)   
    elseif args == 2 then
        ESX.TriggerServerCallback('esx-farming:server:OrangeWineInfoSell', function(OrangeWine)
            if OrangeWine then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 2000, 'bottom', Config.Label["SellOrangeWine"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(2000)
                TriggerServerEvent('esx-farming:server:SellOrangeWineRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'No Orange Wine', 'Orange Wine', 'center-right', 'error')
            end
        end)
    end
end)

-- -Apple Product Sell
RegisterNetEvent('esx-farming:client:StartSellAppleProduct')
AddEventHandler('esx-farming:client:StartSellAppleProduct', function(args)
    if args == 1 then
        ESX.TriggerServerCallback('esx-farming:server:AppleJuiceInfoSell', function(AppleJuice)
            if AppleJuice then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 2000, 'bottom', Config.Label["SellAppleJuice"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(2000)
                TriggerServerEvent('esx-farming:server:SellAppleJuiceRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'No Apple Juice', 'Apple Juice', 'center-right', 'error')
            end
        end)   
    elseif args == 2 then
        ESX.TriggerServerCallback('esx-farming:server:AppleWineInfoSell', function(AppleWine)
            if AppleWine then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 2000, 'bottom', Config.Label["SellAppleWine"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(2000)
                TriggerServerEvent('esx-farming:server:SellAppleWineRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'No Apple Wine', 'Apple Wine', 'center-right', 'error')
            end
        end)
    end
end)

-- -Gauva Product Sell
RegisterNetEvent('esx-farming:client:StartSellGauvaProduct')
AddEventHandler('esx-farming:client:StartSellGauvaProduct', function(args)
    if args == 1 then
        ESX.TriggerServerCallback('esx-farming:server:GauvaJuiceInfoSell', function(GauvaJuice)
            if GauvaJuice then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 2000, 'bottom', Config.Label["SellGauvaJuice"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(2000)
                TriggerServerEvent('esx-farming:server:SellGauvaJuiceRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'No Gauva Juice', 'Gauva Juice', 'center-right', 'error')
            end
        end)   
    elseif args == 2 then
        ESX.TriggerServerCallback('esx-farming:server:GauvaWineInfoSell', function(GauvaWine)
            if GauvaWine then
                TriggerEvent('esx-farmming:client:progressbarSellPros', 2000, 'bottom', Config.Label["SellGauvaWine"], false, true, true, true, 'missfam4', 'base', 'p_amb_clipboard_01', vec3(0.00, 0.00, 0.00), vec3(0.0, 0.0, -1.5))
                Wait(2000)
                TriggerServerEvent('esx-farming:server:SellGauvaWineRewards', src)
            else
                TriggerEvent('esx-farming:client:notify', 'No Gauva Wine', 'Gauva Wine', 'center-right', 'error')
            end
        end)
    end
end)

-- Start Pick Mango
RegisterNetEvent('esx-farming:client:StartfarmMango')
AddEventHandler('esx-farming:client:StartfarmMango', function(args)
    TriggerEvent('esx-farmming:client:progressbar', 3000, 'bottom', Config.Label["PickMango"], false, true, true, true, 'amb@prop_human_movie_bulb@base', 'base')
    Wait(3000)
    TriggerServerEvent('esx-farming:server:MangoRewards', src)
end)


-- Start Pick Orange
RegisterNetEvent('esx-farming:client:StartfarmOrange')
AddEventHandler('esx-farming:client:StartfarmOrange', function(args)
    TriggerEvent('esx-farmming:client:progressbar', 3000, 'bottom', Config.Label["PickOrange"], false, true, true, true, 'amb@prop_human_movie_bulb@base', 'base')
    Wait(3000)
    TriggerServerEvent('esx-farming:server:OrangeRewards', src)
end)

-- Start Pick Orange
RegisterNetEvent('esx-farming:client:StartfarmApple')
AddEventHandler('esx-farming:client:StartfarmApple', function(args)
    TriggerEvent('esx-farmming:client:progressbar', 3000, 'bottom', Config.Label["PickApple"], false, true, true, true, 'amb@prop_human_movie_bulb@base', 'base')
    Wait(3000)
    TriggerServerEvent('esx-farming:server:AppleRewards', src)
end)

-- Start Pick Orange
RegisterNetEvent('esx-farming:client:StartfarmGauva')
AddEventHandler('esx-farming:client:StartfarmGauva', function(args)
    TriggerEvent('esx-farmming:client:progressbar', 3000, 'bottom', Config.Label["PickGauva"], false, true, true, true, 'amb@prop_human_movie_bulb@base', 'base')
    Wait(3000)
    TriggerServerEvent('esx-farming:server:GauvaRewards', src)
end)


