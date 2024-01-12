#> khg:stop/winner

# Tellraw
title @a title {"selector":"@s","color":"aqua","bold":true,"underlined":true}
title @a subtitle {"text":" won the goof!","color":"aqua","bold":true}

# Visuals
    #> Effect
    effect give @s glowing 15 0 true
    #> Particles
    particle totem_of_undying ~ ~.25 ~ .1 .1 .1 .5 50 force
    #> Sound
    playsound ui.toast.challenge_complete player @a ~ ~ ~ 1 1.2