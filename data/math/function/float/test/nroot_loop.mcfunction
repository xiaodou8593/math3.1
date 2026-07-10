#math:float/test/nroot_loop
# math:float/test/nroot调用

execute store result score inp int run data get storage math:io temp[0] 10000
function math:float/_scoreto
scoreboard players set inp int 5
function math:float/_nroot
function math:float/_print

data remove storage math:io temp[0]
execute if data storage math:io temp[0] run function math:float/test/nroot_loop