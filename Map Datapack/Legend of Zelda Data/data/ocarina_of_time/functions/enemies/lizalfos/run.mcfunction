tag @e[type=marker,tag=LizPlatform,limit=1,sort=nearest] add Nearest
execute if entity @s[tag=!Nearest] run scoreboard players set @s lifetime 2
execute if entity @s[tag=Nearest] run scoreboard players set @s lifetime 1
tag @e[type=marker,tag=LizPlatform] remove Nearest
