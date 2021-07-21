####################################################################
# Projekt: Boom                                                    #
# Autor: Szinton                                                   #
# Funkcja: Inicjująca - tworzy scoreboard'y,                       #
#		   summonuje potrzebne entity i ustawia wszystko na start. #
####################################################################

# Reset gry
scoreboard players set bezFajerwerek spawn 1
function boom:game/end/cleanup

# Reset parkour'a
tag @a remove duringParkour

# Reset team'ów
kill @e[type=minecraft:armor_stand,tag=druzynowy]

# Żeby creeper'y mogły się spawnować
difficulty easy

# Stawianie tabliczek do zmieniania ustawień gry
function boom:lobby/options_wall