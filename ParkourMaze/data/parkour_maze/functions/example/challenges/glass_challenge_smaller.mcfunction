function parkour_maze:end
tp @s ~ -57 ~

execute align xyz run fill ~-5 -60 ~-5 ~5 0 ~5 minecraft:light_gray_stained_glass outline
execute align xyz run fill ~-4 -59 ~-4 ~4 0 ~4 minecraft:white_stained_glass
execute align xyz run fill ~-1 -57 ~-1 ~1 -54 ~1 minecraft:air
execute align xyz run fill ~-1 -58 ~-1 ~1 -58 ~1 minecraft:light_gray_stained_glass

execute align xyz run fill ~-5 1 ~-5 ~5 60 ~5 minecraft:light_gray_stained_glass outline
execute align xyz run fill ~-4 1 ~-4 ~4 60 ~4 minecraft:white_stained_glass

execute align xyz run fill ~-5 61 ~-5 ~5 120 ~5 minecraft:light_gray_stained_glass outline
execute align xyz run fill ~-4 61 ~-4 ~4 120 ~4 minecraft:white_stained_glass

execute align xyz run fill ~-5 121 ~-5 ~5 180 ~5 minecraft:light_gray_stained_glass outline
execute align xyz run fill ~-4 121 ~-4 ~4 180 ~4 minecraft:white_stained_glass

execute align xyz run fill ~-5 181 ~-5 ~5 240 ~5 minecraft:light_gray_stained_glass outline
execute align xyz run fill ~-4 181 ~-4 ~4 240 ~4 minecraft:white_stained_glass

execute align xyz run fill ~-5 241 ~-5 ~5 300 ~5 minecraft:light_gray_stained_glass outline
execute align xyz run fill ~-4 241 ~-4 ~4 300 ~4 minecraft:white_stained_glass

execute align xyz run fill ~-5 301 ~-5 ~5 314 ~5 minecraft:light_gray_stained_glass outline
execute align xyz run fill ~-4 301 ~-4 ~4 318 ~4 minecraft:white_stained_glass


execute align xyz run fill ~-3 315 ~3 ~3 318 ~5 minecraft:air
execute align xyz run fill ~-3 314 ~3 ~3 314 ~5 minecraft:light_gray_stained_glass

setblock ~ 314 ~5 minecraft:dropper[facing= south]{Items: [{Slot:0b, id:"water_bucket",Count:5b}]}
setblock ~ 315 ~5 minecraft:light_weighted_pressure_plate

scoreboard players operation limit maze_settings = glass_challenge_smaller example_steps
execute align xyz positioned ~2 -57 ~ run function parkour_maze:start
scoreboard players set goal_count maze_settings 6


title @s title {"text":"Welcome to the Utimate Challenge!","bold":True,"color":"red"}
