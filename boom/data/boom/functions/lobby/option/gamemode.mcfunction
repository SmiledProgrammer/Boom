################################################
# Projekt: Boom                                #
# Autor: Szinton                               #
# Funkcja: Stawia tabliczkę trybu gry w lobby. #
################################################

execute if score tryb ustawienia matches 0 run function boom:lobby/teams/cleanup
execute if score tryb ustawienia matches 0 run setblock -14 66 0 minecraft:birch_wall_sign[facing=east]{Text2:"{\"text\":\"Teams Mode\",\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 7\"}}",Text3:"{\"text\":\"[OFF]\",\"color\":\"red\",\"bold\":\"true\"}"} destroy

execute if score tryb ustawienia matches 1 run function boom:lobby/teams/setup
execute if score tryb ustawienia matches 1 run setblock -14 66 0 minecraft:birch_wall_sign[facing=east]{Text2:"{\"text\":\"Teams Mode\",\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 6\"}}",Text3:"{\"text\":\"[ON]\",\"color\":\"green\",\"bold\":\"true\"}"} destroy