effect clear @s minecraft:levitation
function ocarina_of_time:teleports/fire_temple/loot_reset
function ocarina_of_time:music/dodongo_cavern
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/remove_teleports
execute unless entity @s[tag=Adult] run spawnpoint @a -560 67 -704
execute if entity @s[tag=Adult] run spawnpoint @a 933 31 1394
tag @s add StopTime
tag @s add InKakarikoVillage
tp @s 1535 83 1922 180 ~
