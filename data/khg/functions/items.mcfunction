#> khg:items

clear @s

# Spawn
give @s ghast_spawn_egg{display:{Name:'{"text":"Spawn"}'},EntityTag:{id:"marker",Tags:[khg.Spawn]}}
# Center
give @s ghast_spawn_egg{display:{Name:'{"text":"Center"}'},EntityTag:{id:"marker",Tags:[khg.Center]}}
# Holders
give @s skeleton_spawn_egg{display:{Name:'{"text":"Holder"}'},EntityTag:{id:"marker",Tags:[khg.Holder]}}
# Chest
give @s horse_spawn_egg{display:{Name:'{"text":"Chest"}'},EntityTag:{id:"marker",Tags:[khg.Chest,.temp]}}
# Barrel
give @s horse_spawn_egg{display:{Name:'{"text":"Barrel"}'},EntityTag:{id:"marker",Tags:[khg.Chest,.temp,khg.Barrel]}}