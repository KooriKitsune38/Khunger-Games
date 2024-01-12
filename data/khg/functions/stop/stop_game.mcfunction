#> khg:stop/stop_game

# Tp to spawn
tp @a @e[type=marker,tag=khg.Spawn,limit=1,sort=nearest]

# Winner
execute as @p[tag=khg.Playing] at @s run function khg:stop/winner

# Leave
execute as @a at @s run function khg:leave