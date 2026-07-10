#math:float/nroot_sloop
# math:float/nroot_loop调用

function math:float/_mult

scoreboard players remove sssloop int 1
execute if score sssloop int matches 3.. run function math:float/nroot_sloop