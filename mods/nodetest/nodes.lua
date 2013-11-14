-- mods/default/nodes.lua

--
-- Node definitions
--

minetest.register_node("nodetest:desert_sandstone", {
	description = "Desert Sandstone",
	tiles = {"default_desert_sandstone.png"},
	is_ground_content = true,
	groups = {crumbly=2,cracky=2},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_alias("default:desertsandstone", "nodetest:desert_sandstone")
minetest.register_alias("default:desert_sandstone", "nodetest:desert_sandstone")

minetest.register_node("nodetest:tree_horizontal", {
	description = "Tree",
	tiles = {
		"default_tree.png", 
		"default_tree.png",
		"default_tree.png^[transformR90", 
		"default_tree.png^[transformR90", 
		"default_tree_top.png", 
		"default_tree_top.png" 
	},
	paramtype2 = "facedir",
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=1},
	sounds = default.node_sound_wood_defaults(),
})
minetest.register_alias("default:tree_horizontal", "nodetest:tree_horizontal")

minetest.register_node(":default:jungletree_horizontal", {
	description = "Jungle Tree",
		tiles = {
		"default_jungletree.png", 
		"default_jungletree.png",
		"default_jungletree.png^[transformR90", 
		"default_jungletree.png^[transformR90", 
		"default_jungletree_top.png", 
		"default_jungletree_top.png" 
	},
	paramtype2 = "facedir",
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=1},
	sounds = default.node_sound_wood_defaults(),
})
minetest.register_alias("default:jungletree_horizontal", "nodetest:jungletree_horizontal")

minetest.register_node("nodetest:papyrus_roots", {
	description = "Papyrus Roots",
	tiles = {"nodetest_papyrus_roots.png"},
	paramtype = "light",
	is_ground_content = true,
	liquids_pointable = true,
	after_dig_node = function(pos, node, metadata, digger)
			node.name = "default:papyrus"
			default.dig_up(pos, node, digger)
		end,
	groups = {snappy=3,flammable=2},
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_alias("default:papyrus_roots", "nodetest:papyrus_roots")