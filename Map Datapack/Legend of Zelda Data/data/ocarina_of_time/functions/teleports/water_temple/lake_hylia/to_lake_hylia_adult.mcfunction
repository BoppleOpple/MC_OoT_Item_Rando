function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/water_temple/loot_reset
function ocarina_of_time:teleports/remove_teleports
execute unless entity @s[tag=Adult] run spawnpoint @a -560 67 -704
execute if entity @s[tag=Adult] run spawnpoint @a 933 31 1394
tag @s add InLakeAdult
tp @s 1402 64 2673
