function parkour_maze:end

execute align xyz run fill ~-1 -60 ~-16 ~-1 319 ~16 minecraft:red_nether_bricks
execute align xyz run fill ~-1 -60 ~-16 ~31 319 ~-16 minecraft:red_nether_bricks
execute align xyz run fill ~-1 -60 ~16 ~31 319 ~16 minecraft:red_nether_bricks
execute align xyz run fill ~31 -60 ~-16 ~31 319 ~16 minecraft:red_nether_bricks
execute align xyz run fill ~-1 319 ~-16 ~31 319 ~16 minecraft:red_nether_bricks
execute align xyz run fill ~-1 -60 ~-16 ~31 -60 ~16 minecraft:red_nether_bricks
execute align xyz run fill ~-1 ~ ~-5 ~-1 ~8 ~5 minecraft:air

#命令方块一串，内部全是生成大片地狱砖
#如此生成的命令方块可以自动执行命令
fill ~ ~ ~ ~30 ~ ~ minecraft:command_block[conditional=false]{auto:1b,Command:"fill ~ -59 ~-15 ~ 318 ~15 cracked_nether_bricks"}



#execute align xyz positioned ~-1 ~ ~ run function parkour_maze:example/_furniture/door
scoreboard players operation limit maze_settings = hell example_steps
#生成终点数
scoreboard players set goal_count maze_settings 5

#定时开启
execute align xyz run function parkour_maze:ways/_unit/_plan



