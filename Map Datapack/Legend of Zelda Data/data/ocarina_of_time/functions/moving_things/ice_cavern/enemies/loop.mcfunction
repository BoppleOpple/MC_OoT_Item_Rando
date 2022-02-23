#Blade Traps
execute as @e[type=armor_stand,tag=BladeTrap] at @s run function ocarina_of_time:moving_things/ice_cavern/enemies/blade_trap

#Freezard Room
execute unless block 2049 22 2328 minecraft:gold_block if entity @a[x=2050,y=27,z=2341,dx=0,dz=0] run function ocarina_of_time:moving_things/ice_cavern/enemies/freezard_room/summon
execute unless block 2050 22 2328 minecraft:gold_block if block 2049 22 2328 minecraft:gold_block unless entity @e[type=zombie,tag=FreezardRoom1] run function ocarina_of_time:moving_things/ice_cavern/enemies/freezard_room/finish

#Keese
#1
execute as @e[type=bat,tag=Keese61] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ -90 ~
execute unless entity @e[type=bat,tag=Keese61,x=2084,y=25,z=2310] run fill 2084 26 2310 2084 26 2310 minecraft:air
#2
execute as @e[type=bat,tag=Keese62] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 0 ~
execute unless entity @e[type=bat,tag=Keese62,x=2079,y=28,z=2318] run fill 2079 29 2318 2079 29 2318 minecraft:air
#3
execute as @e[type=bat,tag=Keese63] at @s unless entity @s[tag=Attack] run tp @s ~ ~ ~ 0 ~
execute unless entity @e[type=bat,tag=Keese63,x=2076,y=27,z=2318] run fill 2076 28 2318 2076 28 2318 minecraft:air

#Wolfos
execute if entity @a[x=2021,y=33,z=2321,dx=0,dz=0] run fill 2026 30 2324 2026 30 2324 minecraft:gold_block
execute if block 2026 30 2324 minecraft:gold_block unless block 2026 30 2325 minecraft:gold_block unless entity @e[type=zombie,tag=Wolfos] run function ocarina_of_time:moving_things/ice_cavern/enemies/wolfos

