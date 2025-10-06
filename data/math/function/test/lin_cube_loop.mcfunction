#math:test/lin_cube_loop
# math:test/_lin_cube调用

scoreboard players operation sstempx int = sstempi int
scoreboard players operation sstempx int *= sstemp_delta int
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation sstempx int += sstemp_start int

scoreboard players operation sstempy int = sstempj int
scoreboard players operation sstempy int *= sstemp_delta int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players operation sstempy int += sstemp_start int

scoreboard players operation sstempz int = sstempk int
scoreboard players operation sstempz int *= sstemp_delta int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation sstempz int += sstemp_start int

data modify storage math:io test_coords append from storage math:io xyz

scoreboard players add sstempi int 1
execute if score sstempi int = inp int run scoreboard players add sstempj int 1
execute if score sstempj int = inp int run scoreboard players add sstempk int 1
scoreboard players operation sstempi int %= inp int
scoreboard players operation sstempj int %= inp int

execute if score sstempk int < inp int run function math:test/lin_cube_loop