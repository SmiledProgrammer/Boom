#############################################################
# Projekt: Boom                                             #
# Autor: Szinton                                            #
# Funkcja: Stawia tabliczkę początkowej ilości żyć w lobby. #
#############################################################

setblock -14 66 1 minecraft:birch_wall_sign[facing=east]{Text1:"{\"text\":\"Starting\",\"color\":\"yellow\"}",Text2:"{\"text\":\"Amount of Lives\",\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 5\"}}",Text3:"{\"text\":\"[\",\"color\":\"red\",\"bold\":\"true\",\"extra\":[{\"score\":{\"name\":\"iloscZycia\",\"objective\":\"ustawienia\"}},{\"text\":\"]\"}]}"} destroy