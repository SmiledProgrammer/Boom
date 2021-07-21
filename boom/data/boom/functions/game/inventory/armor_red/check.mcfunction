#####################################################
# Projekt: Boom                                     #
# Autor: Szinton                                    #
# Funkcja: Sprawdza czy zresetować zbroję graczowi. #
#####################################################

execute unless data entity @s {Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]} run function boom:game/inventory/armor_red/give