#############################################
# Projekt: Boom                             #
# Autor: Szinton                            #
# Funkcja: Ustawia lobby pod grę drużynową. #
#############################################

setblock 2 64 7 minecraft:blue_wool
setblock -2 64 7 minecraft:red_wool

summon minecraft:armor_stand 2 66 7 {Tags:["druzynowy"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Blue\",\"color\":\"blue\",\"italic\":\"true\"}]"}

summon minecraft:armor_stand -2 66 7 {Tags:["druzynowy"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"Red\",\"color\":\"red\",\"italic\":\"true\"}]"}

function boom:lobby/option/balance_lives