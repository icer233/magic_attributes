# math:load
# 设置计分板
scoreboard objectives remove math
scoreboard objectives add math dummy

# 设置参数
scoreboard players set max math 100
scoreboard players set min math 1
scoreboard players set large_num math 1103515245

# 随机初始random_seed
execute as @p at @p run summon minecraft:marker ~ ~ ~ {Tags:[random]}
execute store result score random_seed math run data get entity @e[type=marker,tag=random,limit=1,sort=nearest] UUID[3]
kill @e[tag=random]