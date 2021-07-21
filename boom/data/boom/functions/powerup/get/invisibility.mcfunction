###########################################
# Projekt: Boom                           #
# Autor: Szinton                          #
# Funkcja: Daje power up niewidzialności. #
###########################################

tag @s add niewidzialny
effect give @s minecraft:invisibility 15 1 true
scoreboard players set czasNiewidzialnosci spawn 15
bossbar set minecraft:czas_niewidzialnosci value 15
bossbar set minecraft:czas_niewidzialnosci players @s

replaceitem entity @s armor.chest minecraft:air

tellraw @a {"text":"","color":"aqua","extra":[{"text":"[POWER UP] ","color":"gold","bold":"true"},{"selector":"@s"},{"text":" has got "},{"text":"Invisibility","color":"yellow","bold":"true"},{"text":" for 15 seconds!"}]}

schedule function boom:powerup/update_invisibility 20t