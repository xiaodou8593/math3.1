#math:test/coord_loop
# math:test/_rand_coords调用

scoreboard players operation min int = x_min int
scoreboard players operation max int = x_max int
function math:_random
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get random int

scoreboard players operation min int = y_min int
scoreboard players operation max int = y_max int
function math:_random
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get random int

scoreboard players operation min int = z_min int
scoreboard players operation max int = z_max int
function math:_random
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get random int

data modify storage math:io test_coords append from storage math:io xyz

scoreboard players remove ssloop int 1
execute if score ssloop int matches 1.. run function math:test/coord_loop