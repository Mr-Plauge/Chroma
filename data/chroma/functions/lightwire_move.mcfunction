scoreboard players remove @s lightwire_life 1

execute if block ~ ~ ~ #chroma:null_glass unless score @s lightwire_color matches 0 unless score @s lightwire_life matches ..0 run scoreboard players set @s lightwire_init 0
execute if block ~ ~ ~ #chroma:red_glass unless score @s lightwire_color matches 1 unless score @s lightwire_life matches ..0 run scoreboard players set @s lightwire_init 0
execute if block ~ ~ ~ #chroma:green_glass unless score @s lightwire_color matches 2 unless score @s lightwire_life matches ..0 run scoreboard players set @s lightwire_init 0
execute if block ~ ~ ~ #chroma:blue_glass unless score @s lightwire_color matches 3 unless score @s lightwire_life matches ..0 run scoreboard players set @s lightwire_init 0
execute if block ~ ~ ~ #chroma:purple_glass unless score @s lightwire_color matches 4 unless score @s lightwire_life matches ..0 run scoreboard players set @s lightwire_init 0
execute if block ~ ~ ~ #chroma:black_glass unless score @s lightwire_color matches 5 unless score @s lightwire_life matches ..0 run scoreboard players set @s lightwire_init 0

execute if block ~ ~ ~ #chroma:null_glass run scoreboard players set @s lightwire_color 0
execute if block ~ ~ ~ #chroma:red_glass run scoreboard players set @s lightwire_color 1
execute if block ~ ~ ~ #chroma:green_glass run scoreboard players set @s lightwire_color 2
execute if block ~ ~ ~ #chroma:blue_glass run scoreboard players set @s lightwire_color 3
execute if block ~ ~ ~ #chroma:purple_glass run scoreboard players set @s lightwire_color 4
execute if block ~ ~ ~ #chroma:black_glass run scoreboard players set @s lightwire_color 5

execute if score @s lightwire_color matches 0 run particle minecraft:dust 1 1 1 1
execute if score @s lightwire_color matches 1 run particle minecraft:dust -1 0.15 0.1 1
execute if score @s lightwire_color matches 2 run particle minecraft:dust 0.1 -1 0.25 1
execute if score @s lightwire_color matches 3 run particle minecraft:dust 0.25 0.1 -1 1
execute if score @s lightwire_color matches 4 run particle minecraft:dust 0.5 0.1 -1 1
execute if score @s lightwire_color matches 5 run particle minecraft:dust 0.25 0.25 0.25 1

execute if score @s lightwire_damage matches 1 as @e[tag=!lightwire_teleport,distance=..1,tag=!refractor] run power grant @s chroma:lightwire_damage
execute if score @s lightwire_damage matches 1 as @e[tag=!lightwire_teleport,distance=..1,tag=!refractor] run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 0.8
execute if score @s lightwire_damage matches 1 if score @s lightwire_color matches 0 as @e[tag=!lightwire_teleport,distance=..1,tag=!refractor] run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 0.8

execute if score @s lightwire_damage matches 1 if score @s lightwire_color matches 1 as @e[tag=!lightwire_teleport,distance=..1,tag=!refractor] run effect give @s minecraft:speed 5 1
execute if score @s lightwire_damage matches 1 if score @s lightwire_color matches 1 as @e[tag=!lightwire_teleport,distance=..1,tag=!refractor] run effect give @s minecraft:weakness 5 100
execute if score @s lightwire_damage matches 1 if score @s lightwire_color matches 1 as @e[tag=!lightwire_teleport,distance=..1,tag=!refractor] run playsound minecraft:block.note_block.basedrum player @a ~ ~ ~ 1 0.8

execute if score @s lightwire_damage matches 1 if score @s lightwire_color matches 2 as @e[tag=!lightwire_teleport,distance=..1,tag=!refractor] run effect give @s minecraft:mining_fatigue 15 4
execute if score @s lightwire_damage matches 1 if score @s lightwire_color matches 2 as @e[tag=!lightwire_teleport,distance=..1,tag=!refractor] run effect give @s minecraft:poison 15 4
execute if score @s lightwire_damage matches 1 if score @s lightwire_color matches 2 as @e[tag=!lightwire_teleport,distance=..1,tag=!refractor] run effect give @s minecraft:hunger 15 9
execute if score @s lightwire_damage matches 1 if score @s lightwire_color matches 2 as @e[tag=!lightwire_teleport,distance=..1,tag=!refractor] run playsound minecraft:block.note_block.didgeridoo player @a ~ ~ ~ 1 0.1

