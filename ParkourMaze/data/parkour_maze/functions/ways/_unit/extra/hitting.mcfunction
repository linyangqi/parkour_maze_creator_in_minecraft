#默认0-4中0（1/5概率）
scoreboard players set mod randomer 5
function randomer:my
#碰头块太恶心了，少来点
execute unless score @s randomer matches 0..3 run setblock ~ ~ ~ minecraft:structure_void
