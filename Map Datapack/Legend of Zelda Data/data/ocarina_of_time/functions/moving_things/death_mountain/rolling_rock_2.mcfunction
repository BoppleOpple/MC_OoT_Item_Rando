scoreboard players add @s timer 1

execute if entity @s[scores={timer=1..10}] run tp @s ~.05 ~ ~.2
execute if entity @s[scores={timer=11}] run tp @s ~ ~-1 ~
execute if entity @s[scores={timer=12..20}] run tp @s ~.05 ~ ~.2
execute if entity @s[scores={timer=21}] run tp @s ~ ~-1 ~
execute if entity @s[scores={timer=22..30}] run tp @s ~.05 ~ ~.2
execute if entity @s[scores={timer=31..35}] run tp @s ~.05 ~-.1 ~.2
execute if entity @s[scores={timer=36..55}] run tp @s ~.05 ~-.3 ~.2
execute if entity @s[scores={timer=56..80}] run tp @s ~.04 ~-.3 ~.1
execute if entity @s[scores={timer=81..83}] run tp @s ~.04 ~-.15 ~.2
execute if entity @s[scores={timer=84}] run tp @s 2021 109.75 1475.7
execute if entity @s[scores={timer=85..107}] run tp @s ~.05 ~ ~.15
execute if entity @s[scores={timer=108}] run tp @s ~ ~-1 ~
execute if entity @s[scores={timer=109..119}] run tp @s ~.05 ~ ~.15
execute if entity @s[scores={timer=120}] run tp @s ~ ~-1 ~
execute if entity @s[scores={timer=121..129}] run tp @s ~.05 ~ ~.15
execute if entity @s[scores={timer=130}] run tp @s ~ ~-1 ~
execute if entity @s[scores={timer=131..137}] run tp @s ~.05 ~ ~.15
execute if entity @s[scores={timer=138}] run tp @s ~ ~-1 ~
execute if entity @s[scores={timer=139..151}] run tp @s ~.05 ~ ~.15
execute if entity @s[scores={timer=152}] run tp @s ~ ~-1 ~
execute if entity @s[scores={timer=153..161}] run tp @s ~.05 ~ ~.15
execute if entity @s[scores={timer=162}] run tp @s ~ ~-1 ~
execute if entity @s[scores={timer=163..169}] run tp @s ~.05 ~ ~.15
execute if entity @s[scores={timer=170}] run tp @s ~ ~-1 ~
execute if entity @s[scores={timer=171..176}] run tp @s ~.05 ~ ~.15
execute if entity @s[scores={timer=177}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=178..182}] run tp @s ~.05 ~ ~.15
execute if entity @s[scores={timer=183}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=184..210}] run tp @s ~.05 ~ ~.15
execute if entity @s[scores={timer=211..234}] run tp @s ~-.08 ~ ~.15
execute if entity @s[scores={timer=235}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=236..240}] run tp @s ~-.08 ~ ~.15
execute if entity @s[scores={timer=241..242}] run tp @s ~-.2 ~ ~-.03
execute if entity @s[scores={timer=243}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=244..247}] run tp @s ~-.2 ~ ~-.03
execute if entity @s[scores={timer=248}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=249..253}] run tp @s ~-.2 ~ ~-.03
execute if entity @s[scores={timer=254}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=255..290}] run tp @s ~-.2 ~ ~-.03
execute if entity @s[scores={timer=291..320}] run tp @s ~-.1 ~ ~-.1
execute if entity @s[scores={timer=321..364}] run tp @s ~-.03 ~ ~-.2
execute if entity @s[scores={timer=365}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=366..370}] run tp @s ~ ~ ~-.2
execute if entity @s[scores={timer=371}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=372..380}] run tp @s ~ ~ ~-.2
execute if entity @s[scores={timer=381..402}] run tp @s ~.07 ~ ~-.2
execute if entity @s[scores={timer=403}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=404..408}] run tp @s ~.07 ~ ~-.2
execute if entity @s[scores={timer=409}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=410..425}] run tp @s ~.07 ~ ~-.2
execute if entity @s[scores={timer=426..435}] run tp @s ~ ~ ~-.2
execute if entity @s[scores={timer=436..440}] run tp @s ~-.07 ~ ~-.2
execute if entity @s[scores={timer=441}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=442..447}] run tp @s ~-.07 ~ ~-.2
execute if entity @s[scores={timer=448}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=449..454}] run tp @s ~-.07 ~ ~-.2
execute if entity @s[scores={timer=455}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=456..458}] run tp @s ~-.07 ~ ~-.2
execute if entity @s[scores={timer=459}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=460..466}] run tp @s ~-.07 ~ ~-.2
execute if entity @s[scores={timer=467}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=468..472}] run tp @s ~-.07 ~ ~-.2
execute if entity @s[scores={timer=473}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=474..478}] run tp @s ~-.07 ~ ~-.2
execute if entity @s[scores={timer=479}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=480..484}] run tp @s ~-.07 ~ ~-.2
execute if entity @s[scores={timer=485}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=486..490}] run tp @s ~-.07 ~ ~-.2
execute if entity @s[scores={timer=491}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=492..495}] run tp @s ~-.07 ~ ~-.2
execute if entity @s[scores={timer=496}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=497..510}] run tp @s ~-.07 ~ ~-.2
execute if entity @s[scores={timer=511..640}] run tp @s ~ ~ ~-.2

execute if entity @s[scores={timer=640..}] run kill @s
