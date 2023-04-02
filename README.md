<div align="center">
<img width="100%" height = "150px" src="https://scontent.fdvo5-1.fna.fbcdn.net/v/t1.6435-9/120739533_785949515550660_8312183665269487160_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeHZS-M_4oPgwP_0foStcC-rW5LkDohIAIxbkuQOiEgAjAQVBtUa00s4lfCSPvdZPoiITGo_v89bux6XJQnfNSrF&_nc_ohc=PMlUaPZjGoQAX9YcWqR&_nc_ht=scontent.fdvo5-1.fna&oh=00_AfAFmEWFs5-q5rwIQIRNMtvoO133f4aOAuCbBZbnuOHnfw&oe=64390E17" alt="cover" />
</div>


## Dependencies
- [esx_legacy](https://github.com/esx-framework/esx-legacy)
- [ox_invetory](https://github.com/overextended/ox_inventory)
- [ox_lib](https://github.com/overextended/ox_lib)
- [ox_target](https://github.com/overextended/ox_target)
- [PolyZone](https://github.com/mkafrin/PolyZone)

## Preview's
- [ShowCase Video](https://streamable.com/if6rv8)

## ox inventory/data/item.lua

    ['tomato'] = {
		label = 'Tamato',
		weight = 70,
		client = {
			status = { hunger = 20000 },
			anim = 'eating',
			usetime = 2500,
			notification = 'You ate a delicious Tomato'
		},
	},
	['mango'] = {
		label = 'Mango',
		weight = 200,
		client = {
			status = { hunger = 50000 },
			anim = 'eating',
			usetime = 2500,
			notification = 'You ate a delicious Mango'
		},
	},
	['orange'] = {
		label = 'Orange',
		weight = 200,
		client = {
			status = { hunger = 50000 },
			anim = 'eating',
			usetime = 2500,
			notification = 'You ate a delicious Orange'
		},
	},

	['apple'] = {
		label = 'Apple',
		weight = 200,
		client = {
			status = { hunger = 50000 },
			anim = 'eating',
			usetime = 2500,
			notification = 'You ate a delicious Apple'
		},
	},
	['gauva'] = {
		label = 'Gauva',
		weight = 200,
		client = {
			status = { hunger = 50000 },
			anim = 'eating',
			usetime = 2500,
			notification = 'You ate a delicious Gauva'
		},
	},


	['orangejuice'] = {
		label = 'Orange Juice',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You drinks a delicious Orange Juice'
		}
	},
	['mangojuice'] = {
		label = 'Mango Juice',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You drinks a delicious Mango Juice'
		}
	},
	['applejuice'] = {
		label = 'Apple Juice',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You drinks a delicious Apple Juice'
		}
	},
	['gauvajuice'] = {
		label = 'Gauva Juice',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You drinks a delicious Gauva Juice'
		}
	},


	['applewine'] = {
		label = 'Apple Wine',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_amb_beer_bottle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Im Drunk'
		}
	},

	['orangewine'] = {
		label = 'Orange Wine',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_amb_beer_bottle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Im Drunk'
		}
	},

	['gauvawine'] = {
		label = 'Gauva Wine',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_amb_beer_bottle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Im Drunk'
		}
	},
	['mangowine'] = {
		label = 'Mango Wine',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_amb_beer_bottle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Im Drunk'
		}
	},

	['tomato_ketchup'] = {
		label = 'Tamato Ketchup',
		weight = 250,
	},
	['tomato_paste'] = {
		label = 'Tamato Paste',
		weight = 250,
	},


## ox_inventory/modules/ items/client.lua
    Item('applewine', function(data, slot) -- causes drug effect
        ox_inventory:useItem(data, function(data)
            if data then
                local playerPed = PlayerPedId()
                SetTimecycleModifier("spectator5")
                SetPedMotionBlur(playerPed, true)
                SetPedIsDrunk(playerPed, true)


                --Efects
                local player = PlayerId()
                SetRunSprintMultiplierForPlayer(player, 0.5)
                Wait(20000)
                ResetPedMovementClipset(playerPed, 0)
                ClearTimecycleModifier()
                ResetScenarioTypesEnabled()
                SetRunSprintMultiplierForPlayer(player, 1.0)
            end
        end)
    end)
    Item('orangewine', function(data, slot) -- causes drug effect
        ox_inventory:useItem(data, function(data)
            if data then
                local playerPed = PlayerPedId()
                SetTimecycleModifier("spectator5")
                SetPedMotionBlur(playerPed, true)
                SetPedIsDrunk(playerPed, true)

                --Efects
                local player = PlayerId()
                SetRunSprintMultiplierForPlayer(player, 0.5)
            
                Wait(20000)
                ResetPedMovementClipset(playerPed, 0)
                ClearTimecycleModifier()
                ResetScenarioTypesEnabled()
                SetRunSprintMultiplierForPlayer(player, 1.0)
            end
        end)
    end)
    Item('gauvawine', function(data, slot) -- causes drug effect
        ox_inventory:useItem(data, function(data)
            if data then
                local playerPed = PlayerPedId()
                SetTimecycleModifier("spectator5")
                SetPedMotionBlur(playerPed, true)
                SetPedIsDrunk(playerPed, true)

                --Efects
                local player = PlayerId()
                SetRunSprintMultiplierForPlayer(player, 0.5)
            
                Wait(20000)
                ResetPedMovementClipset(playerPed, 0)
                ClearTimecycleModifier()
                ResetScenarioTypesEnabled()
                SetRunSprintMultiplierForPlayer(player, 1.0)
            end
        end)
    end)

    Item('mangowine', function(data, slot) -- causes drug effect
        ox_inventory:useItem(data, function(data)
            if data then
                local playerPed = PlayerPedId()
                SetTimecycleModifier("spectator5")
                SetPedMotionBlur(playerPed, true)
                SetPedIsDrunk(playerPed, true)

                --Efects
                local player = PlayerId()
                SetRunSprintMultiplierForPlayer(player, 0.5)
            
                Wait(20000)
                ResetPedMovementClipset(playerPed, 0)
                ClearTimecycleModifier()
                ResetScenarioTypesEnabled()
                SetRunSprintMultiplierForPlayer(player, 1.0)
            end
        end)
    end)