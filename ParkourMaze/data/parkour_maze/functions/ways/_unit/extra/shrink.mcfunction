#数量至少要保证终点数
#目前node有3种死法：失败总次数上限，密度过大，数量过高（数量者在那个函数里修改，不用shrink，因为是固定杀伤数）
#0.7.3更新：密度过大与失败过多并不直接删除，而是封禁（它还要来检测密度的）——等到数量上限再来清理
execute store result score node_count maze_settings if entity @e[tag=node,tag=maze]

#execute if score node_count maze_settings > goal_count maze_settings run kill @s[tag=node]
execute if score node_count maze_settings > goal_count maze_settings run tag @s[tag=node] add retired
