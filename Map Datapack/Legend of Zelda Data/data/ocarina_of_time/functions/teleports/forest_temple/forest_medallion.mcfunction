function ocarina_of_time:teleports/forest_temple/loot_reset
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/remove_teleports
effect clear @s minecraft:levitation
function ocarina_of_time:music/chamber_of_sages
execute unless entity @s[tag=Adult] run spawnpoint @a -560 67 -704
execute if entity @s[tag=Adult] run spawnpoint @a 933 31 1394
tag @s remove Boss
tag @s add InKokiriForest
tp @s 994 26 1466 120 0
