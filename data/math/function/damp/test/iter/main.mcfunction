#math:damp/test/iter/main
# math:damp/test/iter/start异步调用

# 数据临时化
function marker_control:data/_get
execute store result score damp_x int run data get storage marker_control:io result.damp.x
execute store result score damp_v int run data get storage marker_control:io result.damp.v
execute store result score damp_k int run data get storage marker_control:io result.damp.k
execute store result score damp_b int run data get storage marker_control:io result.damp.b
execute store result score damp_f int run data get storage marker_control:io result.damp.f
execute store result score temp_t int run data get storage marker_control:io result.damp.target
scoreboard players operation damp_x int -= temp_t int

# 判定阻尼运动终止
function math:damp/_energy
scoreboard players operation temp_e int = res int
function math:damp/_threshold
execute if score temp_e int <= res int run return 0

data modify storage math:io temp set value {axis:[1.0f, 0.0f, 0.0f], angle:0.0f}
execute store result storage math:io temp.angle float 0.00001 run scoreboard players get damp_x int
data modify entity @s transformation.left_rotation set from storage math:io temp
data modify entity @s start_interpolation set value 0

# 阻尼迭代
function math:damp/_iter
function math:damp/_print_coord

# 储存数据
scoreboard players operation damp_x int += temp_t int
execute store result storage marker_control:io result.damp.x int 1 run scoreboard players get damp_x int
execute store result storage marker_control:io result.damp.v int 1 run scoreboard players get damp_v int
function marker_control:data/_store

# 维持main函数运行
scoreboard players set @s killtime 20