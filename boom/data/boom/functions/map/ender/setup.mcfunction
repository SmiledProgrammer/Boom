###############################################################
# Projekt: Boom                                               #
# Autor: Szinton                                              #
# Funkcja: Ustawia wszystkie ustawienia i AEC na mapie Ender. #
###############################################################

# Info o Autorze
title @a[tag=wgrze] subtitle {"text":"Map's Creator: Szinton","color":"yellow"}

# Reset portalu
forceload add 3000 0
forceload add 3000 -1
function boom:map/ender/reset_portal

# Ustawienie ilości spawnów
scoreboard players set liczbaSpawnow ustawienia 9

# Wczytanie koniecznych chunków na mapie
forceload add 3000 0
forceload add 2800 -200

forceload add 2974 5
forceload add 2998 21
forceload add 2985 22
forceload add 2973 18
forceload add 2982 -11
forceload add 3000 -21
forceload add 3022 -20
forceload add 3034 5
forceload add 3020 21

forceload add 3019 0

# Area Effect Cloud Środka Mapy i Rogu Przepaści
summon minecraft:area_effect_cloud 3000 120 0 {Tags:["centrumMapy","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 2800 0 -200 {Tags:["rogPrzepasciMapy","notbomb"],Duration:214783647}

# Area Effect Cloud'y Spawnów
summon minecraft:area_effect_cloud 2974 105 5 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-90f,0f]}
summon minecraft:area_effect_cloud 2998 108 21 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 2985 107 22 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 2973 113 18 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-135f,0f]}
summon minecraft:area_effect_cloud 2982 116 -11 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-45f,0f]}
summon minecraft:area_effect_cloud 3000 112 -21 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[0f,0f]}
summon minecraft:area_effect_cloud 3022 109 -20 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[45f,0f]}
summon minecraft:area_effect_cloud 3034 116 5 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[90f,0f]}
summon minecraft:area_effect_cloud 3020 113 21 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[135f,0f]}

# Area Effect Cloud Power Up'a
summon minecraft:area_effect_cloud 3019 107 0 {Tags:["powerup","notbomb"],Duration:214783647}