scoreboard players remove @s lightwire_bounce 1
scoreboard players set @s lightwire_init 1
scoreboard players set @s lightwire_damage 1

execute if score @s lightwire_color matches 0 run execute as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=!used,tag=refractor,tag=null] run tag @s add used
execute if score @s lightwire_color matches 1 run execute as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=!used,tag=refractor,tag=red] run tag @s add used
execute if score @s lightwire_color matches 2 run execute as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=!used,tag=refractor,tag=green] run tag @s add used
execute if score @s lightwire_color matches 3 run execute as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=!used,tag=refractor,tag=blue] run tag @s add used
execute if score @s lightwire_color matches 4 run execute as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=!used,tag=refractor,tag=purple] run tag @s add used
execute if score @s lightwire_color matches 5 run execute as @e[type=area_effect_cloud,sort=nearest,limit=1,tag=!used,tag=refractor,tag=black] run tag @s add used

execute if score @s lightwire_bounce matches 0 run execute align xyz positioned ^ ^ ^ run function chroma:lightwire_teleport

execute if score @s lightwire_color matches 0 run execute unless entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..32,tag=!used,tag=refractor,tag=null] run execute align xyz positioned ^ ^ ^ run function chroma:lightwire_teleport
execute if score @s lightwire_color matches 1 run execute unless entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..32,tag=!used,tag=refractor,tag=red] run execute align xyz positioned ^ ^ ^ run function chroma:lightwire_teleport
execute if score @s lightwire_color matches 3 run execute unless entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..32,tag=!used,tag=refractor,tag=blue] run execute align xyz positioned ^ ^ ^ run function chroma:lightwire_teleport
execute if score @s lightwire_color matches 2 run execute unless entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..32,tag=!used,tag=refractor,tag=green] run execute align xyz positioned ^ ^ ^ run function chroma:lightwire_teleport
execute if score @s lightwire_color matches 4 run execute unless entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..32,tag=!used,tag=refractor,tag=purple] run execute align xyz positioned ^ ^ ^ run function chroma:lightwire_teleport
execute if score @s lightwire_color matches 5 run execute unless entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..32,tag=!used,tag=refractor,tag=black] run execute align xyz positioned ^ ^ ^ run function chroma:lightwire_teleport

execute if score @s lightwire_color matches 0 run execute unless score @s lightwire_bounce matches 0 run execute facing entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..32,tag=!used,tag=refractor,tag=null] eyes run scoreboard players set @s lightwire_life 1200
execute if score @s lightwire_color matches 1 run execute unless score @s lightwire_bounce matches 0 run execute facing entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..32,tag=!used,tag=refractor,tag=red] eyes run scoreboard players set @s lightwire_life 1200
execute if score @s lightwire_color matches 2 run execute unless score @s lightwire_bounce matches 0 run execute facing entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..32,tag=!used,tag=refractor,tag=green] eyes run scoreboard players set @s lightwire_life 1200
execute if score @s lightwire_color matches 3 run execute unless score @s lightwire_bounce matches 0 run execute facing entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..32,tag=!used,tag=refractor,tag=blue] eyes run scoreboard players set @s lightwire_life 1200
execute if score @s lightwire_color matches 4 run execute unless score @s lightwire_bounce matches 0 run execute facing entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..32,tag=!used,tag=refractor,tag=purple] eyes run scoreboard players set @s lightwire_life 1200
execute if score @s lightwire_color matches 5 run execute unless score @s lightwire_bounce matches 0 run execute facing entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..32,tag=!used,tag=refractor,tag=black] eyes run scoreboard players set @s lightwire_life 1200

execute if score @s lightwire_color matches 0 run execute unless score @s lightwire_bounce matches 0 run execute facing entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..32,tag=!used,tag=refractor,tag=null] eyes run function chroma:lightwire_move
execute if score @s lightwire_color matches 1 run execute unless score @s lightwire_bounce matches 0 run execute facing entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..32,tag=!used,tag=refractor,tag=red] eyes run function chroma:lightwire_move
execute if score @s lightwire_color matches 2 run execute unless score @s lightwire_bounce matches 0 run execute facing entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..32,tag=!used,tag=refractor,tag=green] eyes run function chroma:lightwire_move
execute if score @s lightwire_color matches 3 run execute unless score @s lightwire_bounce matches 0 run execute facing entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..32,tag=!used,tag=refractor,tag=blue] eyes run function chroma:lightwire_move
execute if score @s lightwire_color matches 4 run execute unless score @s lightwire_bounce matches 0 run execute facing entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..32,tag=!used,tag=refractor,tag=purple] eyes run function chroma:lightwire_move
execute if score @s lightwire_color matches 5 run execute unless score @s lightwire_bounce matches 0 run execute facing entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,distance=..32,tag=!used,tag=refractor,tag=black] eyes run function chroma:lightwire_move