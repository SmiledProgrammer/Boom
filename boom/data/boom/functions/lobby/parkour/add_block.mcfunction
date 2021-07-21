#####################################
# Projekt: Boom                     #
# Autor: Szinton                    #
# Funkcja: Dodaje blok do parkoura. #
#####################################

scoreboard players add currentBlock parkour 1
execute if score @s parkour = currentBlock parkour run tag @s add visible