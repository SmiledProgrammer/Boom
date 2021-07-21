#####################################################################
# Projekt: Boom                                                     #
# Autor: Szinton                                                    #
# Funkcja: Wykonuje operacje, gdy jest za mało graczy, żeby zagrać. #
#####################################################################

# Powiadomienia o za małej ilości graczy
tellraw @a {"text":"Two players are required to start the game.","color":"red"}
title @a title {"text":"Too little players!","color":"red","bold":"true"}

# Zresetowanie guzika (aby uniknąć spamu)
setblock 0 66 14 minecraft:birch_button