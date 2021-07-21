#######################################
# Projekt: Boom                       #
# Autor: Szinton                      #
# Funkcja: Ustawia lobby pod grę FFA. #
#######################################

setblock 2 64 7 minecraft:light_blue_stained_glass
setblock -2 64 7 minecraft:light_blue_stained_glass

kill @e[type=minecraft:armor_stand,tag=druzynowy]

team leave @a

setblock -14 65 0 minecraft:air destroy