#> khg:start/position_player

# Tag @s
tag @s add khg.Playing

# Store Player Count
execute store result score .playersCount khg.Values if entity @a[tag=khg.Playing]

# Position Player
tp ~ ~ ~

# Effect
effect give @s jump_boost 10 250 true
effect give @s slowness 10 255 true
effect give @s saturation 1 255 true
effect give @s resistance 60 0 true

# Visuals
    #> Particles
    execute at @s run particle cloud ~ ~2 ~ .2 .2 .2 0.1 30 force
    #> Sound
    execute at @s run playsound block.note_block.cow_bell player @a ~ ~ ~ 1 2

# Clear
clear @s

# Tag Marker
tag @e[type=marker,tag=khg.Holder,limit=1,sort=nearest,distance=..2] add khg.UsedHolder

# Repeat for each player
execute if score .playersCount khg.Values <= .holdersCount khg.Values at @e[type=marker,tag=khg.Holder,tag=!khg.UsedHolder,limit=1,sort=random] as @p[tag=!khg.Playing] run function khg:start/position_player