###########################################
# Projekt: Boom                           #
# Autor: Szinton                          #
# Funkcja: Update'uje bloki na parkourze. #
###########################################

execute if score currentBlock parkour < furthestBlock parkour run scoreboard players add currentBlock parkour 1
execute if score currentBlock parkour > furthestBlock parkour run scoreboard players remove currentBlock parkour 1

execute as @e[type=minecraft:area_effect_cloud,tag=parkour] if score @s parkour <= currentBlock parkour at @s run particle minecraft:cloud ~ ~0.5 ~ 0 0 0 0.001 5