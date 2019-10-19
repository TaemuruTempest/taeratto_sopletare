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
        notify = false, -- notify police
        items = { -- add whatever items you want here By TaerAttO
            'bottle'
        },
        need_tools = false, -- tools for use in working By TaerAttO
        percent_drop = 1, -- percent for drop 1 = 100%, 2 = 50%, 3 = 33.33%, 4 = 25% By TaerAttO
        rand_item_quantity = true, -- random quantity for item By TaerAttO
        quantity_item = 1, -- quantity for item By TaerAttO
        show_help = '[~g~E~s~] คุ้ย~b~ถังขยะ~s~',
        notify_cache_bin = 'คุณได้คุ้ยถังขยะที่นี่แล้ว!',
        cancel_working = "<center>ยกเลิกการค้นหา</center>",
        not_found = 'คุณไม่พบอะไรเลย!',
        label_progbar = 'ค้นหา',
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

    -- 'prop_dumpster_01a',
    -- 'prop_dumpster_02a',
    -- 'prop_dumpster_02b',
    -- 'prop_dumpster_4a',
    -- 'prop_dumpster_4b',
    -- 'prop_bin_01a',
    -- 'prop_bin_03a',
    -- 'prop_bin_05a',
    -- 'prop_bin_06a'
}

-- cfg.item_drop = { -- add whatever items you want here
-- 	'bottle'
--     -- 'ziplock_dirty'
-- }

-- cfg.percent_drop = 1 -- percent for drop 1 = 100%, 2 = 50%, 3 = 33.33%, 4 = 25%
-- cfg.rand_item_quantity = true
-- cfg.quantity_item = #cfg.item_drop

-- cfg.show_help = '[~g~E~s~] คุ้ย~b~ถังขยะ~s~'
-- cfg.notify_cache_bin = 'คุณได้คุ้ยถังขยะที่นี่แล้ว!'
-- cfg.cancel_working = "<center>ยกเลิกการค้นหา</center>"
-- cfg.not_found = 'คุณไม่พบอะไรเลย!'

-- cfg.label_progbar = 'ค้นหา'
-- cfg.duration_time = 10000--10000
-- cfg.task_or_anim = {
--     animDict = nil,
--     anim = nil,
--     flags = 0,
--     task = 'PROP_HUMAN_BUM_SHOPPING_CART'
-- }
-- cfg.prop_progbar = {
--     model = nil,
--     bone = nil,
--     coords = { x = 0.0, y = 0.0, z = 0.0 },
--     rotation = { x = 0.0, y = 0.0, z = 0.0 }
-- }
-- cfg.prop_two_progbar = {
--     model = nil,
--     bone = nil,
--     coords = { x = 0.0, y = 0.0, z = 0.0 },
--     rotation = { x = 0.0, y = 0.0, z = 0.0 }
-- }


return cfg