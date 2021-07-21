###########################################################
# Projekt: Boom                                           #
# Autor: Szinton                                          #
# Funkcja: Wygrana drużyny czerwonej w trybie Drużynowym. #
###########################################################

# Ogłoszenie zwycięzców
title @a title {"text":"The game has ended!","color":"red","bold":"true"}
title @a subtitle {"text":"","color":"green","extra":[{"text":"Red Team ","color":"red"},{"text":"wins!"}]}

# Dodanie liczby zwycięstw zwycięzcom
scoreboard players add @a[team=czerwoni] wygrane 1
tellraw @a[team=czerwoni] {"text":"+1 win","color":"gold"}

# Sprzątnięcie po grze
function boom:game/end/cleanup