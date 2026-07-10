#math:kfloat/_print
# 输出浮点数

data modify storage math:io stemp set value {list_zero:[""]}
execute if score kfloat_sign int matches 0.. run data modify storage math:io stemp.sign set value ""
execute if score kfloat_sign int matches -1 run data modify storage math:io stemp.sign set value "-"
execute if score kfloat_int1 int matches ..999 run data modify storage math:io stemp.list_zero append value "0"
execute if score kfloat_int1 int matches ..99 run data modify storage math:io stemp.list_zero append value "0"
execute if score kfloat_int1 int matches ..9 run data modify storage math:io stemp.list_zero append value "0"
tellraw @a ["(kfloat) ",{"nbt":"stemp.sign","storage":"math:io"},"0.",{"score":{"name":"kfloat_int0","objective":"int"}},{"nbt":"stemp.list_zero","storage":"math:io","interpret":true},{"score":{"name":"kfloat_int1","objective":"int"}},", E",{"score":{"name":"kfloat_exp","objective":"int"}}]