# math:get_random
# 生成下一个随机数
scoreboard players operation random_seed math *= large_num math
execute store result score random_output math run scoreboard players add random_seed math 11451

# 计算范围
scoreboard players operation stemp math = max math
scoreboard players operation stemp math -= min math
scoreboard players add stemp math 1

# 处理随机数结果
scoreboard players operation random_output math %= stemp math
scoreboard players operation random_output math += min math