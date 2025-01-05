# magic_attributes:life_steal/load
# 设置计分板
scoreboard objectives remove ls_damage_dealt
scoreboard objectives remove if_hold_life_steal_weapon
scoreboard objectives add ls_damage_dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add if_hold_life_steal_weapon dummy

# 设置常用值
scoreboard players set #100 ls_damage_dealt 100
