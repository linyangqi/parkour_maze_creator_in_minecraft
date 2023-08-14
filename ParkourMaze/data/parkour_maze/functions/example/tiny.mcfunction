function parkour_maze:end
execute align xyz run fill ~-1 ~-3 ~-7 ~10 ~8 ~7 minecraft:quartz_bricks outline
execute align xyz run fill ~ ~-2 ~-6 ~9 ~7 ~6 minecraft:quartz_block
execute align xyz positioned ~-1 ~ ~ run function parkour_maze:example/_furniture/door
scoreboard players operation limit maze_settings = tiny example_steps
execute align xyz run function parkour_maze:start
scoreboard players set goal_count maze_settings 1