execute if score @s lightwire_damage matches 1 if score @s lightwire_color matches 3 as @e[tag=!lightwire_teleport,distance=..1,tag=!refractor] run effect give @s minecraft:glowing 15 0
execute if score @s lightwire_damage matches 1 if score @s lightwire_color matches 3 as @e[tag=!lightwire_teleport,distance=..1,tag=!refractor] run effect give @s minecraft:slowness 5 9
execute if score @s lightwire_damage matches 1 if score @s lightwire_color matches 3 as @e[tag=!lightwire_teleport,distance=..1,tag=!refractor] run effect give @s minecraft:weakness 5 2
execute if score @s lightwire_damage matches 1 if score @s lightwire_color matches 3 as @e[tag=!lightwire_teleport,distance=..1,tag=!refractor] run playsound minecraft:block.note_block.bass player @a ~ ~ ~ 1 0.8

execute if score @s lightwire_damage matches 1 if score @s lightwire_color matches 4 as @e[tag=!lightwire_teleport,distance=..1,tag=!refractor] run effect clear @s
execute if score @s lightwire_damage matches 1 if score @s lightwire_color matches 4 as @e[tag=!lightwire_teleport,distance=..1,tag=!refractor] run effect give @s minecraft:wither 5 100
execute if score @s lightwire_damage matches 1 if score @s lightwire_color matches 4 as @e[tag=!lightwire_teleport,distance=..1,tag=!refractor] run effect give @s minecraft:weakness 5 0
execute if score @s lightwire_damage matches 1 if score @s lightwire_color matches 4 as @e[tag=!lightwire_teleport,distance=..1,tag=!refractor] run effect give @s minecraft:slowness 5 0
execute if score @s lightwire_damage matches 1 if score @s lightwire_color matches 4 as @e[tag=!lightwire_teleport,distance=..1,tag=!refractor] run playsound minecraft:block.note_block.bit player @a ~ ~ ~ 1 0.5

execute if score @s lightwire_damage matches 1 if score @s lightwire_color matches 5 as @e[tag=!lightwire_teleport,distance=..1,tag=!refractor] run effect give @s minecraft:wither 15 2
execute if score @s lightwire_damage matches 1 if score @s lightwire_color matches 5 as @e[tag=!lightwire_teleport,distance=..1,tag=!refractor] run effect give @s minecraft:blindness 15 0
execute if score @s lightwire_damage matches 1 if score @s lightwire_color matches 5 as @e[tag=!lightwire_teleport,distance=..1,tag=!refractor] run effect give @s minecraft:glowing 5 0
execute if score @s lightwire_damage matches 1 if score @s lightwire_color matches 5 as @e[tag=!lightwire_teleport,distance=..1,tag=!refractor] run playsound minecraft:block.note_block.chime player @a ~ ~ ~ 1 0.1

execute if score @s lightwire_color matches 0 run execute if entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=!used,tag=refractor,tag=null] unless score @s lightwire_life matches ..0 run execute positioned ~ ~ ~ run function chroma:lightwire_redirect
execute if score @s lightwire_color matches 1 run execute if entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=!used,tag=refractor,tag=red] unless score @s lightwire_life matches ..0 run execute positioned ~ ~ ~ run function chroma:lightwire_redirect
execute if score @s lightwire_color matches 2 run execute if entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=!used,tag=refractor,tag=green] unless score @s lightwire_life matches ..0 run execute positioned ~ ~ ~ run function chroma:lightwire_redirect
execute if score @s lightwire_color matches 3 run execute if entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=!used,tag=refractor,tag=blue] unless score @s lightwire_life matches ..0 run execute positioned ~ ~ ~ run function chroma:lightwire_redirect
execute if score @s lightwire_color matches 4 run execute if entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=!used,tag=refractor,tag=purple] unless score @s lightwire_life matches ..0 run execute positioned ~ ~ ~ run function chroma:lightwire_redirect
execute if score @s lightwire_color matches 5 run execute if entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=!used,tag=refractor,tag=black] unless score @s lightwire_life matches ..0 run execute positioned ~ ~ ~ run function chroma:lightwire_redirect

