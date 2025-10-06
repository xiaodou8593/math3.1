#math:test/render_loop
# math:test/_render_coords调用

$$(render_command)

scoreboard players remove ssloop int 1
data modify entity @s Pos set from storage math:io test_coords[0]
data modify storage math:io test_coords append from storage math:io test_coords[0]
data remove storage math:io test_coords[0]
execute if score ssloop int matches 1.. at @s run function math:test/render_loop with storage math:io {}