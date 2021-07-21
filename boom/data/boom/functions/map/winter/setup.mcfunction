################################################################
# Projekt: Boom                                                #
# Autor: Szinton                                               #
# Funkcja: Ustawia wszystkie ustawienia i AEC na mapie Winter. #
################################################################

# Info o Autorze
title @a[tag=wgrze] subtitle {"text":"Map's Creator: TheTartanel007","color":"yellow"}

# Ustawienie ilości spawnów
scoreboard players set liczbaSpawnow ustawienia 8

# Wczytanie koniecznych chunków na mapie
forceload add 8000 0
forceload add 7800 -200

forceload add 8030 5
forceload add 8016 -7
forceload add 7995 -16
forceload add 7981 -6
forceload add 7979 14
forceload add 7993 27
forceload add 8017 28
forceload add 8027 5

forceload add 8003 15
forceload add 7999 -1

# Area Effect Cloud Środka Mapy i Rogu Przepaści
summon minecraft:area_effect_cloud 8000 120 0 {Tags:["centrumMapy","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 7800 0 -200 {Tags:["rogPrzepasciMapy","notbomb"],Duration:214783647}

# Area Effect Cloud'y Spawnów
summon minecraft:area_effect_cloud 8030 122 5 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[90f,0f]}
summon minecraft:area_effect_cloud 8016 108 -7 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[45f,0f]}
summon minecraft:area_effect_cloud 7995 106.25 -16 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[0f,0f]}
summon minecraft:area_effect_cloud 7981 102.375 -6 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-90f,0f]}
summon minecraft:area_effect_cloud 7979 102.125 14 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-135f,0f]}
summon minecraft:area_effect_cloud 7993 108.25 27 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 8017 110.25 28 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[135f,0f]}
summon minecraft:area_effect_cloud 8027 111 5 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[90f,0f]}

# Area Effect Cloud'y Power Up'ów
summon minecraft:area_effect_cloud 8003 109 15 {Tags:["powerup","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 7999 110 -1 {Tags:["powerup","notbomb"],Duration:214783647}