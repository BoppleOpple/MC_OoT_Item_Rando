#Guard 1
execute unless entity @e[type=armor_stand,tag=Guard1] unless entity @a[tag=Adult] run summon minecraft:armor_stand 363 76 2030 {Tags:["Guard1"],Invisible:1b,Rotation:[180f],ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:11337883}}},{id:"leather_leggings",Count:1,tag:{display:{color:11337883}}},{id:"leather_chestplate",Count:1,tag:{display:{color:11337883}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"Gerudo 2",Id:[I;-336270410,1810514831,-1096173370,-1095843804],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjZiMWU4ZWFlZGE5ZGM5OWU5OWRlMzFlNTI1NzdiNDc1MGRiNDgxYjc2M2JjNmE2OWRhM2Q4NDdlNGEzNiJ9fX0="}]}}}}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:18}},{id:stone,Count:1b,tag:{CustomModelData:17}}],DisabledSlots:4144959,Pose:{RightArm:[-40f,0f,0f]}}
execute as @e[type=armor_stand,tag=Guard1] at @s run function ocarina_of_time:moving_things/gerudo_valley/moving_people/guard_1

#Guard 2
execute unless entity @e[type=armor_stand,tag=Guard2] unless entity @a[tag=Adult] run summon minecraft:armor_stand 363 75 2052 {Tags:["Guard2"],Invisible:1b,Rotation:[0f],ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:11337883}}},{id:"leather_leggings",Count:1,tag:{display:{color:11337883}}},{id:"leather_chestplate",Count:1,tag:{display:{color:11337883}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"Gerudo 2",Id:[I;-336270410,1810514831,-1096173370,-1095843804],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjZiMWU4ZWFlZGE5ZGM5OWU5OWRlMzFlNTI1NzdiNDc1MGRiNDgxYjc2M2JjNmE2OWRhM2Q4NDdlNGEzNiJ9fX0="}]}}}}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:18}},{id:stone,Count:1b,tag:{CustomModelData:17}}],DisabledSlots:4144959,Pose:{RightArm:[-40f,0f,0f]}}
execute as @e[type=armor_stand,tag=Guard2] at @s run function ocarina_of_time:moving_things/gerudo_valley/moving_people/guard_2
