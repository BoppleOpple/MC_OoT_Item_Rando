give @a minecraft:diamond_sword{display:{Name:"\"Master Sword\""},HideFlags:63,Unbreakable:1,CanDestroy:["minecraft:grass","minecraft:oak_sign","minecraft:fern","minecraft:flower_pot","minecraft:azalea_leaves"]}
execute if entity @a[tag=InventoryDinFire] run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Din's Fire\"}"},Unbreakable:1b,Damage:13,HideFlags:63,DinFire:1b}
execute if entity @a[tag=InventoryDinFire] run tag @a remove InventoryDinFire
execute if entity @a[tag=InventoryFaroreWind] run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Farore's Wind\"}"},Unbreakable:1b,Damage:14,HideFlags:63,FaroreWind:1b}
execute if entity @a[tag=InventoryFaroreWind] run tag @a remove InventoryFaroreWind
execute if entity @a[tag=InventoryNayruLove] run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Nayru's Love\"}"},Unbreakable:1b,Damage:15,HideFlags:63,NayruLove:1b}
execute if entity @a[tag=InventoryNayruLove] run tag @a remove InventoryNayruLove
execute if entity @a[tag=InventoryBombchu] run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Bombchu\"}"},Unbreakable:1b,HideFlags:63,Bombchu:1b}
execute if entity @a[tag=InventoryBombchu] run tag @a remove InventoryBombchu
execute if entity @a[tag=InventoryLensOfTruth] run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Lens of Truth\"}"},Unbreakable:1b,Damage:23,HideFlags:63,LensOfTruth:1b,LensOfTruth1:1b}
execute if entity @a[tag=InventoryLensOfTruth] run tag @a remove InventoryLensOfTruth
execute if entity @a[tag=InventoryOmni] run give @a minecraft:golden_chestplate{display:{Name:"{\"text\":\"Omni Tunic\"}"},Unbreakable:1b,GoronTunic:1b,ZoraTunic:1b,Omni:1b,HideFlags:46}
execute if entity @a[tag=InventoryOmni] run tag @a remove InventoryOmni
execute if entity @a[tag=InventoryPegasusBoots] run give @a minecraft:chainmail_boots{display:{color:16764969,Name:"{\"text\":\"Pegasus Boots\"}"},Unbreakable:1b,HideFlags:63,PegasusBoots:1b}
execute if entity @a[tag=InventoryPegasusBoots] run tag @a remove InventoryPegasusBoots
execute if entity @a[tag=InventoryDekuNuts] run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Deku Nut\"}"},Unbreakable:1b,Damage:17,HideFlags:63,DekuNut:1b,MainHandItem:1b}
execute if entity @a[tag=InventoryDekuNuts] run tag @a remove InventoryDekuNuts
