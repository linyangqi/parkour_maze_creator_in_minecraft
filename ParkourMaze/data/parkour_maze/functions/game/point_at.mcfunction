execute unless block ~ ~-0.1 ~ #parkour_maze:point run scoreboard players set @s maze_atpoint 0
execute if block ~ ~-0.1 ~ #parkour_maze:point run scoreboard players add @s maze_atpoint 1
execute if score @s[gamemode=!creative] maze_atpoint matches 1 run function parkour_maze:game/point_check
    execute if score @s[gamemode=creative] maze_atpoint matches 1 run tellraw @s [{"color":"yellow","text":You just found a scoring point!\n你找到了一个计分点！"}]
