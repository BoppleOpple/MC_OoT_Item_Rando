#!/usr/bin/env python

import json

import amulet

world = amulet.level.load_level("Legend of Zelda Ocarina of Time 1.18.1")

i = 0
with open("blockentities.json", "w") as f:
	f.write("[")
	for cx, cz in world.all_chunk_coords("minecraft:overworld"):
		chunk = world.get_chunk(cx, cz, "minecraft:overworld")
		for blockentity in chunk.block_entities:
			blockentity: amulet.api.block_entity.BlockEntity
			if i != 0:
				f.write(",")
			i += 1
			f.write(json.dumps({
				"x": blockentity.x,
				"y": blockentity.y,
				"z": blockentity.z,
				"id": blockentity.namespaced_name,
				"nbt": blockentity.nbt.to_snbt()
			}))
	f.write("]\n")
