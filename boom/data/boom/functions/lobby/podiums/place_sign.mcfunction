############################################################################
# Projekt: Boom                                                            #
# Autor: Szinton                                                           #
# Funkcja: Ustawia tabliczkę do teleportacji do lobby podiów turniejowych. #
############################################################################

setblock 11 66 -3 minecraft:birch_wall_sign[facing=south]{Text2:'{"text":"Teleport to","color":"aqua"}',Text3:'{"text":"Tournament Hall","color":"aqua","clickEvent":{"action":"run_command","value":"/tp @s -1000 65 0 0 0"}}'} destroy

setblock -1000 66 -3 minecraft:birch_wall_sign[facing=south]{Text2:'{"text":"Go back","color":"aqua"}',Text3:'{"text":"to the lobby","color":"aqua","clickEvent":{"action":"run_command","value":"/tp @s 0 65 0 0 0"}}'} destroy