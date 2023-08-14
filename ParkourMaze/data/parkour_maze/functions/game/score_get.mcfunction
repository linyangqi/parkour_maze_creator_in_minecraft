scoreboard players add @s maze_score 1
tellraw @a [{"color":"yellow","selector":"@s"},{"color":"yellow","text":" just got a parkour-maze score! Now his/her score is "},{"color":"yellow","score":{"name":"@s","objective":"maze_score"}}]
tellraw @a [{"color":"yellow","text":"恭喜"},{"color":"yellow","selector":"@s"},{"color":"yellow","text":"获得跑酷迷宫得分！当前分数"},{"color":"yellow","score":{"name":"@s","objective":"maze_score"}}]
setblock ~ ~ ~ air
function parkour_maze:game/effect_reward


