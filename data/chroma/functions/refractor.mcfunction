scoreboard objectives add lightwire_life dummy
scoreboard objectives add refractor_color dummy
scoreboard objectives add refractor_life dummy
scoreboard players set @s lightwire_life 1200
scoreboard players set @s refractor_color 0
playsound minecraft:entity.illusioner.cast_spell player @a ~ ~ ~ 1 1.8
execute anchored eyes run function chroma:refractor_move