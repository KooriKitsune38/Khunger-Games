#> khg:as_marker

# Particles
execute if score .showMarkers khg.Values matches 1 run particle composter ~ ~ ~ 0 0 0 0 1 force

# If Chest
execute if entity @s[tag=khg.Chest] run function khg:containers/chest_main