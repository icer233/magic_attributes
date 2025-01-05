# magic_attributes:lightning/tick
# 检测玩家攻击就运行 magic_attributes:lightning/detect
execute as @r at @s unless score @s ltn_damage_dealt matches 0 run function magic_attributes:lightning/detect