#Floor Icicles
#1
execute unless blocks 2057 26 2356 2057 28 2356 2059 46 2299 all run fill 2057 26 2356 2057 28 2356 minecraft:air
execute unless blocks 2057 26 2356 2057 28 2356 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle1]
#2
execute unless blocks 2059 26 2357 2059 28 2357 2059 46 2299 all run fill 2059 26 2357 2059 28 2357 minecraft:air
execute unless blocks 2059 26 2357 2059 28 2357 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle2]
#3
execute unless blocks 2061 26 2356 2061 28 2356 2059 46 2299 all run fill 2061 26 2356 2061 28 2356 minecraft:air
execute unless blocks 2061 26 2356 2061 28 2356 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle3]
#4
execute unless blocks 2049 26 2340 2049 28 2340 2059 46 2299 all run fill 2049 26 2340 2049 28 2340 minecraft:air
execute unless blocks 2049 26 2340 2049 28 2340 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle4]
#5
execute unless blocks 2050 26 2341 2050 28 2341 2059 46 2299 all run fill 2050 26 2341 2050 28 2341 minecraft:air
execute unless blocks 2050 26 2341 2050 28 2341 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle5]
#6
execute unless blocks 2051 26 2340 2051 28 2340 2059 46 2299 all run fill 2051 26 2340 2051 28 2340 minecraft:air
execute unless blocks 2051 26 2340 2051 28 2340 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle6]
#7
execute unless blocks 2042 26 2310 2042 28 2310 2059 46 2299 all run fill 2042 26 2310 2042 28 2310 minecraft:air
execute unless blocks 2042 26 2310 2042 28 2310 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle7]
#8
execute unless blocks 2043 26 2311 2043 28 2311 2059 46 2299 all run fill 2043 26 2311 2043 28 2311 minecraft:air
execute unless blocks 2043 26 2311 2043 28 2311 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle8]
#9
execute unless blocks 2044 26 2312 2044 28 2312 2059 46 2299 all run fill 2044 26 2312 2044 28 2312 minecraft:air
execute unless blocks 2044 26 2312 2044 28 2312 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle9]
#10
execute unless blocks 2044 26 2313 2044 28 2313 2059 46 2299 all run fill 2044 26 2313 2044 28 2313 minecraft:air
execute unless blocks 2044 26 2313 2044 28 2313 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle10]
#11
execute unless blocks 2049 26 2304 2049 28 2304 2059 46 2299 all run fill 2049 26 2304 2049 28 2304 minecraft:air
execute unless blocks 2049 26 2304 2049 28 2304 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle11]
#12
execute unless blocks 2049 26 2303 2049 28 2303 2059 46 2299 all run fill 2049 26 2303 2049 28 2303 minecraft:air
execute unless blocks 2049 26 2303 2049 28 2303 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle12]
#13
execute unless blocks 2048 26 2303 2048 28 2303 2059 46 2299 all run fill 2048 26 2303 2048 28 2303 minecraft:air
execute unless blocks 2048 26 2303 2048 28 2303 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle13]
#14
execute unless blocks 2067 30 2276 2067 32 2276 2059 46 2299 all run fill 2067 30 2276 2067 32 2276 minecraft:air
execute unless blocks 2067 30 2276 2067 32 2276 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle14]
#15
execute unless blocks 2069 30 2276 2069 32 2276 2059 46 2299 all run fill 2069 30 2276 2069 32 2276 minecraft:air
execute unless blocks 2069 30 2276 2069 32 2276 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle15]
#16
execute unless blocks 2075 30 2276 2075 32 2276 2059 46 2299 all run fill 2075 30 2276 2075 32 2276 minecraft:air
execute unless blocks 2075 30 2276 2075 32 2276 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle16]
#17
execute unless blocks 2077 25 2305 2077 27 2305 2059 46 2299 all run fill 2077 25 2305 2077 27 2305 minecraft:air
execute unless blocks 2077 25 2305 2077 27 2305 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle17]
#18
execute unless blocks 2078 25 2306 2078 27 2306 2059 46 2299 all run fill 2078 25 2306 2078 27 2306 minecraft:air
execute unless blocks 2078 25 2306 2078 27 2306 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle18]
#19
execute unless blocks 2079 25 2305 2079 27 2305 2059 46 2299 all run fill 2079 25 2305 2079 27 2305 minecraft:air
execute unless blocks 2079 25 2305 2079 27 2305 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle19]
#20
execute unless blocks 2083 25 2308 2083 27 2308 2059 46 2299 all run fill 2083 25 2308 2083 27 2308 minecraft:air
execute unless blocks 2083 25 2308 2083 27 2308 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle20]
#21
execute unless blocks 2082 25 2309 2082 27 2309 2059 46 2299 all run fill 2082 25 2309 2082 27 2309 minecraft:air
execute unless blocks 2082 25 2309 2082 27 2309 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle21]
#22
execute unless blocks 2083 25 2310 2083 27 2310 2059 46 2299 all run fill 2083 25 2310 2083 27 2310 minecraft:air
execute unless blocks 2083 25 2310 2083 27 2310 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle22]
#23
execute unless blocks 2082 25 2311 2082 27 2311 2059 46 2299 all run fill 2082 25 2311 2082 27 2311 minecraft:air
execute unless blocks 2082 25 2311 2082 27 2311 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle23]
#24
execute unless blocks 2083 25 2312 2083 27 2312 2059 46 2299 all run fill 2083 25 2312 2083 27 2312 minecraft:air
execute unless blocks 2083 25 2312 2083 27 2312 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle24]
#25
execute unless blocks 2082 25 2313 2082 27 2313 2059 46 2299 all run fill 2082 25 2313 2082 27 2313 minecraft:air
execute unless blocks 2082 25 2313 2082 27 2313 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle25]
#26
execute unless blocks 2079 25 2316 2079 27 2316 2059 46 2299 all run fill 2079 25 2316 2079 27 2316 minecraft:air
execute unless blocks 2079 25 2316 2079 27 2316 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle26]
#27
execute unless blocks 2078 25 2315 2078 27 2315 2059 46 2299 all run fill 2078 25 2315 2078 27 2315 minecraft:air
execute unless blocks 2078 25 2315 2078 27 2315 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle27]
#28
execute unless blocks 2077 25 2316 2077 27 2316 2059 46 2299 all run fill 2077 25 2316 2077 27 2316 minecraft:air
execute unless blocks 2077 25 2316 2077 27 2316 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle28]
#29
execute unless blocks 2039 26 2292 2039 28 2292 2059 46 2299 all run fill 2039 26 2292 2039 28 2292 minecraft:air
execute unless blocks 2039 26 2292 2039 28 2292 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle29]
#30
execute unless blocks 2040 26 2292 2040 28 2292 2059 46 2299 all run fill 2040 26 2292 2040 28 2292 minecraft:air
execute unless blocks 2040 26 2292 2040 28 2292 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle30]
#31
execute unless blocks 2041 26 2293 2041 28 2293 2059 46 2299 all run fill 2041 26 2293 2041 28 2293 minecraft:air
execute unless blocks 2041 26 2293 2041 28 2293 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle31]
#32
execute unless blocks 2042 26 2293 2042 28 2293 2059 46 2299 all run fill 2042 26 2293 2042 28 2293 minecraft:air
execute unless blocks 2042 26 2293 2042 28 2293 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle32]
#33
execute unless blocks 2022 29 2306 2022 31 2306 2059 46 2299 all run fill 2022 29 2306 2022 31 2306 minecraft:air
execute unless blocks 2022 29 2306 2022 31 2306 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle33]
#34
execute unless blocks 2024 29 2306 2024 31 2306 2059 46 2299 all run fill 2024 29 2306 2024 31 2306 minecraft:air
execute unless blocks 2024 29 2306 2024 31 2306 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle34]
#35
execute unless blocks 2024 29 2308 2024 31 2308 2059 46 2299 all run fill 2024 29 2308 2024 31 2308 minecraft:air
execute unless blocks 2024 29 2308 2024 31 2308 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle35]
#36
execute unless blocks 2020 31 2313 2020 33 2313 2059 46 2299 all run fill 2020 31 2313 2020 33 2313 minecraft:air
execute unless blocks 2020 31 2313 2020 33 2313 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle36]
#37
execute unless blocks 2017 31 2310 2017 33 2310 2059 46 2299 all run fill 2017 31 2310 2017 33 2310 minecraft:air
execute unless blocks 2017 31 2310 2017 33 2310 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle37]
#38
execute unless blocks 2016 31 2313 2016 33 2313 2059 46 2299 all run fill 2016 31 2313 2016 33 2313 minecraft:air
execute unless blocks 2016 31 2313 2016 33 2313 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle38]
#39
execute unless blocks 2014 32 2315 2014 35 2315 2059 46 2299 all run fill 2014 32 2315 2014 35 2315 minecraft:air
execute unless blocks 2014 32 2315 2014 35 2315 2059 46 2299 all run kill @e[type=armor_stand,tag=FloorIcicle39]
