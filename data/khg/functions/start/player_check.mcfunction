#> khg:start/player_check

# Check minimum players
    #> Retrieve Holders
    execute store result score .holdersCount khg.Values if entity @e[type=marker,tag=khg.Holder]

        #> Divide by half    
        scoreboard players operation .holdersCount khg.Values /= .2 khg.Values
        #> If using min players, set it to minPlayers
        execute if score .useMinPlayers khg.Values matches 1 run scoreboard players operation .holdersCount khg.Values = .minPlayers khg.Values

    #> Retrieve Players in Lobby
    execute store result score .playersCount khg.Values if entity @a[tag=!kgh.Playing]

# Check if game isn't started
execute if entity @p[tag=khg.Playing] run return 0

    #> Check if players are more or equal to half of the holders
    execute store success score .success khg.Values if score .playersCount khg.Values >= .holdersCount khg.Values

# If success, continue
execute if score .success khg.Values matches 1 run function khg:start/pre_start

# If no success return 2
execute if score .success khg.Values matches 0 run return 2