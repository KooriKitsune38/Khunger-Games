#> khg:containers/fill_container

# If barrel place barrel
execute if entity @s[tag=khg.Barrel] run setblock ~ ~ ~ barrel{LootTable:"khg:loot"}

# If chest place chest
execute if entity @s[tag=!khg.Barrel] run setblock ~ ~ ~ chest{LootTable:"khg:loot"}

# Remove Tag
tag @s remove .temp