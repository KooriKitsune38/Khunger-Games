#> khg:main

# Selectors
    #> As Marker
    execute as @e[type=marker] at @s run function khg:as_marker
    #> As Everyone
    execute as @a at @s run function khg:as_player

# Check players
execute store result score .playingPlayers khg.Values if entity @a[tag=khg.Playing]
execute if score .playingPlayers khg.Values matches 1 run function khg:stop/stop_game