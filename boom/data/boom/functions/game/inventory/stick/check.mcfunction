####################################################
# Projekt: Boom                                    #
# Autor: Szinton                                   #
# Funkcja: Sprawdza czy zresetować patyk graczowi. #
####################################################

execute store result score @s kopiaItemu run clear @s minecraft:stick 0
execute unless score @s kopiaItemu matches 1 run function boom:game/inventory/stick/give