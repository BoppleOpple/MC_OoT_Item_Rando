function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/hyrule_field/loot_reset
function ocarina_of_time:teleports/hyrule_field/enemies
tag @a remove StopTime
execute unless entity @s[scores={time=13001..23000}] if entity @s[scores={time=0..13000}] run function ocarina_of_time:music/hyrule_field
execute unless entity @s[scores={time=13001..23000}] if entity @s[scores={time=23001..24000}] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @s[scores={time=13001..23000}] run stopsound @s music
tag @s add EponaSpot
tag @s remove Indoors
tp @s 1027 67 1893 90 ~
