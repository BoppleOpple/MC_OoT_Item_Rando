tag @a add StopParticles
function ocarina_of_time:music/underground
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/kakariko_village/loot_reset
function ocarina_of_time:teleports/kakariko_village/enemies
tag @s add StopTime
execute unless entity @e[type=armor_stand,tag=GossipStone30] run summon minecraft:armor_stand -572 47 -682 {Tags:["GossipStone30","GossipStone","GrottoGossipStone","Npc"],Rotation:[0f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
execute unless entity @e[type=cod,tag=GrottoCod] run summon minecraft:cod -567 46 -684 {Tags:["GrottoCod"],PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.3f}],Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing"}
tag @a add Indoors
tp @s -570 48 -675 180 ~
