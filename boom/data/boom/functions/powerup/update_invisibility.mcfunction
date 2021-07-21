########################################################
# Projekt: Boom                                        #
# Autor: Szinton                                       #
# Funkcja: Odpowiada za licznik czasu niewidzialności. #
########################################################

scoreboard players remove czasNiewidzialnosci spawn 1
execute store result bossbar minecraft:czas_niewidzialnosci value run scoreboard players get czasNiewidzialnosci spawn

schedule function boom:powerup/update_invisibility 20t
execute if score czasNiewidzialnosci spawn matches 0 as @a[tag=niewidzialny] run function boom:powerup/remove_invisibility