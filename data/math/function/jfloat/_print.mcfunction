#math:jfloat/_print
# 输出浮点数

data modify storage math:io stemp set value {list_zero:[""]}
execute if score jfloat_sign int matches 0.. run data modify storage math:io stemp.sign set value ""
execute if score jfloat_sign int matches -1 run data modify storage math:io stemp.sign set value "-"
execute if score jfloat_int1 int matches ..999 run data modify storage math:io stemp.list_zero append value "0"
execute if score jfloat_int1 int matches ..99 run data modify storage math:io stemp.list_zero append value "0"
execute if score jfloat_int1 int matches ..9 run data modify storage math:io stemp.list_zero append value "0"
tellraw @a ["(jfloat) ",{"nbt":"stemp.sign","storage":"math:io"},"0.",{"score":{"name":"jfloat_int0","objective":"int"}},{"nbt":"stemp.list_zero","storage":"math:io","interpret":true},{"score":{"name":"jfloat_int1","objective":"int"}},", E",{"score":{"name":"jfloat_exp","objective":"int"}}]