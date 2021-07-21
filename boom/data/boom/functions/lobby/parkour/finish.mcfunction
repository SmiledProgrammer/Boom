############################
# Projekt: Boom            #
# Autor: Szinton           #
# Funkcja: Kończy parkour. #
############################

tag @s remove duringParkour
execute at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 2 2.0 1.0

execute unless score @s parkourTimerMS matches ..9 run tellraw @a {"text":"","color":"green","extra":[{"selector":"@s"},{"text":" has finished the parkour with a time of "},{"score":{"name":"@s","objective":"parkourTimerS"}},{"text":"."},{"score":{"name":"@s","objective":"parkourTimerMS"}}]}

execute if score @s parkourTimerMS matches ..9 run tellraw @a {"text":"","color":"green","extra":[{"selector":"@s"},{"text":" has finished the parkour with a time of "},{"score":{"name":"@s","objective":"parkourTimerS"}},{"text":".0"},{"score":{"name":"@s","objective":"parkourTimerMS"}}]}