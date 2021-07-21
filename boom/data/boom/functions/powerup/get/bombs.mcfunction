###################################
# Projekt: Boom                   #
# Autor: Szinton                  #
# Funkcja: Daje power up 40 bomb. #
###################################

scoreboard players add @s bomby 40

tellraw @a {"text":"","color":"aqua","extra":[{"text":"[POWER UP] ","color":"gold","bold":"true"},{"selector":"@s"},{"text":" has got "},{"text":"40 Bombs","color":"yellow","bold":"true"},{"text":"!"}]}