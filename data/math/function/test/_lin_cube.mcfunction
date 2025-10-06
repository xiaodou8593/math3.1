#math:test/_lin_cube
# 生成均匀测试区域
# 输入<inp,int>

scoreboard players set sstemp_delta int 100000
scoreboard players operation sstemp_delta int /= inp int
scoreboard players operation sstemp_start int = sstemp_delta int
scoreboard players operation sstemp_start int /= 2 int
scoreboard players remove sstemp_start int 50000

scoreboard players set sstempi int 0
scoreboard players set sstempj int 0
scoreboard players set sstempk int 0

data modify storage math:io test_coords set value []
execute if score sstempk int < inp int run function math:test/lin_cube_loop