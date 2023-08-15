execute unless block ~ ~-0.1 ~ #parkour_maze:point run scoreboard players set @s maze_atpoint 0
execute if block ~ ~-0.1 ~ #parkour_maze:point run scoreboard players add @s maze_atpoint 1
execute if score @s[gamemode=!creative] maze_atpoint matches 1 run function parkour_maze:game/point_check


#照顾创造模式
execute if score @s[gamemode=creative] maze_atpoint matches 1 run tellraw @s [{"color":"yellow","text":"You just found a scoring point!\n你找到了一个计分点！","hoverEvent":{"action":"show_text","value":"To get the point, use f3+f4 to change your gamemode into survival or adventure mode.\n要实际得分，使用f3+f4修改你的游戏模式为生存/冒险模式。"}}]
