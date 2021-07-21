###############################################
# Projekt: Boom                               #
# Autor: Szinton                              #
# Funkcja: Stawia tabliczkę zestawu ustawień. #
###############################################

execute if score zestaw ustawienia matches 0 run setblock -14 67 0 minecraft:birch_wall_sign[facing=east]{Text2:"{\"text\":\"Settings Preset\",\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 100\"}}",Text3:"{\"text\":\"[Normal]\",\"color\":\"white\",\"bold\":\"true\"}"} destroy

execute if score zestaw ustawienia matches 1 run setblock -14 67 0 minecraft:birch_wall_sign[facing=east]{Text2:"{\"text\":\"Settings Preset\",\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 100\"}}",Text3:"{\"text\":\"[Only Bombs]\",\"color\":\"dark_red\",\"bold\":\"true\"}"} destroy

execute if score zestaw ustawienia matches 2 run setblock -14 67 0 minecraft:birch_wall_sign[facing=east]{Text2:"{\"text\":\"Settings Preset\",\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 100\"}}",Text3:"{\"text\":\"[Bows]\",\"color\":\"gold\",\"bold\":\"true\"}"} destroy