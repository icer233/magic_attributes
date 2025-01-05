# magic_attributes:lightning/summon_ltn
# 获取该武器雷霆几率（n%）
execute on attacker store result score ltn_possibility temp1 run data get entity @s SelectedItem.tag.ltn

# 获取随机数
scoreboard players set max math 100
scoreboard players set min math 1
function math:get_random

# 若符合概率则召唤雷霆
execute if score random_output math < ltn_possibility temp1 at @s run summon minecraft:lightning_bolt ~ ~ ~

# 粒子特效
execute if score random_output math < ltn_possibility temp1 at @s run particle minecraft:sonic_boom ~ ~ ~ 2 2 2 1 5