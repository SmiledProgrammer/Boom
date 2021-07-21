##################################
# Projekt: Boom                  #
# Autor: Szinton                 #
# Funkcja: Usuwa niewidzialność. #
##################################

tag @s remove niewidzialny
bossbar set minecraft:czas_niewidzialnosci players @a[tag=niewidzialny]
effect clear @s minecraft:invisibility
schedule clear boom:powerup/update_invisibility

execute as @s[team=niebiescy] run function boom:game/inventory/armor_blue
execute as @s[team=czerwoni] run function boom:game/inventory/armor_red