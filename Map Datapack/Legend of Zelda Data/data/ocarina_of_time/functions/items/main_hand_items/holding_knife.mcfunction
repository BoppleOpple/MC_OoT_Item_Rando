execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with minecraft:barrier{SwordHand:1b}
execute unless entity @s[nbt={ActiveEffects:[{Id:4b}]}] unless entity @s[nbt={Inventory:[{tag:{SwordHand:1b}}]}] run effect give @s minecraft:mining_fatigue 1 127 true
