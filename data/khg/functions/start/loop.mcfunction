#> khg:start/loop

# Game Start
execute store result score .success khg.Values run function khg:start/player_check
execute if score .success khg.Values matches 0 run title @a[tag=!khg.Playing,gamemode=!spectator] title [{"text":"Game Already Started!","color":"red"}]
#tellraw @a [{"text":"Not Enough Players! (","color":"red"},{"score":{"name":".holdersCount","objective":"khg.Values"},"color":"red"},{"text":" Required)","color":"red"}]

schedule function khg:start/loop 120s