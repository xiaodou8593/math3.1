#math:test/3div_align
# 聊天栏调用

tellraw @a "--- 3div_align test ---"

# expect 2.43550

scoreboard players set res int 2147483000
scoreboard players set inp int 1000
function math:_3div_align
tellraw @a "calc result"
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]
tellraw @a ["mod: ", {"score":{"name":"mod","objective":"int"}}]