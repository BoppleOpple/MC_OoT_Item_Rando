execute if block ~-.5 ~ ~ minecraft:stone_stairs unless entity @s[x=1622,y=73,z=1952,dx=0,dz=0] unless entity @s[x=1631,y=75,z=1954,dx=0,dz=0] unless entity @s[x=1641,y=77,z=1945,dx=0,dz=0] unless entity @s[x=1641,y=77,z=1954,dx=0,dz=0] unless entity @s[tag=Adult] as @e[type=armor_stand,tag=Dampe] if entity @s[scores={GameTimer=0}] run summon minecraft:zombie ~-2 ~ ~ {Tags:["Poe1","Poe","Invisible","Fire"],NoGravity:1b,Silent:1b,Health:10,Attributes:[{Name:"generic.attack_damage",Base:1}],DeathLootTable:"ocarina_of_time:entities/nothing"}
execute if block ~-.5 ~ ~ minecraft:stone_stairs unless entity @s[x=1622,y=73,z=1952,dx=0,dz=0] unless entity @s[x=1631,y=75,z=1954,dx=0,dz=0] unless entity @s[x=1641,y=77,z=1945,dx=0,dz=0] unless entity @s[x=1641,y=77,z=1954,dx=0,dz=0] unless entity @s[tag=Adult] as @e[type=armor_stand,tag=Dampe] if entity @s[scores={GameTimer=0}] run summon minecraft:armor_stand ~-2 ~ ~ {Tags:["Poe1","Poe"],Invisible:1b,NoGravity:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:18}}],Pose:{RightArm:[-50f,40f,0f]}}

execute if block ~-.5 ~ ~ minecraft:stone_stairs unless entity @s[x=1622,y=73,z=1952,dx=0,dz=0] unless entity @s[x=1631,y=75,z=1954,dx=0,dz=0] unless entity @s[x=1641,y=77,z=1945,dx=0,dz=0] unless entity @s[x=1641,y=77,z=1954,dx=0,dz=0] unless entity @s[tag=Adult] as @e[type=armor_stand,tag=Dampe] if entity @s[scores={GameTimer=1}] unless entity @e[type=armor_stand,tag=Poe1] run summon minecraft:zombie ~-2 ~ ~ {Tags:["Poe1","Poe","Invisible","Fire"],NoGravity:1b,Silent:1b,Health:10,Attributes:[{Name:"generic.attack_damage",Base:1}],DeathLootTable:"ocarina_of_time:entities/nothing"}
execute if block ~-.5 ~ ~ minecraft:stone_stairs unless entity @s[x=1622,y=73,z=1952,dx=0,dz=0] unless entity @s[x=1631,y=75,z=1954,dx=0,dz=0] unless entity @s[x=1641,y=77,z=1945,dx=0,dz=0] unless entity @s[x=1641,y=77,z=1954,dx=0,dz=0] unless entity @s[tag=Adult] as @e[type=armor_stand,tag=Dampe] if entity @s[scores={GameTimer=1}] unless entity @e[type=armor_stand,tag=Poe1] run summon minecraft:armor_stand ~-2 ~ ~ {Tags:["Poe1","Poe"],Invisible:1b,NoGravity:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:18}}],Pose:{RightArm:[-50f,40f,0f]}}
execute if block ~-.5 ~ ~ minecraft:stone_stairs unless entity @s[x=1622,y=73,z=1952,dx=0,dz=0] unless entity @s[x=1631,y=75,z=1954,dx=0,dz=0] unless entity @s[x=1641,y=77,z=1945,dx=0,dz=0] unless entity @s[x=1641,y=77,z=1954,dx=0,dz=0] unless entity @s[tag=Adult] as @e[type=armor_stand,tag=Dampe] if entity @s[scores={GameTimer=1}] unless entity @e[type=armor_stand,tag=Poe2] run summon minecraft:zombie ~-2 ~ ~ {Tags:["Poe2","Poe","Invisible","Fire"],NoGravity:1b,Silent:1b,Health:10,Attributes:[{Name:"generic.attack_damage",Base:1}],DeathLootTable:"ocarina_of_time:entities/nothing"}
execute if block ~-.5 ~ ~ minecraft:stone_stairs unless entity @s[x=1622,y=73,z=1952,dx=0,dz=0] unless entity @s[x=1631,y=75,z=1954,dx=0,dz=0] unless entity @s[x=1641,y=77,z=1945,dx=0,dz=0] unless entity @s[x=1641,y=77,z=1954,dx=0,dz=0] unless entity @s[tag=Adult] as @e[type=armor_stand,tag=Dampe] if entity @s[scores={GameTimer=1}] unless entity @e[type=armor_stand,tag=Poe2] run summon minecraft:armor_stand ~-2 ~ ~ {Tags:["Poe2","Poe"],Invisible:1b,NoGravity:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:18}}],Pose:{RightArm:[-50f,40f,0f]}}

execute if block ~-.5 ~ ~ minecraft:stone_stairs unless entity @s[x=1622,y=73,z=1952,dx=0,dz=0] unless entity @s[x=1631,y=75,z=1954,dx=0,dz=0] unless entity @s[x=1641,y=77,z=1945,dx=0,dz=0] unless entity @s[x=1641,y=77,z=1954,dx=0,dz=0] unless entity @s[tag=Adult] unless entity @e[type=armor_stand,tag=Dampe,scores={GameTimer=2..}] run summon minecraft:item ~-2 ~ ~ {Item:{id:lapis_lazuli,Count:1,tag:{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b}}}
execute if block ~-.5 ~ ~ minecraft:stone_stairs run tp @s ~1 ~ ~
execute if block ~-.5 ~ ~ minecraft:stone_stairs run fill ~-2 ~-1 ~ ~-2 ~-1 ~ minecraft:grass_block replace minecraft:dirt
execute if block ~-.5 ~ ~ minecraft:stone_stairs run clone 1612 67 1938 1615 67 1938 ~-2 ~ ~
