#> khg:start/refill_chests

# Remove Contents
data remove block ~ ~ ~ Items

# Place Loot Table
    #> Other Chests
    execute if block ~ ~ ~ chest run data merge block ~ ~ ~ {LootTable:"khg:loot"}
    #> Start Chest
    execute if entity @s[tag=khg.StartChest] if block ~ ~ ~ chest run data merge block ~ ~ ~ {LootTable:"khg:start_loot"}