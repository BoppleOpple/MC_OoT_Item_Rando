function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/kakariko_village/loot_reset
function ocarina_of_time:teleports/kakariko_village/enemies
tag @s add StopTime
execute if entity @s[scores={time=13001..23000}] run stopsound @s music
execute unless entity @s[scores={time=13001..23000}] run function ocarina_of_time:music/kakariko_village
tag @s remove Indoors
tp @s 1521 68 1929 0 ~
