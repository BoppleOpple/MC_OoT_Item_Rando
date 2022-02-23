#Starts from Left to Right
#Push
#West
execute unless entity @s[tag=PushCoolDown] if block ~-.33 ~2 ~ minecraft:pink_concrete if block ~-.33 ~ ~ minecraft:pink_concrete if block ~-.33 ~ ~-1 minecraft:pink_concrete if block ~-.33 ~ ~-2 minecraft:pink_concrete if block ~-4 ~ ~ #ocarina_of_time:push_block if block ~-4 ~ ~-1 #ocarina_of_time:push_block if block ~-4 ~ ~-2 #ocarina_of_time:push_block unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/west_3
execute unless entity @s[tag=PushCoolDown] if block ~-.33 ~2 ~ minecraft:pink_concrete if block ~-.33 ~ ~ minecraft:pink_concrete if block ~-.33 ~ ~-1 minecraft:pink_concrete if block ~-.33 ~ ~1 minecraft:pink_concrete if block ~-4 ~ ~ #ocarina_of_time:push_block if block ~-4 ~ ~-1 #ocarina_of_time:push_block if block ~-4 ~ ~1 #ocarina_of_time:push_block unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/west_1
execute unless entity @s[tag=PushCoolDown] if block ~-.33 ~2 ~ minecraft:pink_concrete if block ~-.33 ~ ~ minecraft:pink_concrete if block ~-.33 ~ ~1 minecraft:pink_concrete if block ~-.33 ~ ~2 minecraft:pink_concrete if block ~-4 ~ ~ #ocarina_of_time:push_block if block ~-4 ~ ~1 #ocarina_of_time:push_block if block ~-4 ~ ~2 #ocarina_of_time:push_block unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/west_2
#East
execute unless entity @s[tag=PushCoolDown] if block ~.33 ~2 ~ minecraft:pink_concrete if block ~.33 ~ ~ minecraft:pink_concrete if block ~.33 ~ ~1 minecraft:pink_concrete if block ~.33 ~ ~2 minecraft:pink_concrete if block ~4 ~ ~ #ocarina_of_time:push_block if block ~4 ~ ~1 #ocarina_of_time:push_block if block ~4 ~ ~2 #ocarina_of_time:push_block unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/east_2
execute unless entity @s[tag=PushCoolDown] if block ~.33 ~2 ~ minecraft:pink_concrete if block ~.33 ~ ~ minecraft:pink_concrete if block ~.33 ~ ~1 minecraft:pink_concrete if block ~.33 ~ ~-1 minecraft:pink_concrete if block ~4 ~ ~ #ocarina_of_time:push_block if block ~4 ~ ~1 #ocarina_of_time:push_block if block ~4 ~ ~-1 #ocarina_of_time:push_block unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/east_1
execute unless entity @s[tag=PushCoolDown] if block ~.33 ~2 ~ minecraft:pink_concrete if block ~.33 ~ ~ minecraft:pink_concrete if block ~.33 ~ ~-1 minecraft:pink_concrete if block ~.33 ~ ~-2 minecraft:pink_concrete if block ~4 ~ ~ #ocarina_of_time:push_block if block ~4 ~ ~-1 #ocarina_of_time:push_block if block ~4 ~ ~-2 #ocarina_of_time:push_block unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/east_3
#North
execute unless entity @s[tag=PushCoolDown] if block ~ ~2 ~-.33 minecraft:pink_concrete if block ~ ~ ~-.33 minecraft:pink_concrete if block ~1 ~ ~-.33 minecraft:pink_concrete if block ~2 ~ ~-.33 minecraft:pink_concrete if block ~ ~ ~-4 #ocarina_of_time:push_block if block ~1 ~ ~-4 #ocarina_of_time:push_block if block ~2 ~ ~-4 #ocarina_of_time:push_block unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/north_2
execute unless entity @s[tag=PushCoolDown] if block ~ ~2 ~-.33 minecraft:pink_concrete if block ~ ~ ~-.33 minecraft:pink_concrete if block ~-1 ~ ~-.33 minecraft:pink_concrete if block ~1 ~ ~-.33 minecraft:pink_concrete if block ~ ~ ~-4 #ocarina_of_time:push_block if block ~-1 ~ ~-4 #ocarina_of_time:push_block if block ~1 ~ ~-4 #ocarina_of_time:push_block unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/north_1
execute unless entity @s[tag=PushCoolDown] if block ~ ~2 ~-.33 minecraft:pink_concrete if block ~ ~ ~-.33 minecraft:pink_concrete if block ~-1 ~ ~-.33 minecraft:pink_concrete if block ~-2 ~ ~-.33 minecraft:pink_concrete if block ~ ~ ~-4 #ocarina_of_time:push_block if block ~-1 ~ ~-4 #ocarina_of_time:push_block if block ~-2 ~ ~-4 #ocarina_of_time:push_block unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/north_3
#South
execute unless entity @s[tag=PushCoolDown] if block ~ ~2 ~.33 minecraft:pink_concrete if block ~ ~ ~.33 minecraft:pink_concrete if block ~-1 ~ ~.33 minecraft:pink_concrete if block ~-2 ~ ~.33 minecraft:pink_concrete if block ~ ~ ~4 #ocarina_of_time:push_block if block ~-1 ~ ~4 #ocarina_of_time:push_block if block ~-2 ~ ~4 #ocarina_of_time:push_block unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/south_3
execute unless entity @s[tag=PushCoolDown] if block ~ ~2 ~.33 minecraft:pink_concrete if block ~ ~ ~.33 minecraft:pink_concrete if block ~-1 ~ ~.33 minecraft:pink_concrete if block ~1 ~ ~.33 minecraft:pink_concrete if block ~ ~ ~4 #ocarina_of_time:push_block if block ~-1 ~ ~4 #ocarina_of_time:push_block if block ~1 ~ ~4 #ocarina_of_time:push_block unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/south_1
execute unless entity @s[tag=PushCoolDown] if block ~ ~2 ~.33 minecraft:pink_concrete if block ~ ~ ~.33 minecraft:pink_concrete if block ~1 ~ ~.33 minecraft:pink_concrete if block ~2 ~ ~.33 minecraft:pink_concrete if block ~ ~ ~4 #ocarina_of_time:push_block if block ~1 ~ ~4 #ocarina_of_time:push_block if block ~2 ~ ~4 #ocarina_of_time:push_block unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/south_2

