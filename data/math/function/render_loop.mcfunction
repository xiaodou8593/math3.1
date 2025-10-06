#math:render_loop
# math:_render_coords调用

$$(render_command)

scoreboard players remove ssloop int 1
data modify entity @s Pos set from storage math:io input[0]
data modify storage math:io input append from storage math:io input[0]
data remove storage math:io input[0]
execute if score ssloop int matches 1.. at @s run function math:render_loop with storage math:io {}