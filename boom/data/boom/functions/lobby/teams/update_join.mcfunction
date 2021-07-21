###############################
# Projekt: Boom               #
# Autor: Szinton              #
# Funkcja: Dołącza do drużyn. #
###############################

execute as @a[team=!niebiescy,x=2.5,y=65.0,z=7.5,distance=..0.5] at @s run function boom:lobby/teams/join_blue
execute as @a[team=!czerwoni,x=-1.5,y=65.0,z=7.5,distance=..0.5] at @s run function boom:lobby/teams/join_red