#Pull
#West
execute unless entity @s[tag=PushCoolDown] if block ~1 ~ ~ #ocarina_of_time:push_block if block ~ ~ ~-1 #ocarina_of_time:push_block if block ~ ~ ~-2 #ocarina_of_time:push_block if block ~-.33 ~2 ~ minecraft:pink_concrete unless blocks ~-4 ~ ~ ~-4 ~2 ~-2 1063 32 3125 all if block ~-.33 ~ ~ minecraft:pink_concrete if block ~-.33 ~ ~-1 minecraft:pink_concrete if block ~-.33 ~ ~-2 minecraft:pink_concrete unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/west_6
execute unless entity @s[tag=PushCoolDown] if block ~1 ~ ~ #ocarina_of_time:push_block if block ~ ~ ~-1 #ocarina_of_time:push_block if block ~ ~ ~1 #ocarina_of_time:push_block if block ~-.33 ~2 ~ minecraft:pink_concrete unless blocks ~-4 ~ ~-1 ~-4 ~2 ~1 1063 32 3125 all if block ~-.33 ~ ~ minecraft:pink_concrete if block ~-.33 ~ ~-1 minecraft:pink_concrete if block ~-.33 ~ ~1 minecraft:pink_concrete unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/west_4
execute unless entity @s[tag=PushCoolDown] if block ~1 ~ ~ #ocarina_of_time:push_block if block ~ ~ ~1 #ocarina_of_time:push_block if block ~ ~ ~2 #ocarina_of_time:push_block if block ~-.33 ~2 ~ minecraft:pink_concrete unless blocks ~-4 ~ ~ ~-4 ~2 ~2 1063 32 3125 all if block ~-.33 ~ ~ minecraft:pink_concrete if block ~-.33 ~ ~1 minecraft:pink_concrete if block ~-.33 ~ ~2 minecraft:pink_concrete unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/west_5
#East
execute unless entity @s[tag=PushCoolDown] if block ~-1 ~ ~ #ocarina_of_time:push_block if block ~ ~ ~1 #ocarina_of_time:push_block if block ~ ~ ~2 #ocarina_of_time:push_block if block ~.33 ~2 ~ minecraft:pink_concrete unless blocks ~4 ~ ~ ~4 ~2 ~2 1063 32 3125 all if block ~.33 ~ ~ minecraft:pink_concrete if block ~.33 ~ ~1 minecraft:pink_concrete if block ~.33 ~ ~2 minecraft:pink_concrete unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/east_5
execute unless entity @s[tag=PushCoolDown] if block ~-1 ~ ~ #ocarina_of_time:push_block if block ~ ~ ~-1 #ocarina_of_time:push_block if block ~ ~ ~1 #ocarina_of_time:push_block if block ~.33 ~2 ~ minecraft:pink_concrete unless blocks ~4 ~ ~-1 ~4 ~2 ~1 1063 32 3125 all if block ~.33 ~ ~ minecraft:pink_concrete if block ~.33 ~ ~-1 minecraft:pink_concrete if block ~.33 ~ ~1 minecraft:pink_concrete unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/east_4
execute unless entity @s[tag=PushCoolDown] if block ~-1 ~ ~ #ocarina_of_time:push_block if block ~ ~ ~-1 #ocarina_of_time:push_block if block ~ ~ ~-2 #ocarina_of_time:push_block if block ~.33 ~2 ~ minecraft:pink_concrete unless blocks ~4 ~ ~ ~4 ~2 ~-2 1063 32 3125 all if block ~.33 ~ ~ minecraft:pink_concrete if block ~.33 ~ ~-1 minecraft:pink_concrete if block ~.33 ~ ~-2 minecraft:pink_concrete unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/east_6
#North
execute unless entity @s[tag=PushCoolDown] if block ~ ~ ~1 #ocarina_of_time:push_block if block ~1 ~ ~ #ocarina_of_time:push_block if block ~2 ~ ~ #ocarina_of_time:push_block if block ~ ~2 ~-.33 minecraft:pink_concrete unless blocks ~ ~ ~-4 ~2 ~2 ~-4 1063 32 3125 all if block ~ ~ ~-.33 minecraft:pink_concrete if block ~1 ~ ~-.33 minecraft:pink_concrete if block ~2 ~ ~-.33 minecraft:pink_concrete unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/north_5
execute unless entity @s[tag=PushCoolDown] if block ~ ~ ~1 #ocarina_of_time:push_block if block ~-1 ~ ~ #ocarina_of_time:push_block if block ~1 ~ ~ #ocarina_of_time:push_block if block ~ ~2 ~-.33 minecraft:pink_concrete unless blocks ~1 ~ ~-4 ~-1 ~2 ~-4 1063 32 3125 all if block ~ ~ ~-.33 minecraft:pink_concrete if block ~1 ~ ~-.33 minecraft:pink_concrete if block ~-1 ~ ~-.33 minecraft:pink_concrete unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/north_4
execute unless entity @s[tag=PushCoolDown] if block ~ ~ ~1 #ocarina_of_time:push_block if block ~-1 ~ ~ #ocarina_of_time:push_block if block ~-2 ~ ~ #ocarina_of_time:push_block if block ~ ~2 ~-.33 minecraft:pink_concrete unless blocks ~ ~ ~-4 ~-2 ~2 ~-4 1063 32 3125 all if block ~ ~ ~-.33 minecraft:pink_concrete if block ~-1 ~ ~-.33 minecraft:pink_concrete if block ~-2 ~ ~-.33 minecraft:pink_concrete unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/north_6
#South
execute unless entity @s[tag=PushCoolDown] if block ~ ~ ~-1 #ocarina_of_time:push_block if block ~-1 ~ ~ #ocarina_of_time:push_block if block ~-2 ~ ~ #ocarina_of_time:push_block if block ~ ~2 ~.33 minecraft:pink_concrete unless blocks ~ ~ ~4 ~-2 ~2 ~4 1063 32 3125 all if block ~ ~ ~.33 minecraft:pink_concrete if block ~-1 ~ ~.33 minecraft:pink_concrete if block ~-2 ~ ~.33 minecraft:pink_concrete unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/south_6
execute unless entity @s[tag=PushCoolDown] if block ~ ~ ~-1 #ocarina_of_time:push_block if block ~-1 ~ ~ #ocarina_of_time:push_block if block ~1 ~ ~ #ocarina_of_time:push_block if block ~ ~2 ~.33 minecraft:pink_concrete unless blocks ~1 ~ ~4 ~-1 ~2 ~4 1063 32 3125 all if block ~ ~ ~.33 minecraft:pink_concrete if block ~1 ~ ~.33 minecraft:pink_concrete if block ~-1 ~ ~.33 minecraft:pink_concrete unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/south_4
execute unless entity @s[tag=PushCoolDown] if block ~ ~ ~-1 #ocarina_of_time:push_block if block ~1 ~ ~ #ocarina_of_time:push_block if block ~2 ~ ~ #ocarina_of_time:push_block if block ~ ~2 ~.33 minecraft:pink_concrete unless blocks ~ ~ ~4 ~2 ~2 ~4 1063 32 3125 all if block ~ ~ ~.33 minecraft:pink_concrete if block ~1 ~ ~.33 minecraft:pink_concrete if block ~2 ~ ~.33 minecraft:pink_concrete unless block ~ ~-.1 ~ #ocarina_of_time:push_block run function ocarina_of_time:moving_things/water_temple/big_push_block/south_5
