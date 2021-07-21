#######################################
# Projekt: Boom                       #
# Autor: Szinton                      #
# Funkcja: Update'uje timer parkoura. #
#######################################

scoreboard players add @s parkourTimerMS 5
execute if score @s parkourTimerMS matches 100.. run scoreboard players add @s parkourTimerS 1
execute if score @s parkourTimerMS matches 100.. run scoreboard players set @s parkourTimerMS 0

execute unless score @s parkourTimerMS matches ..9 run title @s actionbar {"text":"","color":"yellow","extra":[{"score":{"name":"@s","objective":"parkourTimerS"}},{"text":"."},{"score":{"name":"@s","objective":"parkourTimerMS"}}]}

execute if score @s parkourTimerMS matches ..9 run title @s actionbar {"text":"","color":"yellow","extra":[{"score":{"name":"@s","objective":"parkourTimerS"}},{"text":".0"},{"score":{"name":"@s","objective":"parkourTimerMS"}}]}