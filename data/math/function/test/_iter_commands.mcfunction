#math:test/_iter_commands
# 迭代执行测试命令
# 输入storage math:io test_commands
# 输入列表转动次数<inp,int>

scoreboard players operation ssloop int = inp int
execute if score ssloop int matches 1.. run function math:test/iter_command