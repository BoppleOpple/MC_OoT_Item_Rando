execute store result entity @s Pos[0] double 0.001 run scoreboard players get @e[type=marker,tag=Progress,limit=1] Xpos
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @e[type=marker,tag=Progress,limit=1] Ypos
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @e[type=marker,tag=Progress,limit=1] Zpos
tp @a @s

#Places
tag @e[type=marker,tag=Progress] add TeleportCoolDown

kill @s
