function parkour_maze:end
execute align xyz run fill ~-10 ~-10 ~-10 ~10 ~20 ~10 minecraft:light_gray_stained_glass outline
execute align xyz run fill ~-9 ~-9 ~-9 ~9 ~19 ~9 minecraft:white_stained_glass
execute align xyz run fill ~-2 ~ ~-2 ~2 ~3 ~2 minecraft:air
execute align xyz run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:light_gray_stained_glass outline
scoreboard players operation limit maze_settings = glass example_steps
execute align xyz positioned ~3 ~ ~ run function parkour_maze:start
scoreboard players set goal_count maze_settings 3
