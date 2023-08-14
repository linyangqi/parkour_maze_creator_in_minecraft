function parkour_maze:end
execute align xyz run fill ~-10 ~-8 ~-10 ~10 ~8 ~10 minecraft:end_stone
execute align xyz run fill ~-15 ~-5 ~-15 ~15 ~5 ~15 minecraft:end_stone
execute align xyz run fill ~-2 ~ ~-2 ~2 ~3 ~2 minecraft:air
execute align xyz run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:end_stone_bricks
scoreboard players operation limit maze_settings = porous example_steps
execute align xyz positioned ~3 ~ ~ run function parkour_maze:start

scoreboard players set goal_count maze_settings 3
