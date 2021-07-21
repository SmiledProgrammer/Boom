##################################################
# Projekt: Boom                                  #
# Autor: Szinton                                 #
# Funkcja: Stawia tabliczkę wyboru mapy w lobby. #
##################################################

# Ustawienie obrazku mapy
kill @e[type=minecraft:item_frame,tag=map]
summon minecraft:item_frame 0 67 -14 {Tags:["map"],Facing:3,Item:{id:"minecraft:filled_map",Count:1b,tag:{map:0}},Invulnerable:1b}
execute store result entity @e[type=minecraft:item_frame,tag=map,limit=1] Item.tag.map int 1 run scoreboard players get mapa ustawienia

# Ustawienie nazwy mapy
execute if score mapa ustawienia matches 1 run setblock 0 66 -14 minecraft:birch_wall_sign[facing=south]{Text1:"{\"text\":\"Map\",\"color\":\"yellow\"}",Text2:"{\"text\":\"Boogie Woogie\",\"color\":\"aqua\",\"bold\":\"true\"}",Text3:"{\"text\":\"Players: 2-\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 1000\"},\"extra\":[{\"score\":{\"name\":\"liczbaGraczy\",\"objective\":\"ustawienia\"}}]}"} destroy

execute if score mapa ustawienia matches 2 run setblock 0 66 -14 minecraft:birch_wall_sign[facing=south]{Text1:"{\"text\":\"Map\",\"color\":\"yellow\"}",Text2:"{\"text\":\"Islands\",\"color\":\"dark_green\",\"bold\":\"true\"}",Text3:"{\"text\":\"Players: 2-\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 1000\"},\"extra\":[{\"score\":{\"name\":\"liczbaGraczy\",\"objective\":\"ustawienia\"}}]}"} destroy

execute if score mapa ustawienia matches 3 run setblock 0 66 -14 minecraft:birch_wall_sign[facing=south]{Text1:"{\"text\":\"Map\",\"color\":\"yellow\"}",Text2:"{\"text\":\"Ender\",\"color\":\"dark_purple\",\"bold\":\"true\"}",Text3:"{\"text\":\"Players: 2-\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 1000\"},\"extra\":[{\"score\":{\"name\":\"liczbaGraczy\",\"objective\":\"ustawienia\"}}]}"} destroy

execute if score mapa ustawienia matches 4 run setblock 0 66 -14 minecraft:birch_wall_sign[facing=south]{Text1:"{\"text\":\"Map\",\"color\":\"yellow\"}",Text2:"{\"text\":\"Apocalypse\",\"color\":\"black\",\"bold\":\"true\"}",Text3:"{\"text\":\"Players: 2-\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 1000\"},\"extra\":[{\"score\":{\"name\":\"liczbaGraczy\",\"objective\":\"ustawienia\"}}]}"} destroy

execute if score mapa ustawienia matches 5 run setblock 0 66 -14 minecraft:birch_wall_sign[facing=south]{Text1:"{\"text\":\"Map\",\"color\":\"yellow\"}",Text2:"{\"text\":\"Gold Mine\",\"color\":\"gold\",\"bold\":\"true\"}",Text3:"{\"text\":\"Players: 2-\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 1000\"},\"extra\":[{\"score\":{\"name\":\"liczbaGraczy\",\"objective\":\"ustawienia\"}}]}"} destroy

execute if score mapa ustawienia matches 6 run setblock 0 66 -14 minecraft:birch_wall_sign[facing=south]{Text1:"{\"text\":\"Map\",\"color\":\"yellow\"}",Text2:"{\"text\":\"Candyland\",\"color\":\"light_purple\",\"bold\":\"true\"}",Text3:"{\"text\":\"Players: 2-\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 1000\"},\"extra\":[{\"score\":{\"name\":\"liczbaGraczy\",\"objective\":\"ustawienia\"}}]}"} destroy

execute if score mapa ustawienia matches 7 run setblock 0 66 -14 minecraft:birch_wall_sign[facing=south]{Text1:"{\"text\":\"Map\",\"color\":\"yellow\"}",Text2:"{\"text\":\"Flying Madness\",\"color\":\"gray\",\"bold\":\"true\"}",Text3:"{\"text\":\"Players: 2-\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 1000\"},\"extra\":[{\"score\":{\"name\":\"liczbaGraczy\",\"objective\":\"ustawienia\"}}]}"} destroy

