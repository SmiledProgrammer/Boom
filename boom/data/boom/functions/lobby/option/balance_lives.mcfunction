##############################################################
# Projekt: Boom                                              #
# Autor: Szinton                                             #
# Funkcja: Stawia tabliczkę balansu żyć w drużynach w lobby. #
##############################################################

execute if score balansZyc ustawienia matches 0 run setblock -14 65 0 minecraft:birch_wall_sign[facing=east]{Text1:"{\"text\":\"Balance\",\"color\":\"yellow\"}",Text2:"{\"text\":\"Team's Lives\",\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 51\"}}",Text3:"{\"text\":\"[OFF]\",\"color\":\"red\",\"bold\":\"true\"}"} destroy

execute if score balansZyc ustawienia matches 1 run setblock -14 65 0 minecraft:birch_wall_sign[facing=east]{Text1:"{\"text\":\"Balance\",\"color\":\"yellow\"}",Text2:"{\"text\":\"Team's Lives\",\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 50\"}}",Text3:"{\"text\":\"[ON]\",\"color\":\"green\",\"bold\":\"true\"}"} destroy