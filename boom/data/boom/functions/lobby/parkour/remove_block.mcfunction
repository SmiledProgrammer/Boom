###################################
# Projekt: Boom                   #
# Autor: Szinton                  #
# Funkcja: Usuwa blok z parkoura. #
###################################

execute if score @s parkour = currentBlock parkour run tag @s remove visible
scoreboard players remove currentBlock parkour 1