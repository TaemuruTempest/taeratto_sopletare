local cfg = {}


cfg.obj_interaction = {
    {
        objname = {
            'prop_dumpster_01a',
            'prop_dumpster_02a',
            'prop_dumpster_02b',
            'prop_dumpster_4a',
            'prop_dumpster_4b',
            'prop_bin_01a',
            'prop_bin_03a',
            'prop_bin_05a',
            'prop_bin_06a'
        }, 
        items = { -- add whatever items you want here By TaerAttO
            'bottle'
        },
        percent_drop = 1, -- percent for drop 1 = 100%, 2 = 50%, 3 = 33.33%, 4 = 25% By TaerAttO
        rand_item_quantity = true, -- random quantity for item By TaerAttO
        quantity_item = 1, -- quantity for item By TaerAttO
        show_help = '[~g~E~s~] search ~b~bin~s~',
        notify_cache_bin = 'search already!',
        cancel_working = "<center>cancel</center>",
        not_found = 'not found!',
        label_progbar = 'Search Bin',
        duration_time = 10000, --10000
        task_or_anim = {
            animDict = nil,
            anim = nil,
            flags = 0,
            task = 'PROP_HUMAN_BUM_SHOPPING_CART'
        },
        prop_progbar = {
            model = nil,
            bone = nil,
            coords = { x = 0.0, y = 0.0, z = 0.0 },
            rotation = { x = 0.0, y = 0.0, z = 0.0 }
        },
        prop_two_progbar = {
            model = nil,
            bone = nil,
            coords = { x = 0.0, y = 0.0, z = 0.0 },
            rotation = { x = 0.0, y = 0.0, z = 0.0 }
        }
    },
}


return cfg