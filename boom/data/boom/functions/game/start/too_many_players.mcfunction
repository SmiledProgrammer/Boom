#####################################################################
# Projekt: Boom                                                     #
# Autor: Szinton                                                    #
# Funkcja: Wykonuje operacje, gdy jest za dużo graczy, żeby zagrać. #
#####################################################################

# Powiadomienia o za dużej ilości graczy
tellraw @a {"text":"There are too many players on the server to play this map. Choose a different map, so that everyone could play.","color":"red"}
title @a title {"text":"Too many players!","color":"red","bold":"true"}

# Zresetowanie guzika (aby uniknąć spamu)
setblock 0 66 14 minecraft:birch_button