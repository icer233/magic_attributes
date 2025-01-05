# magic_attributes:life_steal/tick
# 检测玩家持有带life_steal标签的物品
execute as @a store success score @s if_hold_life_steal_weapon run data get entity @s SelectedItem.tag.life_steal

# 如果持有则运行 magic_attributes:life_steal/detect
execute as @a if score @s if_hold_life_steal_weapon matches 1 run function magic_attributes:life_steal/detect

execute as @a if score @s if_hold_life_steal_weapon matches 0 run scoreboard players set @s ls_damage_dealt 0
