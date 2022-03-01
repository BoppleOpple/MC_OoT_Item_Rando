#Pots
fill 2044 26 2315 2044 26 2315 minecraft:flower_pot
fill 2044 26 2314 2044 26 2314 minecraft:flower_pot
fill 2055 26 2288 2055 26 2288 minecraft:flower_pot
fill 2060 26 2303 2060 26 2303 minecraft:flower_pot
fill 2059 26 2304 2059 26 2304 minecraft:flower_pot
fill 2052 29 2254 2052 29 2254 minecraft:flower_pot
fill 2019 32 2317 2019 32 2317 minecraft:flower_pot
fill 2017 32 2319 2017 32 2319 minecraft:flower_pot

data merge entity @e[type=marker,tag=Pots,limit=1] {Tags:["Pots"]}

#Compass
tag @a remove Compass
execute if block 2078 26 2322 minecraft:gold_block unless entity @a[tag=Compass] unless entity @a[nbt={Inventory:[{tag:{Compass:1b}}]}] unless entity @a[tag=Compass] run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Compass\"}"},Unbreakable:1b,Damage:21,HideFlags:63,Compass:1b}
execute if block 2078 26 2322 minecraft:gold_block unless entity @a[tag=Compass] run tag @a add Compass
