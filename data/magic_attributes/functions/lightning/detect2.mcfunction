# magic_attributes:lightning/detect2
# 检测攻击者是否为该特定玩家且该玩家手持带有ltn标签的物品
execute on attacker if entity @s[tag=player_self] store success score ltn_true temp1 run data get entity @s SelectedItem.tag.ltn

# 如果是则运行 magic_attributes:lightning/summon_ltn
execute as @s at @s if score ltn_true temp1 matches 1 run function magic_attributes:lightning/summon_ltn
execute if score ltn_true temp1 matches 1 run scoreboard players set ltn_true temp1 0