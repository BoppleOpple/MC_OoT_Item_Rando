scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add EponaSpot
execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/gerudo_fortress/loot_reset
execute if entity @s[scores={LoadZone=15..}] run tp @s -119 60 2044 -175 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