execute if score @s lightwire_color matches 0 run execute if score @s lightwire_init matches 1 unless entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=!used,tag=refractor,tag=null] if entity @e[type=minecraft:area_effect_cloud,distance=..32,tag=!used,tag=refractor,tag=null] unless score @s lightwire_bounce matches 0 run execute positioned ^ ^ ^0.1 run function chroma:lightwire_move
execute if score @s lightwire_color matches 1 run execute if score @s lightwire_init matches 1 unless entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=!used,tag=refractor,tag=red] if entity @e[type=minecraft:area_effect_cloud,distance=..32,tag=!used,tag=refractor,tag=red] unless score @s lightwire_bounce matches 0 run execute positioned ^ ^ ^0.1 run function chroma:lightwire_move
execute if score @s lightwire_color matches 2 run execute if score @s lightwire_init matches 1 unless entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=!used,tag=refractor,tag=green] if entity @e[type=minecraft:area_effect_cloud,distance=..32,tag=!used,tag=refractor,tag=green] unless score @s lightwire_bounce matches 0 run execute positioned ^ ^ ^0.1 run function chroma:lightwire_move
execute if score @s lightwire_color matches 3 run execute if score @s lightwire_init matches 1 unless entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=!used,tag=refractor,tag=blue] if entity @e[type=minecraft:area_effect_cloud,distance=..32,tag=!used,tag=refractor,tag=blue] unless score @s lightwire_bounce matches 0 run execute positioned ^ ^ ^0.1 run function chroma:lightwire_move
execute if score @s lightwire_color matches 4 run execute if score @s lightwire_init matches 1 unless entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=!used,tag=refractor,tag=purple] if entity @e[type=minecraft:area_effect_cloud,distance=..32,tag=!used,tag=refractor,tag=purple] unless score @s lightwire_bounce matches 0 run execute positioned ^ ^ ^0.1 run function chroma:lightwire_move
execute if score @s lightwire_color matches 5 run execute if score @s lightwire_init matches 1 unless entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=!used,tag=refractor,tag=black] if entity @e[type=minecraft:area_effect_cloud,distance=..32,tag=!used,tag=refractor,tag=black] unless score @s lightwire_bounce matches 0 run execute positioned ^ ^ ^0.1 run function chroma:lightwire_move

execute if score @s lightwire_color matches 0 run execute unless entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=!used,tag=refractor,tag=null] if score @s lightwire_init matches 0 unless score @s lightwire_bounce matches 0 run execute positioned ^ ^ ^0.1 run function chroma:lightwire_move
execute if score @s lightwire_color matches 1 run execute unless entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=!used,tag=refractor,tag=red] if score @s lightwire_init matches 0 unless score @s lightwire_bounce matches 0 run execute positioned ^ ^ ^0.1 run function chroma:lightwire_move
execute if score @s lightwire_color matches 2 run execute unless entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=!used,tag=refractor,tag=green] if score @s lightwire_init matches 0 unless score @s lightwire_bounce matches 0 run execute positioned ^ ^ ^0.1 run function chroma:lightwire_move
execute if score @s lightwire_color matches 3 run execute unless entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=!used,tag=refractor,tag=blue] if score @s lightwire_init matches 0 unless score @s lightwire_bounce matches 0 run execute positioned ^ ^ ^0.1 run function chroma:lightwire_move
execute if score @s lightwire_color matches 4 run execute unless entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=!used,tag=refractor,tag=purple] if score @s lightwire_init matches 0 unless score @s lightwire_bounce matches 0 run execute positioned ^ ^ ^0.1 run function chroma:lightwire_move
execute if score @s lightwire_color matches 5 run execute unless entity @e[type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1,tag=!used,tag=refractor,tag=black] if score @s lightwire_init matches 0 unless score @s lightwire_bounce matches 0 run execute positioned ^ ^ ^0.1 run function chroma:lightwire_move