Config = Config or {}

Config.Framework = "ESX"      -- ESX Framework      ---- THIS LINK FOR QB 
Config.Target = "OX"         --OX Target            ---- THIS LINK FOR QB 

Config.UseBlips = true

-- object
Config.Tomato = "tomato"
Config.Mango = "mango"
Config.Orange = "orange"
Config.Apple = "apple"
Config.Gauva = "gauva"
-- Product
Config.TomatoKetchup = 'tomato_ketchup'
Config.TomatoPaste = 'tomato_paste'

Config.MangoJuice = 'mangojuice'
Config.MangoWine = 'mangowine'

Config.OrangeJuice = 'orangejuice'
Config.OrangeWine = 'orangewine'

Config.AppleJuice = 'applejuice'
Config.AppleWine = 'applewine'

Config.GauvaJuice = 'gauvajuice'
Config.GauvaWine = 'gauvawine'
-- Amount
Config.PickAmountTomato = math.random(1, 2)
Config.PickAmountMango = 1
Config.PickAmountOrange = 1
Config.PickAmountApple = 1
Config.PickAmountGauva = 1


Config.JuicePrice = 400
Config.WinePrice = 680

Config.PedLocation = {
    -- Food Maker
    [1] = {
        coords = vector4(2588.241, 3167.789, 51.353, 323.149),
        model = 'a_m_m_hillbilly_01',
        scenario = 'WORLD_HUMAN_CLIPBOARD',
    },
    -- Process Sell
    [2] = {
        coords = vector4(83.947, 190.760, 105.255, 257.952),
        model = 'a_m_m_ktown_01',
        scenario = 'WORLD_HUMAN_CLIPBOARD',
    },
}


Config.Allblips = {
    [1] = {
        coords = vector4(1797.3, 4985.68, 50.44, 46.66),
        SetBlipSprite = 738,
        SetBlipDisplay = 6,
        SetBlipScale = 0.70,
        SetBlipColour = 9,
        BlipName = "Tomato Farm",
    },
    [2] = {
        coords = vector4(1876.93, 5057.98, 51.38, 63.76),
        SetBlipSprite = 738,
        SetBlipDisplay = 6,
        SetBlipScale = 0.70,
        SetBlipColour = 9,
        BlipName = "Tomato Farm",
    },
    [3] = {
        coords = vector4(2335.95, 5005.26, 42.40, 223.93),
        SetBlipSprite = 738,
        SetBlipDisplay = 6,
        SetBlipScale = 0.70,
        SetBlipColour = 5,
        BlipName = "Mango Farm",
    },
    [4] = {
        coords = vector4(2381.64, 4720.12, 32.986816, 252.28),
        SetBlipSprite = 738,
        SetBlipDisplay = 6,
        SetBlipScale = 0.70,
        SetBlipColour = 47,
        BlipName = "Orange Farm",
    },
    [5] = {
        coords = vector4(239.80, 6516.276, 30.509888, 110.55),
        SetBlipSprite = 738,
        SetBlipDisplay = 6,
        SetBlipScale = 0.70,
        SetBlipColour = 75,
        BlipName = "Apple Farm",
    },
    [6] = {
        coords = vector4(349.09, 6517.34, 28.65, 198.42),
        SetBlipSprite = 738,
        SetBlipDisplay = 6,
        SetBlipScale = 0.70,
        SetBlipColour = 43,
        BlipName = "Gauva Farm",
    },

    [7] = {
        coords = vector4(83.947, 190.760, 105.255, 257.952),
        SetBlipSprite = 605,
        SetBlipDisplay = 6,
        SetBlipScale = 0.70,
        SetBlipColour = 64,
        BlipName = "Process Sell",
    },
    [8] = {
        coords = vector4(2588.67, 3168.29, 51.15, 133.22),
        SetBlipSprite = 615,
        SetBlipDisplay = 6,
        SetBlipScale = 0.70,
        SetBlipColour = 57,
        BlipName = "Food Process",
    },
   
}




-- Label and Error 
Config.Label = {
    Food = 'Start Food Sell',
    PickTomato =  "Start Tomato Picking",
    SellTomato = "Start Sell Tomato",
    MakeTomatoKetchup = 'Start Make Tomato Ketchup',
    MakeTomatoPaste = 'Start Make Tomato Paste',
    SellTomatoKetchup = 'Start Sell Tomato Ketchup',
    SellTomatoPatse = 'Start Sell Tomato Patse',

    

    PickMango = "Start Mango Picking",
    SellMango = "Start Sell Mango",
    MakeMangoJuice = 'Start Make Mango Juice',
    MakeMangoWine = 'Start Make Mango Wine',
    SellMangoJuice = 'Start Sell Mango Juice',
    SellMangoWine = 'Start Sell Mango Wine',

    PickOrange = "Start Orange Picking",
    SellOrange = "Start Sell Orange",
    MakeOrangeJuice = 'Start Make Orange Juice',
    MakeOrangeWine = 'Start Make Orange Wine',

    PickApple = "Start Apple Picking",
    SellApple = "Start Sell Apple",
    MakeAppleJuice = 'Start Make Apple Juice',
    MakeAppleWine = 'Start Make Apple Wine',

    PickGauva = "Start Gauva Picking",
    SellGauva = "Start Sell Gauva",
    MakeGauvaJuice = 'Start Make Gauva Juice',
    MakeGauvaWine = 'Start Make Gauva Wine',


    ProcessFood = "Start Process Food",
    SellProduct = 'Sell Product',
}

Config.Error = {
    PickRTomatoerro = "You Are Pick error",
    TomatoKetchup = 'Need 5 Tomato',
    TomatoPaste = 'Need 10 Tomato',
}
