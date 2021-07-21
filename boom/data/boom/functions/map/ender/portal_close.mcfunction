##########################################################
# Projekt: Boom                                          #
# Autor: Szinton                                         #
# Funkcja: Zamyka portal po teleportacji na mapie Ender. #
##########################################################

# Zablokowanie portalu na 20 sekund
fill 3002 105 -2 2998 105 2 minecraft:bedrock

# Rozpoczęcie odliczania do ponownego otwarcia portalu
summon minecraft:armor_stand 3000 110.5 0 {Tags:["portal"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b}
scoreboard players set licznikPortalu timerArmorStanda 20
function boom:map/ender/portal_cooldown

# Info
tellraw @a {"text":"The portal has closed for 20 seconds!","color":"light_purple"}

# Reset zmiennej wywołującej funkcję
scoreboard players set portal timerArmorStanda 0