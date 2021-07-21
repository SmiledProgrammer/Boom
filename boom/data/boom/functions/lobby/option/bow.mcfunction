#########################################################
# Projekt: Boom                                         #
# Autor: Szinton                                        #
# Funkcja: Stawia tabliczkę odpychającego łuku w lobby. #
#########################################################

execute if score luk ustawienia matches 1 run setblock -14 65 1 minecraft:birch_wall_sign[facing=east]{Text1:"{\"text\":\"Punch\",\"color\":\"yellow\"}",Text2:"{\"text\":\"Bow\",\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 9\"}}",Text3:"{\"text\":\"[ON]\",\"color\":\"green\",\"bold\":\"true\"}"} destroy

execute if score luk ustawienia matches 0 run setblock -14 65 1 minecraft:birch_wall_sign[facing=east]{Text1:"{\"text\":\"Punch\",\"color\":\"yellow\"}",Text2:"{\"text\":\"Bow\",\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 10\"}}",Text3:"{\"text\":\"[OFF]\",\"color\":\"red\",\"bold\":\"true\"}"} destroy