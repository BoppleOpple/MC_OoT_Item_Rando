function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/gerudo_fortress/loot_reset
function ocarina_of_time:teleports/gerudo_fortress/enemies
execute unless entity @s[scores={time=13001..23000}] run function ocarina_of_time:music/gerudo_valley
execute if entity @s[scores={time=13001..23000}] run stopsound @s music
tag @s add EponaSpot
tag @a remove Indoors
tag @a remove StopTime
tp @s -109 94 1987
