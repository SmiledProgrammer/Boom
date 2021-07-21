##############################################
# Projekt: Boom                              #
# Autor: Szinton                             #
# Funkcja: Update'uje portal na mapie Ender. #
##############################################

execute as @a[tag=wgrze] at @s if block ~ ~-1 ~ minecraft:black_concrete run function boom:map/ender/portal_teleport
execute if score portal timerArmorStanda matches 1 run function boom:map/ender/portal_close