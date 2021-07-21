#########################################
# Projekt: Boom                         #
# Autor: Szinton                        #
# Funkcja: Wygrana gracza w trybie FFA. #
#########################################

# Ogłoszenie zwycięzcy
title @a title {"text":"The game has ended!","color":"red","bold":"true"}
title @a subtitle {"text":"","color":"green","extra":[{"selector":"@s"},{"text":" has won the game!"}]}

# Dodanie liczby zwycięstw zwycięzcy
scoreboard players add @s wygrane 1
tellraw @s {"text":"+1 win","color":"gold"}

# Sprzątnięcie po grze
function boom:game/end/cleanup