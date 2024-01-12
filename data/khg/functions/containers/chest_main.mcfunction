#> khg:containers/chest_main

# Fill Container
execute if entity @s[tag=.temp] run function khg:containers/fill_container

# If no container, kill
execute unless block ~ ~ ~ #khg:loot_container run kill @s