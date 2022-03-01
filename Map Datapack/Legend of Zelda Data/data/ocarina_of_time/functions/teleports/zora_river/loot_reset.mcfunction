#Bug Grass
fill 1527 79 2286 1527 79 2286 minecraft:grass
data merge entity @e[type=marker,tag=Pots,limit=1] {Tags:["Pots"]}

#Rocks
fill 1481 69 2317 1481 69 2317 minecraft:granite_slab
fill 1479 69 2316 1479 69 2316 minecraft:granite_slab
fill 1478 69 2314 1478 69 2314 minecraft:granite_slab
fill 1479 69 2312 1479 69 2312 minecraft:granite_slab
fill 1481 69 2311 1481 69 2311 minecraft:granite_slab
fill 1483 69 2312 1483 69 2312 minecraft:granite_slab
fill 1484 69 2314 1484 69 2314 minecraft:granite_slab
fill 1483 69 2316 1483 69 2316 minecraft:granite_slab

fill 1538 81 2309 1538 81 2309 minecraft:granite_slab
fill 1538 81 2311 1538 81 2311 minecraft:granite_slab
fill 1537 81 2312 1537 81 2312 minecraft:granite_slab
fill 1535 81 2312 1535 81 2312 minecraft:granite_slab
fill 1534 81 2311 1534 81 2311 minecraft:granite_slab
fill 1534 81 2309 1534 81 2309 minecraft:granite_slab
fill 1535 81 2308 1535 81 2308 minecraft:granite_slab
fill 1537 81 2308 1537 81 2308 minecraft:granite_slab
fill 1564 75 2303 1564 75 2303 minecraft:granite_slab

#Grass
fill 1482 67 2337 1484 67 2339 minecraft:grass
fill 1485 67 2338 1481 67 2339 minecraft:grass
fill 1481 66 2340 1485 66 2340 minecraft:grass
fill 1484 66 2341 1482 66 2341 minecraft:grass

#Bean Spots
execute if entity @a[tag=Adult] if entity @e[type=marker,tag=BeanSpot,tag=PlantBean10] run clone 1533 74 2310 1535 74 2312 1506 69 2314
execute unless entity @a[tag=Adult] if entity @e[type=marker,tag=BeanSpot,tag=PlantBean10] run fill 1507 69 2315 1507 69 2315 minecraft:pumpkin_stem[age=6]

#Gossip Stones
#1
execute unless entity @e[type=armor_stand,tag=GossipStone19] run summon minecraft:armor_stand 1540 81 2296 {Tags:["GossipStone19","GossipStone","Npc"],Rotation:[0f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
#2
execute unless entity @e[type=armor_stand,tag=GossipStone20] run summon minecraft:armor_stand 1603 80 2281 {Tags:["GossipStone20","GossipStone","Npc"],Rotation:[0f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}

#Grottos
fill 1481 68 2314 1481 68 2314 minecraft:grass_block
fill 1499 49 2334 1499 49 2334 minecraft:grass
fill 1501 49 2327 1501 49 2327 minecraft:grass
fill 1499 49 2327 1499 49 2327 minecraft:grass
fill 1499 49 2329 1499 49 2329 minecraft:grass

#Frogs
execute unless entity @a[tag=Adult] as @e[type=armor_stand,tag=Frog1] unless entity @s[tag=Grow] run tp @s 1549 68.3 2294
execute unless entity @a[tag=Adult] as @e[type=armor_stand,tag=Frog1] if entity @s[tag=Grow] run tp @s 1549 67.6 2294
