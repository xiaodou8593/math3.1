#math:dec/_6sqr
# 计算dec*dec//100
# dec: [-459999, 469999]

# method_3
scoreboard players operation sstemp_mod int = dec int
scoreboard players operation dec int /= 10000 int
scoreboard players operation sstemp_mod int %= 10000 int
scoreboard players operation sstemp_low int = sstemp_mod int
scoreboard players operation sstemp_low int *= sstemp_low int
scoreboard players operation sstemp_low int /= 100 int
scoreboard players operation sstemp_mod int *= dec int
scoreboard players operation sstemp_mod int *= 2 int
scoreboard players operation dec int *= dec int
scoreboard players operation dec int *= 1000000 int
scoreboard players operation sstemp_mod int *= 100 int
scoreboard players operation dec int += sstemp_mod int
scoreboard players operation dec int += sstemp_low int