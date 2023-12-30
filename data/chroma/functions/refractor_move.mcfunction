scoreboard players remove @s lightwire_life 1

execute if block ~ ~ ~ #chroma:null_glass run scoreboard players set @s refractor_color 0
execute if block ~ ~ ~ #chroma:red_glass run scoreboard players set @s refractor_color 1
execute if block ~ ~ ~ #chroma:green_glass run scoreboard players set @s refractor_color 2
execute if block ~ ~ ~ #chroma:blue_glass run scoreboard players set @s refractor_color 3
execute if block ~ ~ ~ #chroma:purple_glass run scoreboard players set @s refractor_color 4
execute if block ~ ~ ~ #chroma:black_glass run scoreboard players set @s refractor_color 5

execute if score @s refractor_color matches 0 run particle minecraft:dust 1 1 1 1
execute if score @s refractor_color matches 1 run particle minecraft:dust -1 0.15 0.1 1
execute if score @s refractor_color matches 2 run particle minecraft:dust 0.1 -1 0.25 1
execute if score @s refractor_color matches 3 run particle minecraft:dust 0.25 0.1 -1 1
execute if score @s refractor_color matches 4 run particle minecraft:dust 0.5 0.1 -1 1
execute if score @s refractor_color matches 5 run particle minecraft:dust 0.25 0.25 0.25 1

execute if score @s refractor_color matches 0 if entity @e[type=minecraft:area_effect_cloud,sort=nearest,distance=..1,tag=refractor,tag=null] run playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 1.5
execute if score @s refractor_color matches 1 if entity @e[type=minecraft:area_effect_cloud,sort=nearest,distance=..1,tag=refractor,tag=red] run playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 1.5
execute if score @s refractor_color matches 2 if entity @e[type=minecraft:area_effect_cloud,sort=nearest,distance=..1,tag=refractor,tag=green] run playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 1.5
execute if score @s refractor_color matches 3 if entity @e[type=minecraft:area_effect_cloud,sort=nearest,distance=..1,tag=refractor,tag=blue] run playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 1.5
execute if score @s refractor_color matches 4 if entity @e[type=minecraft:area_effect_cloud,sort=nearest,distance=..1,tag=refractor,tag=purple] run playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 1.5
execute if score @s refractor_color matches 5 if entity @e[type=minecraft:area_effect_cloud,sort=nearest,distance=..1,tag=refractor,tag=black] run playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 1.5

execute if score @s refractor_color matches 0 run execute if entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=refractor,tag=null] run scoreboard players set @s lightwire_life 0
execute if score @s refractor_color matches 1 run execute if entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=refractor,tag=red] run scoreboard players set @s lightwire_life 0
execute if score @s refractor_color matches 2 run execute if entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=refractor,tag=green] run scoreboard players set @s lightwire_life 0
execute if score @s refractor_color matches 3 run execute if entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=refractor,tag=blue] run scoreboard players set @s lightwire_life 0
execute if score @s refractor_color matches 4 run execute if entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=refractor,tag=purple] run scoreboard players set @s lightwire_life 0
execute if score @s refractor_color matches 5 run execute if entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=refractor,tag=black] run scoreboard players set @s lightwire_life 0

execute if score @s refractor_color matches 0 run execute if entity @e[type=minecraft:area_effect_cloud,sort=nearest,distance=..1,tag=refractor,tag=null] run kill @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=refractor,tag=null]
execute if score @s refractor_color matches 1 run execute if entity @e[type=minecraft:area_effect_cloud,sort=nearest,distance=..1,tag=refractor,tag=red] run kill @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=refractor,tag=red]
execute if score @s refractor_color matches 2 run execute if entity @e[type=minecraft:area_effect_cloud,sort=nearest,distance=..1,tag=refractor,tag=green] run kill @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=refractor,tag=green]
execute if score @s refractor_color matches 3 run execute if entity @e[type=minecraft:area_effect_cloud,sort=nearest,distance=..1,tag=refractor,tag=blue] run kill @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=refractor,tag=blue]
execute if score @s refractor_color matches 4 run execute if entity @e[type=minecraft:area_effect_cloud,sort=nearest,distance=..1,tag=refractor,tag=purple] run kill @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=refractor,tag=purple]
execute if score @s refractor_color matches 5 run execute if entity @e[type=minecraft:area_effect_cloud,sort=nearest,distance=..1,tag=refractor,tag=black] run kill @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=refractor,tag=black]

execute unless score @s lightwire_life matches 0 unless block ^ ^ ^0.1 #chroma:air run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1.5
execute unless block ^ ^ ^0.1 #chroma:air run execute align xyz positioned ^ ^ ^0.1 run scoreboard players set @s lightwire_life 0

execute if score @s refractor_color matches 0 run execute unless block ^ ^ ^0.1 #chroma:air run execute align xyz positioned ^ ^ ^0.1 run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {Particle:"minecraft:dust 1 1 1 10",Radius:0.0000001f,Duration:2147483647,Tags:["refractor","null"]}
execute if score @s refractor_color matches 1 run execute unless block ^ ^ ^0.1 #chroma:air run execute align xyz positioned ^ ^ ^0.1 run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {Particle:"minecraft:dust -1 0.15 0.1 10",Radius:0.0000001f,Duration:2147483647,Tags:["refractor","red"]}
execute if score @s refractor_color matches 2 run execute unless block ^ ^ ^0.1 #chroma:air run execute align xyz positioned ^ ^ ^0.1 run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {Particle:"minecraft:dust 0.1 -1 0.25 10",Radius:0.0000001f,Duration:2147483647,Tags:["refractor","green"]}
execute if score @s refractor_color matches 3 run execute unless block ^ ^ ^0.1 #chroma:air run execute align xyz positioned ^ ^ ^0.1 run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {Particle:"minecraft:dust 0.25 0.1 -1 10",Radius:0.0000001f,Duration:2147483647,Tags:["refractor","blue"]}
execute if score @s refractor_color matches 4 run execute unless block ^ ^ ^0.1 #chroma:air run execute align xyz positioned ^ ^ ^0.1 run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {Particle:"minecraft:dust 0.5 0.1 -1 10",Radius:0.0000001f,Duration:2147483647,Tags:["refractor","purple"]}
execute if score @s refractor_color matches 5 run execute unless block ^ ^ ^0.1 #chroma:air run execute align xyz positioned ^ ^ ^0.1 run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {Particle:"minecraft:dust 0.25 0.25 0.25 10",Radius:0.0000001f,Duration:2147483647,Tags:["refractor","black"]}

execute if block ^ ^ ^0.1 #chroma:air unless score @s lightwire_life matches ..0 run execute positioned ^ ^ ^0.1 run function chroma:refractor_move