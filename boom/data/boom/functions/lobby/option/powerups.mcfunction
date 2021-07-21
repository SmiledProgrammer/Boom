##################################################
# Projekt: Boom                                  #
# Autor: Szinton                                 #
# Funkcja: Stawia tabliczkę power up'ów w lobby. #
##################################################

execute if score powerupy ustawienia matches 1 run setblock -14 65 -1 minecraft:birch_wall_sign[facing=east]{Text2:"{\"text\":\"Power Up's\",\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 11\"}}",Text3:"{\"text\":\"[ON]\",\"color\":\"green\",\"bold\":\"true\"}"} destroy

execute if score powerupy ustawienia matches 0 run setblock -14 65 -1 minecraft:birch_wall_sign[facing=east]{Text2:"{\"text\":\"Power Up's\",\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 12\"}}",Text3:"{\"text\":\"[OFF]\",\"color\":\"red\",\"bold\":\"true\"}"} destroy