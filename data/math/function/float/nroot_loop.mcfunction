#math:float/nroot_loop
# math:float/_nroot调用

# ifloat暂存
function math:float/_to_ifloat

# 计算x_k^n
scoreboard players operation sssloop int = inp int
execute if score sssloop int matches 3.. run function math:float/nroot_sloop

# 计算(n-1)*x_k
function math:ifloat/_mult_by_kfloat

# 计算a/(x_k^n)
function math:float/_div_jfloat

# 求和合并
function math:float/_add
function math:float/_div_by_lfloat

scoreboard players remove ssloop int 1
execute if score ssloop int matches 1.. run function math:float/nroot_loop