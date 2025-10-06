#math:test/_rand_coords
# 生成随机测试点坐标
# 输入{<x_min,int,1w>,<x_max,int,1w>,<y_min,int,1w>,<y_max,int,1w>,<z_min,int,1w>,<z_max,int,1w>}
# 输入测试点数量<inp,int>

data modify storage math:io test_coords set value []

scoreboard players operation ssloop int = inp int
execute if score ssloop int matches 1.. run function math:test/coord_loop

kill @e[tag=test_coord]
summon marker 0 0 0 {Tags:["test_coord"],CustomName:'{"text":"test_coord"}'}

execute store result score x int run data get storage math:io test_coords[0][0] 10000
execute store result score y int run data get storage math:io test_coords[0][1] 10000
execute store result score z int run data get storage math:io test_coords[0][2] 10000
scoreboard players operation x int += test_x int
scoreboard players operation y int += test_y int
scoreboard players operation z int += test_z int
execute as @e[tag=test_coord,limit=1] run function math:_topos