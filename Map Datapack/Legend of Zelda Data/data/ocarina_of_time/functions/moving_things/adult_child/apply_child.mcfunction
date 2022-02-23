loot replace entity @s hotbar.0 9 mine 913 4 -633 minecraft:air{drop_contents:1b}
loot replace entity @s inventory.0 27 mine 912 4 -633 minecraft:air{drop_contents:1b}
loot replace entity @s armor.feet 4 mine 911 4 -633 minecraft:air{drop_contents:1b}
loot replace entity @s weapon.offhand 1 mine 910 4 -633 minecraft:air{drop_contents:1b}

#Rupees
execute as @e[type=marker,tag=Progress] at @a run function ocarina_of_time:moving_things/adult_child/green_rupee
execute as @e[type=marker,tag=Progress] at @a run function ocarina_of_time:moving_things/adult_child/blue_rupee
execute unless score @e[type=marker,tag=Progress,limit=1] RedRupee matches ..0 at @a anchored eyes run summon minecraft:item ^ ^ ^ {Item:{Count:1b,id:"minecraft:red_dye",tag:{display:{Name:"{\"text\":\"Red Rupee\"}"},Item:1b}}}
execute at @a store result entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:red_dye",tag:{display:{Name:"{\"text\":\"Red Rupee\"}"},Item:1b}}},distance=..2,limit=1] Item.Count byte 1 run scoreboard players get @e[type=marker,tag=Progress,limit=1] RedRupee
execute unless score @e[type=marker,tag=Progress,limit=1] PurpleRupee matches ..0 at @a anchored eyes run summon minecraft:item ^ ^ ^ {Item:{Count:1b,id:"minecraft:purple_dye",tag:{display:{Name:"{\"text\":\"Purple Rupee\"}"},Item:1b}}}
execute at @a store result entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:purple_dye",tag:{display:{Name:"{\"text\":\"Purple Rupee\"}"},Item:1b}}},distance=..2,limit=1] Item.Count byte 1 run scoreboard players get @e[type=marker,tag=Progress,limit=1] PurpleRupee
execute unless score @e[type=marker,tag=Progress,limit=1] HugeRupee matches ..0 at @a anchored eyes run summon minecraft:item ^ ^ ^ {Item:{Count:1b,id:"minecraft:yellow_dye",tag:{display:{Name:"{\"text\":\"Huge Rupee\"}"},Item:1b}}}
execute at @a store result entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:yellow_dye",tag:{display:{Name:"{\"text\":\"Huge Rupee\"}"},Item:1b}}},distance=..2,limit=1] Item.Count byte 1 run scoreboard players get @e[type=marker,tag=Progress,limit=1] HugeRupee
execute unless score @e[type=marker,tag=Progress,limit=1] OrangeRupee matches ..0 at @a anchored eyes run summon minecraft:item ^ ^ ^ {Item:{Count:1b,id:"minecraft:orange_dye",tag:{display:{Name:"{\"text\":\"Orange Rupee\"}"},Item:1b}}}
execute at @a store result entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:orange_dye",tag:{display:{Name:"{\"text\":\"Orange Rupee\"}"},Item:1b}}},distance=..2,limit=1] Item.Count byte 1 run scoreboard players get @e[type=marker,tag=Progress,limit=1] OrangeRupee

#Other Items
execute unless score @e[type=marker,tag=Progress,limit=1] BlueRupee2 matches ..0 at @a anchored eyes run summon minecraft:item ^ ^ ^ {Item:{Count:1b,id:"minecraft:tnt",tag:{display:{Name:"\"Bomb\""}}}}
execute at @a store result entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:tnt",tag:{display:{Name:"\"Bomb\""}}}},distance=..2,limit=1] Item.Count byte 1 run scoreboard players get @e[type=marker,tag=Progress,limit=1] BlueRupee2
execute unless score @e[type=marker,tag=Progress,limit=1] RedRupee2 matches ..0 at @a anchored eyes run summon minecraft:item ^ ^ ^ {Item:{Count:1b,id:"minecraft:glass_bottle",tag:{display:{Name:"\"Bottle\""}}}}
execute at @a store result entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:glass_bottle",tag:{display:{Name:"\"Bottle\""}}}},distance=..2,limit=1] Item.Count byte 1 run scoreboard players get @e[type=marker,tag=Progress,limit=1] RedRupee2
execute if entity @e[type=marker,tag=Progress,tag=ReturnHylianShield] run give @a minecraft:shield{display:{Name:"\"Hylian Shield\""},Unbreakable:1b,Damage:2}
execute as @e[type=marker,tag=Progress,tag=ReturnHylianShield] run tag @s remove ReturnHylianShield

