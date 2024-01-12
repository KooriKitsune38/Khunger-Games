#> khg:start/pre_start

# Visuals
    #> Title
    title @a title {"text": "Game Started!","color":"green"}

# Refill Chests
execute as @e[type=marker,tag=khg.Chest] at @s run function khg:start/refill_chests

# Position Players
execute as @p[tag=!khg.Playing] at @e[type=marker,tag=khg.Holder,tag=!khg.UsedHolder,limit=1,sort=random] run function khg:start/position_player

# Remove Tag from holders
tag @e[type=marker,tag=khg.UsedHolder] remove khg.UsedHolder

# Whoever is not playing, spectator
gamemode spectator @a[tag=!khg.Playing]

# Schedule final fight
schedule function khg:stop/final_fight 600s replace