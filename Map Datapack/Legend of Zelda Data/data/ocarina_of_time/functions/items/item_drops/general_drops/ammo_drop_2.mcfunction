execute unless entity @a[tag=Adult] if entity @e[type=marker,tag=Progress,tag=Slingshot] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Deku Seeds (10)\"}"},Unbreakable:1b,Damage:15,HideFlags:63,DekuSeedPickup2:1b,DekuSeedPickup:1b,PickupItem:1b,Item:1b}}}
execute if entity @a[tag=Adult] if entity @e[type=marker,tag=Progress,tag=FairyBow] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{Unbreakable:1b,Damage:20,Item:1b,ArrowPickup:1b,PickupItem:1b,ArrowPickup10:1b}}}
kill @s