#Bottled Items
execute unless score @e[type=marker,tag=Progress,limit=1] PurpleRupee2 matches ..0 at @a anchored eyes run summon minecraft:item ^ ^ ^ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"Bottled Fairy\"}"},Unbreakable:1b,Damage:1,HideFlags:63,BottledFairy:1b,InventoryItem:1b}}}
execute at @s store result entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{BottledFairy:1b}}},distance=..2,limit=1] Item.Count byte 1 run scoreboard players get @e[type=marker,tag=Progress,limit=1] PurpleRupee2
execute unless score @e[type=marker,tag=Progress,limit=1] OrangeRupee2 matches ..0 at @a anchored eyes run summon minecraft:item ^ ^ ^ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"Bottled Bug\"}"},Unbreakable:1b,Damage:2,HideFlags:63,BottledBug:1b}}}
execute at @s store result entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{BottledBug:1b}}},distance=..2,limit=1] Item.Count byte 1 run scoreboard players get @e[type=marker,tag=Progress,limit=1] OrangeRupee2
execute unless score @e[type=marker,tag=Progress,limit=1] HugeRupee2 matches ..0 at @a anchored eyes run summon minecraft:item ^ ^ ^ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"Bottled Fish\"}"},Unbreakable:1b,Damage:3,HideFlags:63,BottledFish:1b}}}
execute at @s store result entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{BottledFish:1b}}},distance=..2,limit=1] Item.Count byte 1 run scoreboard players get @e[type=marker,tag=Progress,limit=1] HugeRupee2
execute unless score @e[type=marker,tag=Progress,limit=1] ArrowCount matches ..0 at @a anchored eyes run summon minecraft:item ^ ^ ^ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"Lon Lon Milk\"}"},Unbreakable:1b,Damage:6,HideFlags:63,BottledMilk:1b}}}
execute at @s store result entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{BottledMilk:1b}}},distance=..2,limit=1] Item.Count byte 1 run scoreboard players get @e[type=marker,tag=Progress,limit=1] ArrowCount
execute unless score @e[type=marker,tag=Progress,limit=1] PushBlock matches ..0 at @a anchored eyes run summon minecraft:item ^ ^ ^ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"Lon Lon Milk\"}"},Unbreakable:1b,Damage:7,HideFlags:63,BottledHalfMilk:1b}}}
execute at @s store result entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{BottledHalfMilk:1b}}},distance=..2,limit=1] Item.Count byte 1 run scoreboard players get @e[type=marker,tag=Progress,limit=1] PushBlock
execute unless score @e[type=marker,tag=Progress,limit=1] nearbyBomb matches ..0 at @a anchored eyes run summon minecraft:item ^ ^ ^ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"Poe\"}"},Unbreakable:1b,Damage:4,HideFlags:63,BottledPoe:1b}}}
execute at @s store result entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{BottledPoe:1b}}},distance=..2,limit=1] Item.Count byte 1 run scoreboard players get @e[type=marker,tag=Progress,limit=1] nearbyBomb
execute unless score @e[type=marker,tag=Progress,limit=1] CuccoCount matches ..0 at @a anchored eyes run summon minecraft:item ^ ^ ^ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"Big Poe\"}"},Unbreakable:1b,Damage:5,HideFlags:63,BottledBigPoe:1b}}}
execute at @s store result entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{BottledBigPoe:1b}}},distance=..2,limit=1] Item.Count byte 1 run scoreboard players get @e[type=marker,tag=Progress,limit=1] CuccoCount
execute unless score @e[type=marker,tag=Progress,limit=1] BombCount matches ..0 at @a anchored eyes run summon minecraft:item ^ ^ ^ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"Blue Fire\"}"},Unbreakable:1b,Damage:18,HideFlags:63,BlueFire:1b}}}
execute at @s store result entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{BlueFire:1b}}},distance=..2,limit=1] Item.Count byte 1 run scoreboard players get @e[type=marker,tag=Progress,limit=1] BombCount
execute unless score @e[type=marker,tag=Progress,limit=1] Shock matches ..0 at @a anchored eyes run summon minecraft:item ^ ^ ^ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"Green Potion\"}"},Unbreakable:1b,Damage:19,HideFlags:63,GreenPotion:1b}}}
execute at @s store result entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{GreenPotion:1b}}},distance=..2,limit=1] Item.Count byte 1 run scoreboard players get @e[type=marker,tag=Progress,limit=1] Shock
execute unless score @e[type=marker,tag=Progress,limit=1] Slime matches ..0 at @a anchored eyes run summon minecraft:item ^ ^ ^ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"Red Potion\"}"},Unbreakable:1b,Damage:20,HideFlags:63,RedPotion:1b}}}
execute at @s store result entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{RedPotion:1b}}},distance=..2,limit=1] Item.Count byte 1 run scoreboard players get @e[type=marker,tag=Progress,limit=1] Slime
execute unless score @e[type=marker,tag=Progress,limit=1] DekuStickTimer matches ..0 at @a anchored eyes run summon minecraft:item ^ ^ ^ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"Blue Potion\"}"},Unbreakable:1b,Damage:22,HideFlags:63,BluePotion:1b}}}
execute at @s store result entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{BluePotion:1b}}},distance=..2,limit=1] Item.Count byte 1 run scoreboard players get @e[type=marker,tag=Progress,limit=1] DekuStickTimer
