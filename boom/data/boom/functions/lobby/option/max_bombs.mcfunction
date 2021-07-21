##############################################################
# Projekt: Boom                                              #
# Autor: Szinton                                             #
# Funkcja: Stawia tabliczkę maksymalnej ilości bomb w lobby. #
##############################################################

execute if score maxBomby ustawienia matches 3..8 run setblock -14 66 -1 minecraft:birch_wall_sign[facing=east]{Text1:"{\"text\":\"Maximum\",\"color\":\"yellow\"}",Text2:"{\"text\":\"Bomb Count\",\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 8\"}}",Text3:"{\"text\":\"[\",\"color\":\"red\",\"bold\":\"true\",\"extra\":[{\"score\":{\"name\":\"maxBomby\",\"objective\":\"ustawienia\"}},{\"text\":\"]\"}]}"} destroy

execute if score maxBomby ustawienia matches 9 run setblock -14 66 -1 minecraft:birch_wall_sign[facing=east]{Text1:"{\"text\":\"Maximum\",\"color\":\"yellow\"}",Text2:"{\"text\":\"Bomb Count\",\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 8\"}}",Text3:"{\"text\":\"[UNLIMITED]\",\"color\":\"red\",\"bold\":\"true\"}"} destroy