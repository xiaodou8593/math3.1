#math:float/_nroot
# 开n次方根
# 输入<inp,int>

# 暂存inp
scoreboard players operation sstemp_i int = inp int

# 暂存jfloat
function math:float/_to_jfloat

# 将lfloat设置为n
scoreboard players operation inp int *= 10000 int
function math:float/_scoreto
function math:float/_to_lfloat

# 将kfloat设置为n-1
scoreboard players operation inp int -= 10000 int
function math:float/_scoreto
function math:float/_to_kfloat

# 估计初值
scoreboard players set inp int 10000
function math:float/_scoreto
scoreboard players operation inp int = sstemp_i int
scoreboard players operation sstemp_e int = jfloat_exp int
scoreboard players operation sstemp_e int += inp int
scoreboard players remove sstemp_e int 2
scoreboard players operation sstemp_e int /= inp int
scoreboard players add sstemp_e int 1
scoreboard players operation float_exp int > sstemp_e int

# 进行多轮迭代
scoreboard players set ssloop int 12
execute if score ssloop int matches 1.. run function math:float/nroot_loop