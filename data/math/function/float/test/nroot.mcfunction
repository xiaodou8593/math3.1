#math:float/test/nroot

tellraw @a "--- math float nroot test ---"

data modify storage math:io temp set value [0.0001,0.1,0.5,0.75,0.98,1.0,5.0,20.0,1000.0,99999.9999]
execute if data storage math:io temp[0] run function math:float/test/nroot_loop