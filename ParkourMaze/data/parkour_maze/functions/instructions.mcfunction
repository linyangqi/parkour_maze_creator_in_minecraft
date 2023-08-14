
tellraw @s [{"underlined":True,"color":"yellow","text":"\n[[[ MCBBS源链接（作者：机器人WBW） ]]]","clickEvent":{"action":"open_url","value":"https://www.mcbbs.net/thread-1229566-1-1.html"}}]
tellraw @s [{"underlined":True,"color":"yellow","text":"\n[[[ Github Page ]]]","clickEvent":{"action":"open_url","value":"https://github.com/linyangqi/parkour_maze_creator_in_minecraft"}}]

#English
tellraw @s [{"color":"yellow","underlined":True,"text":"\nCLICK HERE","clickEvent":{"action":"suggest_command","value":"/function parkour_maze:start"}},{"underlined":False,"color":"yellow","text":" to bulid parkour maze at your standing position.\nThe maze won't pass SOME block.(see block list below)\nThe maze won't build more than "},{"underlined":True,"color":"yellow","score":{"name":"limit","objective":"maze_settings"},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set limit maze_settings 3000"}},{"underlined":False,"color":"yellow","text":" steps."}]

#中文
tellraw @s [{"color":"yellow","underlined":True,"text":"\n点击这里","clickEvent":{"action":"suggest_command","value":"/function parkour_maze:start"}},{"underlined":False,"color":"yellow","text":"从当前位置开始建造跑酷迷宫。\n跑酷迷宫不会穿过某些方块。（下方特殊方块表）\n最多建造"},{"color":"yellow","score":{"name":"limit","objective":"maze_settings"},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set limit maze_settings 3000"}},{"underlined":False,"color":"yellow","text":"步"}]

tellraw @s [{"underlined":True,"color":"yellow","text":"\n[[[ block list 特殊方块表 ]]]","clickEvent":{"action":"run_command","value":"/function parkour_maze:block_list"}}]


tellraw @s [{"underlined":True,"color":"yellow","text":"[[[ examples 快速体验实例 ]]]","clickEvent":{"action":"suggest_command","value":"/function parkour_maze:example/"}},{"underlined":True,"color":"yellow","text":"  [properties 参数调整]","clickEvent":{"action":"run_command","value":"/function parkour_maze:example/_properties/adjust"}}]

tellraw @s [{"underlined":True,"color":"yellow","text":"[[[end structing 停止当前建造 ]]]","clickEvent":{"action":"suggest_command","value":"/function parkour_maze:end"}}]


tellraw @s [{"underlined":True,"color":"yellow","text":"\n[[[ sidebar 侧边栏 ]]]","clickEvent":{"action":"suggest_command","value":"/scoreboard objectives setdisplay sidebar maze_settings"}},{"text":"    "},{"underlined":True,"color":"yellow","text":"[[[ night_vision 夜视]]]","clickEvent":{"action":"run_command","value":"/effect give @s minecraft:night_vision infinite 1 true"}}]


