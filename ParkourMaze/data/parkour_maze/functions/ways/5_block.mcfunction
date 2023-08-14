#成功者

#后面还有判断碰头块……
#本来修改主题的话这个应该是要可以修改的……可能只有结束以后才能改了吧？
execute at @e[tag=node,tag=new,tag=maze] run setblock ~ ~-1 ~ minecraft:chiseled_quartz_block
execute at @e[tag=node,tag=new,tag=maze] run setblock ~ ~ ~ minecraft:structure_void
execute at @e[tag=path,tag=!hit,tag=maze] run setblock ~ ~ ~ minecraft:structure_void
execute as @e[tag=path,tag=hit,tag=maze] at @s run function parkour_maze:ways/_unit/extra/hitting


#clear的检测与放置（用于清理结构空位）
execute unless entity @e[tag=clear,tag=maze,distance=..10] run function parkour_maze:ways/_unit/_clear


#继承
tag @s remove last
tag @e[tag=node,tag=ok,tag=new] add last
