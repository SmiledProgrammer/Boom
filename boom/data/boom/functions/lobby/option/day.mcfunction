################################################
# Projekt: Boom                                #
# Autor: Szinton                               #
# Funkcja: Stawia tabliczkę dnia/nocy w lobby. #
################################################

execute if score dzien ustawienia matches 1 run time set 3000
execute if score dzien ustawienia matches 1 run setblock -14 67 1 minecraft:birch_wall_sign[facing=east]{Text2:"{\"text\":\"Day\",\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 1\"}}",Text3:"{\"text\":\"[ON]\",\"color\":\"green\",\"bold\":\"true\"}"} destroy

execute if score dzien ustawienia matches 0 run time set 15000
execute if score dzien ustawienia matches 0 run setblock -14 67 1 minecraft:birch_wall_sign[facing=east]{Text2:"{\"text\":\"Day\",\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 2\"}}",Text3:"{\"text\":\"[OFF]\",\"color\":\"red\",\"bold\":\"true\"}"} destroy