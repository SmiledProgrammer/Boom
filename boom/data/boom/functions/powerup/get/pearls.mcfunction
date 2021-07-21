#######################################
# Projekt: Boom                       #
# Autor: Szinton                      #
# Funkcja: Daje power up graczowi @s. #
#######################################

give @s minecraft:ender_pearl{display:{Name:"[{\"text\":\"Ender Perła\",\"color\":\"yellow\",\"italic\":\"false\",\"bold\":\"true\"}]"}} 2

tellraw @a {"text":"","color":"aqua","extra":[{"text":"[POWER UP] ","color":"gold","bold":"true"},{"selector":"@s"},{"text":" has got 2 "},{"text":"Ender Pearls","color":"yellow","bold":"true"},{"text":"!"}]}