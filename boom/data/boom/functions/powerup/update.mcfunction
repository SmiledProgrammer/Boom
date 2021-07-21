###########################################################
# Projekt: Boom                                           #
# Autor: Szinton                                          #
# Funkcja: Odpowiada za animację i zbieranie power up'ów. #
###########################################################

# Animacja obracania power up'a
execute as @e[type=minecraft:armor_stand,tag=powerup] at @s run tp @s ~ ~ ~ ~5 ~
# Cząsteczki lawy wyskakujące z power up'a
execute at @e[type=minecraft:armor_stand,tag=powerup] run particle minecraft:lava ~ ~0.8 ~ 0.1 0.1 0.1 1.0 1

# Zebranie power up'a
execute at @e[type=minecraft:armor_stand,tag=powerup] as @p[tag=wgrze,distance=..1] run function boom:powerup/get