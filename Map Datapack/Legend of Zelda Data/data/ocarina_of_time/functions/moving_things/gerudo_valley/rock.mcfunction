#Bug Rock
execute unless entity @a[tag=Adult] positioned 446 67 2051 unless block ~ ~ ~ minecraft:granite_slab unless entity @s[tag=Pot1] run summon minecraft:item ~ ~ ~ {Item:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:12,HideFlags:63,Bug:1b,PickupItem:1b,Item:1b,display:{Name:"{\"text\":\"Bug\"}"}}},PickupDelay:0}
execute unless entity @a[tag=Adult] positioned 446 67 2051 unless block ~ ~ ~ minecraft:granite_slab unless entity @s[tag=Pot1] run tag @s add Pot1
