# magic_attributes:life_steal/operate
# 给玩家回血（4点/2颗心）
effect give @s minecraft:instant_health 1 0

# 减少相应伤害值
scoreboard players operation @s ls_damage_dealt -= need_damge_dealt temp1

# 粒子特效
particle minecraft:happy_villager ~ ~1 ~



