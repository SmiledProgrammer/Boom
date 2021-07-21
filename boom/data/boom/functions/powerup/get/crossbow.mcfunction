#################################
# Projekt: Boom                 #
# Autor: Szinton                #
# Funkcja: Daje power up kuszy. #
#################################

give @s minecraft:crossbow{Enchantments:[{id:"minecraft:quick_charge",lvl:5s}],Damage:321s,HideFlags:63,display:{Name:"[{\"text\":\"Long-distance Bomb\",\"color\":\"yellow\",\"italic\":\"false\",\"bold\":\"true\"}]"}}

tellraw @a {"text":"","color":"aqua","extra":[{"text":"[POWER UP] ","color":"gold","bold":"true"},{"selector":"@s"},{"text":" has got 5 "},{"text":"Long-distance Bombs","color":"yellow","bold":"true"},{"text":"!"}]}