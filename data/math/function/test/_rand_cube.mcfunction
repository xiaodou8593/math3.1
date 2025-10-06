#math:test/_rand_cube
# 生成预设的测试区域

scoreboard players set x_min int -100000
scoreboard players set x_max int 100000
scoreboard players set y_min int -100000
scoreboard players set y_max int 100000
scoreboard players set z_min int -100000
scoreboard players set z_max int 100000

scoreboard players set rand_seed int 8593
scoreboard players set inp int 1000
function math:test/_rand_coords