#math:test/item_simulation/_as
# 展示实体初始化为item_simulation实例
# 输入展示实体为执行者

execute store result entity @s interpolation_duration int 1 run scoreboard players get item_simulation_t int
data modify entity @s transformation.left_rotation set value [0.0f,0.0f,0.0f,1.0f]
data modify entity @s transformation.translation set value [0.0f,0.0f,0.0f]

scoreboard players set @s quat_phi 0
scoreboard players operation @s timer = item_simulation_t int
scoreboard players remove @s timer 2

tag @s add item_simulation