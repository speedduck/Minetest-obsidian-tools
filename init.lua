minetest.register_tool("obsidiantools:sword_obsidian", {
	description = "Obsidian Sword",
	inventory_image = "obsidiantools_sword_obsidian.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.2, [2]=1.1, [3]=0.35}, uses=40, maxlevel=2}
		},
		damage_groups = {fleshy=7},
	}
})
minetest.register_tool("obsidiantools:pick_obsidian", {
	description = "Obsidian Pick",
	inventory_image = "obsidiantools_pick_obsidian.png",
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
	output = 'obsidiantools:sword_obsidian',
	recipe = {
		{'sean:obsidian_alloy'},
		{'sean:obsidian_alloy'},
		{'default:stick'},
	}
})
minetest.register_craft({
	output = 'obsidiantools:pick_obsidian',
	recipe = {
		{'sean:obsidian_alloy', 'sean:obsidian_alloy', 'sean:obsidian_alloy'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_craftitem("obsidiantools:obsidian_alloy", {
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
	output = 'obsidiantools:obsidian_alloy',
	recipe = {
		{'default:obsidian','default:bronze_ingot','default:gold_ingot'},
		{'default:obsidian','default:bronze_ingot','default:gold_ingot'},
	}
})

minetest.register_node("obsidiantools:obsidianalloyblock", {
	description = "Obsidian Alloy Block",
	tiles = {"obsidiantools_obsidian_alloy_block.png"},
	is_ground_content = true,
	groups = {cracky=1,level=2}
})


minetest.register_craft({
	output = 'obsidiantools:obsidianalloyblock',
	recipe = {
		{'obsidiantools:obsidian_alloy', 'obsidiantools:obsidian_alloy', 'obsidiantools:obsidian_alloy'},
		{'obsidiantools:obsidian_alloy', 'obsidiantools:obsidian_alloy', 'obsidiantools:obsidian_alloy'},
		{'obsidiantools:obsidian_alloy', 'obsidiantools:obsidian_alloy', 'obsidiantools:obsidian_alloy'},
	}
})

minetest.register_craft({
	output = 'obsidiantools:obsidian_alloy 9',
	recipe = {
		{'obsidiantools:obsidianalloyblock'},
	}
})
