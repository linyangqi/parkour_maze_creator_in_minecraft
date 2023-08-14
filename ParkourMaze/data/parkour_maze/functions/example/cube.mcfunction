function parkour_maze:end
execute align xyz run fill ~-3 ~-10 ~-10 ~15 ~20 ~10 minecraft:quartz_bricks outline
execute align xyz run fill ~-2 ~-9 ~-9 ~14 ~19 ~9 minecraft:quartz_block
execute align xyz run fill ~-3 ~ ~-3 ~2 ~5 ~3 minecraft:air
execute align xyz run fill ~-3 ~-1 ~-3 ~2 ~-1 ~3 minecraft:quartz_bricks
scoreboard players operation limit maze_settings = cube example_steps
execute align xyz positioned ~3 ~ ~ run function parkour_maze:start
scoreboard players set goal_count maze_settings 3
