#############################################################
# Projekt: Boom                                             #
# Autor: Szinton                                            #
# Funkcja: Wygrana drużyny niebieskiej w trybie Drużynowym. #
#############################################################

# Ogłoszenie zwycięzców
title @a title {"text":"The game has ended!","color":"red","bold":"true"}
title @a subtitle {"text":"","color":"green","extra":[{"text":"Blue Team ","color":"blue"},{"text":"wins!"}]}

# Dodanie liczby zwycięstw zwycięzcom
scoreboard players add @a[team=niebiescy] wygrane 1
tellraw @a[team=niebiescy] {"text":"+1 win","color":"gold"}

# Sprzątnięcie po grze
function boom:game/end/cleanup