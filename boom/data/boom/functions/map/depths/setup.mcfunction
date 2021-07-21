################################################################
# Projekt: Boom                                                #
# Autor: Szinton                                               #
# Funkcja: Ustawia wszystkie ustawienia i AEC na mapie Depths. #
################################################################

# Info o Autorze
title @a[tag=wgrze] subtitle {"text":"Map's Creator: _Taoot","color":"yellow"}

# Ustawienie ilości spawnów
scoreboard players set liczbaSpawnow ustawienia 11

# Wczytanie koniecznych chunków na mapie
forceload add 10000 0
forceload add 9800 -200

forceload add 10031 -1
forceload add 10022 -17
forceload add 10023 -33
forceload add 10010 -39
forceload add 9990 -32
forceload add 9972 -18
forceload add 9969 2
forceload add 9980 28
forceload add 9998 28
forceload add 10014 32
forceload add 10022 20

forceload add 10007 0
forceload add 10000 7
forceload add 9993 0
forceload add 10000 -7

# Area Effect Cloud Środka Mapy i Rogu Przepaści
summon minecraft:area_effect_cloud 10000 120 0 {Tags:["centrumMapy","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 9800 0 -200 {Tags:["rogPrzepasciMapy","notbomb"],Duration:214783647}

# Area Effect Cloud'y Spawnów
summon minecraft:area_effect_cloud 10031 100 -1 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[90f,0f]}
summon minecraft:area_effect_cloud 10022 103.5 -17 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[45f,0f]}
summon minecraft:area_effect_cloud 10023 101 -33 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[45f,0f]}
summon minecraft:area_effect_cloud 10010 101 -39 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[0f,0f]}
summon minecraft:area_effect_cloud 9990 104 -32 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-15f,0f]}
summon minecraft:area_effect_cloud 9972 105 -18 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-45f,0f]}
summon minecraft:area_effect_cloud 9969 100 2 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-90f,0f]}
summon minecraft:area_effect_cloud 9980 102 28 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-135f,0f]}
summon minecraft:area_effect_cloud 9998 105 28 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 10014 102 32 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[150f,0f]}
summon minecraft:area_effect_cloud 10022 101.375 20 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[135f,0f]}

# Area Effect Cloud'y Power Up'ów
summon minecraft:area_effect_cloud 10007 101.5 0 {Tags:["powerup","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 10000 101.5 7 {Tags:["powerup","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 9993 101.5 0 {Tags:["powerup","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 10000 101.5 -7 {Tags:["powerup","notbomb"],Duration:214783647}