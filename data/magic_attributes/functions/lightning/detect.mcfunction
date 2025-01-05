# magic_attributes:lightning/detect
# 清零玩家造成伤害
scoreboard players set @s ltn_damage_dealt 0

# 检测玩家8格内受伤实体并运行 magic_attributes:lightning/detect2
tag @s add player_self
execute as @e[distance=..8,tag=!player_self] unless data entity @s {HurtTime:0s} at @s run function magic_attributes:lightning/detect2
tag @s remove player_self
