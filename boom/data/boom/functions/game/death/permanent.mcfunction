#################################################
# Projekt: Boom                                 #
# Autor: Szinton                                #
# Funkcja: Zarządza ostateczną śmiercią gracza. #
#################################################

# Wiadomość czatowa po ostatecznej śmierci
tellraw @a {"text":"","color":"red","extra":[{"selector":"@s"},{"text":" has dropped out of the game!"}]}

# Usuwanie tagów
tag @s remove wgrze
tag @s remove smierc

# Czyszczenie ekwipunku
clear @s

# Wyczyszczenie action bar'a
title @s actionbar ""

# Danie graczu trybu obserwatora
gamemode spectator @s
execute at @e[type=minecraft:area_effect_cloud,tag=centrumMapy,limit=1] run tp @s ~ ~ ~