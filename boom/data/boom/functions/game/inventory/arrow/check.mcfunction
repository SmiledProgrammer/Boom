######################################################
# Projekt: Boom                                      #
# Autor: Szinton                                     #
# Funkcja: Sprawdza czy zresetować strzałę graczowi. #
######################################################

execute store result score @s kopiaItemu run clear @s minecraft:arrow 0
execute unless score @s kopiaItemu matches 1.. run function boom:game/inventory/arrow/give