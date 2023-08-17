function parkour_maze:end
tp @s ~ -55 ~

execute align xyz run fill ~-10 -60 ~-10 ~10 0 ~10 minecraft:light_gray_stained_glass outline
execute align xyz run fill ~-9 -59 ~-9 ~9 0 ~9 minecraft:white_stained_glass
execute align xyz run fill ~-3 -57 ~-3 ~3 -52 ~3 minecraft:air
execute align xyz run fill ~-3 -58 ~-3 ~3 -58 ~3 minecraft:light_gray_stained_glass

execute align xyz run fill ~-10 1 ~-10 ~10 60 ~10 minecraft:light_gray_stained_glass outline
execute align xyz run fill ~-9 1 ~-9 ~9 60 ~9 minecraft:white_stained_glass

execute align xyz run fill ~-10 61 ~-10 ~10 120 ~10 minecraft:light_gray_stained_glass outline
execute align xyz run fill ~-9 61 ~-9 ~9 120 ~9 minecraft:white_stained_glass

execute align xyz run fill ~-10 121 ~-10 ~10 180 ~10 minecraft:light_gray_stained_glass outline
execute align xyz run fill ~-9 121 ~-9 ~9 180 ~9 minecraft:white_stained_glass

execute align xyz run fill ~-10 181 ~-10 ~10 240 ~10 minecraft:light_gray_stained_glass outline
execute align xyz run fill ~-9 181 ~-9 ~9 240 ~9 minecraft:white_stained_glass

execute align xyz run fill ~-10 241 ~-10 ~10 300 ~10 minecraft:light_gray_stained_glass outline
execute align xyz run fill ~-9 241 ~-9 ~9 300 ~9 minecraft:white_stained_glass

execute align xyz run fill ~-10 301 ~-10 ~10 319 ~10 minecraft:light_gray_stained_glass outline
execute align xyz run fill ~-9 301 ~-9 ~9 318 ~9 minecraft:white_stained_glass


execute align xyz run fill ~-3 315 ~3 ~3 318 ~10 minecraft:air
execute align xyz run fill ~-3 314 ~3 ~3 314 ~10 minecraft:light_gray_stained_glass

setblock ~ 314 ~10 minecraft:dropper[facing= south]{Items: [{Slot:0b, id:"water_bucket",Count:10b}]}
setblock ~ 315 ~10 minecraft:light_weighted_pressure_plate

scoreboard players operation limit maze_settings = glass_challenge example_steps
execute align xyz positioned ~3 -57 ~ run function parkour_maze:start
scoreboard players set goal_count maze_settings 6


title @s title {"text":"Welcome to the Utimate Challenge!","bold":True,"color":"red"}
