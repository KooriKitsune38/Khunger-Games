#> khg:reload

# Tellraw
tellraw @a "[KHG] Reload"

# Scoreboard
    #> Objectives
    scoreboard objectives add khg.Values dummy
    scoreboard objectives add khg.Deaths deathCount
    scoreboard objectives add khg.Left custom:leave_game
    #> Players
    scoreboard players set .2 khg.Values 2
    scoreboard players add .useMinPlayers khg.Values 0
    scoreboard players add .minPlayers khg.Values 0
    scoreboard players add .showMarkers khg.Values 0

# Schedule
schedule function khg:start/loop 1t replace