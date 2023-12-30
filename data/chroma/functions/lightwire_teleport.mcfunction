teleport @s[tag=lightwire_teleport] ~0.5 ~2 ~0.5
execute as @s[tag=lightwire_teleport] run playsound minecraft:entity.illusioner.mirror_move player @a ~0.5 ~2 ~0.5 1 1
execute as @s[tag=lightwire_teleport] run playsound minecraft:entity.illusioner.cast_spell player @a ~0.5 ~2 ~0.5 1 1.5
execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 0 run particle minecraft:dust 1 1 1 1 ~ ~1 ~ 0.25 0.5 0.25 1 100
execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 1 run particle minecraft:dust -1 0.15 0.1 1 ~ ~1 ~ 0.25 0.5 0.25 1 100
execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 2 run particle minecraft:dust 0.1 -1 0.25 1 ~ ~1 ~ 0.25 0.5 0.25 1 100
execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 3 run particle minecraft:dust 0.25 0.1 -1 1 ~ ~1 ~ 0.25 0.5 0.25 1 100
execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 4 run particle minecraft:dust 0.5 0.1 -1 1 ~ ~1 ~ 0.25 0.5 0.25 1 100
execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 5 run particle minecraft:dust 0.25 0.25 0.25 1 ~ ~1 ~ 0.25 0.5 0.25 1 100

execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 1 run effect give @s minecraft:strength 15 2
execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 1 run effect give @s minecraft:speed 5 2

execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 2 run effect give @s minecraft:haste 15 2
execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 2 run effect give @s minecraft:speed 15 0

execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 3 run effect give @s minecraft:resistance 15 2
execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 3 run effect give @s minecraft:absorption 15 2

execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 4 run effect clear @s minecraft:slowness
execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 4 run effect clear @s minecraft:instant_damage
execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 4 run effect clear @s minecraft:poison
execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 4 run effect clear @s minecraft:weakness
execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 4 run effect clear @s minecraft:levitation
execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 4 run effect clear @s minecraft:blindness
execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 4 run effect clear @s minecraft:nausea
execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 4 run effect clear @s minecraft:mining_fatigue
execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 4 run effect clear @s minecraft:wither
execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 4 run effect clear @s minecraft:unluck
execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 4 run effect give @s minecraft:regeneration 5 4

execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 5 run effect give @s minecraft:invisibility 15 2 true
execute positioned as @s[tag=lightwire_teleport] at @s if score @s lightwire_color matches 5 run effect give @s minecraft:speed 15 1 true