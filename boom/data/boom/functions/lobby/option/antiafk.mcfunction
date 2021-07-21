#######################################################
# Projekt: Boom                                       #
# Autor: Szinton                                      #
# Funkcja: Stawia tabliczkę Systemu anty-AFK w lobby. #
#######################################################

# Ustawienie tabliczki Systemu anty-kamperskiego
execute if score antyAFK ustawienia matches 0 run setblock -14 67 -1 minecraft:birch_wall_sign[facing=east]{Text1:"{\"text\":\"Anti-Camping\",\"color\":\"yellow\"}",Text2:"{\"text\":\"System\",\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 3\"}}",Text3:"{\"text\":\"[OFF]\",\"color\":\"red\",\"bold\":\"true\"}"} destroy

execute if score antyAFK ustawienia matches 50 run setblock -14 67 -1 minecraft:birch_wall_sign[facing=east]{Text1:"{\"text\":\"Anti-Camping\",\"color\":\"yellow\"}",Text2:"{\"text\":\"System\",\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 4\"}}",Text3:"{\"text\":\"[ON]\",\"color\":\"green\",\"bold\":\"true\"}",Text4:"{\"text\":\"(short time)\",\"color\":\"dark_green\"}"} destroy

execute if score antyAFK ustawienia matches 75 run setblock -14 67 -1 minecraft:birch_wall_sign[facing=east]{Text1:"{\"text\":\"Anti-Camping\",\"color\":\"yellow\"}",Text2:"{\"text\":\"System\",\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 4\"}}",Text3:"{\"text\":\"[ON]\",\"color\":\"green\",\"bold\":\"true\"}",Text4:"{\"text\":\"(medium time)\",\"color\":\"dark_green\"}"} destroy

execute if score antyAFK ustawienia matches 100 run setblock -14 67 -1 minecraft:birch_wall_sign[facing=east]{Text1:"{\"text\":\"Anti-Camping\",\"color\":\"yellow\"}",Text2:"{\"text\":\"System\",\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 4\"}}",Text3:"{\"text\":\"[ON]\",\"color\":\"green\",\"bold\":\"true\"}",Text4:"{\"text\":\"(long time)\",\"color\":\"dark_green\"}"} destroy

# Ustawienie tabliczki ostrzeżenia dla Systemu anty-kamperskiego
execute unless score antyAFK ustawienia matches 1..75 run setblock -14 67 -2 minecraft:air destroy
execute if score antyAFK ustawienia matches 1..75 run setblock -14 67 -2 minecraft:dark_oak_wall_sign[facing=east]{Text2:'{"text":"Unrecommended","color":"yellow","italic":"true"}',Text3:'{"text":"for Beginners!","color":"yellow","italic":"true"}',Text4:'{"text":"<-------","color":"yellow","bold":"true"}'} destroy