#> khg:leave

# Tp to spawn
tp @s @e[type=marker,tag=khg.Spawn,limit=1,sort=nearest]

# Effect
effect clear @s
effect give @s saturation 1 255 true
effect give @s regeneration 3 255 true

# Clear Inventory
clear @s[tag=khg.Playing]

# Gamemode
gamemode adventure @s[gamemode=spectator]

# Tag
tag @s remove khg.Playing