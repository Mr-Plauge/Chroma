scoreboard objectives add lightwire_life dummy
scoreboard objectives add lightwire_bounce dummy
scoreboard objectives add lightwire_damage dummy
scoreboard objectives add lightwire_init dummy
scoreboard objectives add lightwire_color dummy
scoreboard players set @s lightwire_life 1200
scoreboard players set @s lightwire_bounce 15
scoreboard players set @s lightwire_damage 0
scoreboard players set @s lightwire_init 0
scoreboard players set @s lightwire_color 0
playsound minecraft:entity.illusioner.cast_spell player @a ~ ~ ~ 1 1.5
tag @e[type=minecraft:area_effect_cloud,tag=refractor] remove used
execute anchored eyes run function chroma:lightwire_move