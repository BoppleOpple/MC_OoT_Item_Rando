#Pots
fill 3047 52 1938 3047 52 1938 minecraft:flower_pot
fill 3048 52 1938 3048 52 1938 minecraft:flower_pot
fill 3047 52 1939 3047 52 1939 minecraft:flower_pot
fill 3048 52 1939 3048 52 1939 minecraft:flower_pot
fill 3127 53 1939 3127 53 1939 minecraft:flower_pot
fill 3127 53 1941 3127 53 1941 minecraft:flower_pot
fill 3127 53 1940 3127 53 1940 minecraft:flower_pot
fill 3015 109 1978 3015 109 1978 minecraft:flower_pot
fill 3014 109 1977 3014 109 1977 minecraft:flower_pot
fill 3014 109 1971 3014 109 1971 minecraft:flower_pot
fill 3015 109 1970 3015 109 1970 minecraft:flower_pot
fill 3019 110 1953 3019 110 1953 minecraft:flower_pot
fill 3018 110 1953 3018 110 1953 minecraft:flower_pot
fill 3009 110 1944 3009 110 1944 minecraft:flower_pot
fill 3009 110 1943 3009 110 1943 minecraft:flower_pot
data merge entity @e[type=marker,tag=Pots,limit=1] {Tags:["Pots"]}

#Compass
tag @a remove Compass
execute unless entity @a[nbt={Inventory:[{tag:{Compass:1b}}]}] unless entity @a[tag=Compass] if block 3059 109 1918 minecraft:gold_block run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Compass\"}"},Unbreakable:1b,Damage:21,HideFlags:63,Compass:1b}
execute unless entity @a[tag=Compass] if block 3059 109 1918 minecraft:gold_block run tag @a add Compass
