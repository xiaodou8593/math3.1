#math:damp/test/iter/start
# 聊天栏执行

function math:test/_coords

tag @e remove result
execute at @e[tag=test_coord,limit=1] run summon item_display ~ ~ ~ {Tags:["result", "test", "damp_test"], item:{id:"minecraft:command_block", count:1b}, interpolation_duration:1, CustomName:'{"text":"damp_test"}'}
execute as @e[tag=result,limit=1] run function marker_control:data/_get

data modify storage marker_control:io result.tick_func set value "math:damp/test/iter/main"
data modify storage marker_control:io result.del_func set value "math:damp/test/iter/end"

data modify storage marker_control:io result.damp set value {k:95, b:100, f:500, x:85934, v:10000, target:85934}

execute as @e[tag=result,limit=1] run function marker_control:data/_store
tag @e[tag=result,limit=1] add entity_ticked
tag @e[tag=result,limit=1] add entity_todel

scoreboard players set @e[tag=result,limit=1] killtime 20
data modify entity @e[tag=result,limit=1] start_interpolation set value 1