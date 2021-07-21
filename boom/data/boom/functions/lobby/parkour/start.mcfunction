##########################################
# Projekt: Boom                          #
# Autor: Szinton                         #
# Funkcja: Rozpoczyna graczowi parkoura. #
##########################################

tag @s add duringParkour
scoreboard players set @s parkourTimerS 0
scoreboard players set @s parkourTimerMS 0
execute at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 2 1.0 1.0