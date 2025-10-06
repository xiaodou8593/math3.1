#math:test/item_simulation/main
# item_simulation主程序

# 计时并过滤非计算tick
scoreboard players add @s timer 1
execute unless score @s timer = item_simulation_t int run return fail

# 重置计时器
scoreboard players set @s timer 0

# 计算旋转
scoreboard players operation @s quat_phi += item_simulation_omega int
# 计算正余弦值
execute store result entity 0-0-0-0-0 Rotation[0] float -0.00005 run scoreboard players operation @s quat_phi %= 3600000 int
execute as 0-0-0-0-0 at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity 0-0-0-0-0 Pos
execute store result score cos int run data get storage math:io xyz[2] 10000
execute store result score sin int run data get storage math:io xyz[0] 10000
# 储存到四元数
data modify storage math:io xyzw set value [0.0f,0.0f,0.0f,0.0f]
execute store result storage math:io xyzw[1] float 0.0001 run scoreboard players get sin int
execute store result storage math:io xyzw[3] float 0.0001 run scoreboard players get cos int
data modify entity @s transformation.left_rotation set from storage math:io xyzw

# 计算起伏振动
execute store result entity 0-0-0-0-0 Rotation[0] float -0.0001 run scoreboard players get @s quat_phi
execute as 0-0-0-0-0 at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score sin int run data get entity 0-0-0-0-0 Pos[0] 10000
scoreboard players operation sin int *= item_simulation_a int
scoreboard players operation sin int /= 10000 int
# 储存到偏移量
data modify storage math:io translation set value [0.0f,0.0f,0.0f]
execute store result storage math:io translation[1] float 0.0001 run scoreboard players get sin int
data modify entity @s transformation.translation set from storage math:io translation

# 启动插值动画
data modify entity @s start_interpolation set value 0