function parkour_maze:end
execute align xyz run fill ~-15 ~-8 ~-15 ~15 ~2 ~15 minecraft:deepslate_tiles outline
execute align xyz run fill ~-14 ~-7 ~-14 ~14 ~1 ~14 minecraft:cracked_deepslate_tiles
execute align xyz run fill ~-1 ~ ~-1 ~1 ~2 ~1 minecraft:air
#execute align xyz positioned ~ ~2 ~ run setblock ~ ~ ~ dark_oak_trapdoor
scoreboard players operation limit maze_settings = pan example_steps
execute align xyz positioned ~ ~-2 ~ run function parkour_maze:start
scoreboard players set goal_count maze_settings 3
