# magic_attributes:life_steal/detect
# 获得攻击者吸血比例
execute store result score life_steal_proportion temp1 run data get entity @s SelectedItem.tag.life_steal

# 计算需要达到多少伤害
scoreboard players set need_damge_dealt temp1 40
scoreboard players operation need_damge_dealt temp1 *= #100 ls_damage_dealt
scoreboard players operation need_damge_dealt temp1 /= life_steal_proportion temp1

# 如果伤害够了就执行 magic_attributes:life_steal/operate
execute if score @s ls_damage_dealt >= need_damge_dealt temp1 run function magic_attributes:life_steal/operate
