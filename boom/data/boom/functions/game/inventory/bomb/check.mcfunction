####################################################
# Projekt: Boom                                    #
# Autor: Szinton                                   #
# Funkcja: Sprawdza czy zresetować bombę graczowi. #
####################################################

execute store result score @s kopiaItemu run clear @s minecraft:lingering_potion 0
execute unless score @s kopiaItemu matches 1 run function boom:game/inventory/bomb/give