#English
tellraw @s [{"color":"yellow","text":"\nStructing ended"}]

#中文
tellraw @s [{"color":"yellow","text":"跑酷迷宫建造结束"}]

#方块替换
tellraw @s [{"underlined":True,"color":"yellow","text":"[ 替换附近的雕纹石英块 replace chiseled quartz blocks nearby]","clickEvent":{"action":"suggest_command","value":"/fill ~-15 ~-15 ~-15 ~15 ~15 ~15 <someblock> replace minecraft:chiseled_quartz_block"}}]
