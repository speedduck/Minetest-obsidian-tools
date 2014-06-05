minetest.register_tool("sean:sword_obsidian", {
	description = "Obsidian Sword",
	inventory_image = "sean_sword_obsidian.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.2, [2]=1.1, [3]=0.35}, uses=40, maxlevel=2}
		},
		damage_groups = {fleshy=7},
	}
})
minetest.register_tool("sean:pick_obsidian", {
	description = "Obsidian Pick",
	inventory_image = "sean_pick_obsidian.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=2.2, [2]=1.1, [3]=0.55}, uses=25, maxlevel=3},
		},
		damage_groups = {fleshy=2},
	}
})
minetest.register_craft({
	output = 'sean:sword_obsidian',
	recipe = {
		{'sean:obsidian_alloy'},
		{'sean:obsidian_alloy'},
		{'default:stick'},
	}
})
minetest.register_craft({
	output = 'sean:pick_obsidian',
	recipe = {
		{'sean:obsidian_alloy', 'sean:obsidian_alloy', 'sean:obsidian_alloy'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_craftitem("sean:obsidian_alloy", {
	description = "Obisidian Alloy",
	inventory_image = "obsidian_alloy.png",
 
--	on_drop = function(itemstack, dropper, pos)
		-- Prints a random number and removes one item from the stack
--		minetest.chat_send_all(math.random())
--		itemstack:take_item()
--		return itemstack
--	end,
})

minetest.register_craft({
	output = 'sean:obsidian_alloy',
	recipe = {
		{'default:obsidian','default:bronze_ingot','default:gold_ingot'},
		{'default:obsidian','default:bronze_ingot','default:gold_ingot'},
	}
})