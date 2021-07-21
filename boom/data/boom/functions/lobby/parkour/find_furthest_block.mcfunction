#####################################################################################
# Projekt: Boom                                                                     #
# Autor: Szinton                                                                    #
# Funkcja: Rekurencyjna; Znajduje najdalszy blok, na którym stoi gracz w parkourze. #
#####################################################################################

execute if score furthestBlock parkour matches 1.. as @e[type=minecraft:area_effect_cloud,tag=parkour] if score @s parkour = furthestBlock parkour at @s positioned ~ ~1 ~ unless entity @p[distance=..1.5] run function boom:lobby/parkour/get_next_block