execute if score mapa ustawienia matches 8 run setblock 0 66 -14 minecraft:birch_wall_sign[facing=south]{Text1:"{\"text\":\"Map\",\"color\":\"yellow\"}",Text2:"{\"text\":\"Winter\",\"color\":\"white\",\"bold\":\"true\"}",Text3:"{\"text\":\"Players: 2-\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 1000\"},\"extra\":[{\"score\":{\"name\":\"liczbaGraczy\",\"objective\":\"ustawienia\"}}]}"} destroy

execute if score mapa ustawienia matches 9 run setblock 0 66 -14 minecraft:birch_wall_sign[facing=south]{Text1:"{\"text\":\"Map\",\"color\":\"yellow\"}",Text2:"{\"text\":\"Nether\",\"color\":\"dark_red\",\"bold\":\"true\"}",Text3:"{\"text\":\"Players: 2-\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 1000\"},\"extra\":[{\"score\":{\"name\":\"liczbaGraczy\",\"objective\":\"ustawienia\"}}]}"} destroy

execute if score mapa ustawienia matches 10 run setblock 0 66 -14 minecraft:birch_wall_sign[facing=south]{Text1:"{\"text\":\"Map\",\"color\":\"yellow\"}",Text2:"{\"text\":\"Depths\",\"color\":\"dark_aqua\",\"bold\":\"true\"}",Text3:"{\"text\":\"Players: 2-\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 1000\"},\"extra\":[{\"score\":{\"name\":\"liczbaGraczy\",\"objective\":\"ustawienia\"}}]}"} destroy

execute if score mapa ustawienia matches 11 run setblock 0 66 -14 minecraft:birch_wall_sign[facing=south]{Text1:"{\"text\":\"Map\",\"color\":\"yellow\"}",Text2:"{\"text\":\"Elementals\",\"color\":\"green\",\"bold\":\"true\"}",Text3:"{\"text\":\"Players: 2-\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 1000\"},\"extra\":[{\"score\":{\"name\":\"liczbaGraczy\",\"objective\":\"ustawienia\"}}]}"} destroy

execute if score mapa ustawienia matches 12 run setblock 0 66 -14 minecraft:birch_wall_sign[facing=south]{Text1:"{\"text\":\"Map\",\"color\":\"yellow\"}",Text2:"{\"text\":\"Planets\",\"color\":\"dark_blue\",\"bold\":\"true\"}",Text3:"{\"text\":\"Players: 2-\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 1000\"},\"extra\":[{\"score\":{\"name\":\"liczbaGraczy\",\"objective\":\"ustawienia\"}}]}"} destroy

execute if score mapa ustawienia matches 13 run setblock 0 66 -14 minecraft:birch_wall_sign[facing=south]{Text1:"{\"text\":\"Map\",\"color\":\"yellow\"}",Text2:"{\"text\":\"Desert\",\"color\":\"yellow\",\"bold\":\"true\"}",Text3:"{\"text\":\"Players: 2-\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 1000\"},\"extra\":[{\"score\":{\"name\":\"liczbaGraczy\",\"objective\":\"ustawienia\"}}]}"} destroy

execute if score mapa ustawienia matches 14 run setblock 0 66 -14 minecraft:birch_wall_sign[facing=south]{Text1:"{\"text\":\"Map\",\"color\":\"yellow\"}",Text2:"{\"text\":\"Planes\",\"color\":\"dark_gray\",\"bold\":\"true\"}",Text3:"{\"text\":\"Players: 2-\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 1000\"},\"extra\":[{\"score\":{\"name\":\"liczbaGraczy\",\"objective\":\"ustawienia\"}}]}"} destroy

# Ustawienie zalecanego trybu dla danej mapy
function boom:lobby/option/recommended_preset

# Ustawienia ostrzeżenia o mapie Apocalypse
setblock 1 66 -14 minecraft:air
execute if score mapa ustawienia matches 4 run setblock 1 66 -14 minecraft:dark_oak_wall_sign[facing=south]{Text1:'{"text":"WARNING!","color":"dark_red","bold":"true"}',Text2:'{"text":"Map only for","color":"yellow"}',Text3:'{"text":"experienced","color":"yellow"}',Text4:'{"text":"players!","color":"yellow"}'} destroy