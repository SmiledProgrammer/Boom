#################################################################
# Projekt: Boom                                                 #
# Autor: Szinton                                                #
# Funkcja: Ustawia wszystkie ustawienia i AEC na mapie Planets. #
#################################################################

# Info o Autorze
title @a[tag=wgrze] subtitle {"text":"Map's Creator: smiertelny10","color":"yellow"}

# Ustawienie ilości spawnów
scoreboard players set liczbaSpawnow ustawienia 8

# Wczytanie koniecznych chunków na mapie
forceload add 12000 0
forceload add 11800 -200

forceload add 11967 2
forceload add 11980 -19
forceload add 11998 -26
forceload add 12018 -27
forceload add 12033 4
forceload add 12019 17
forceload add 11998 16
forceload add 11979 12

forceload add 11985 -5
forceload add 12000 0

# Area Effect Cloud Środka Mapy i Rogu Przepaści
summon minecraft:area_effect_cloud 12000 120 0 {Tags:["centrumMapy","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 11800 0 -200 {Tags:["rogPrzepasciMapy","notbomb"],Duration:214783647}

# Area Effect Cloud'y Spawnów
summon minecraft:area_effect_cloud 11967 103 2 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-90f,0f]}
summon minecraft:area_effect_cloud 11980 100 -19 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-45f,0f]}
summon minecraft:area_effect_cloud 11998 98 -26 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[0f,0f]}
summon minecraft:area_effect_cloud 12018 98 -27 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[45f,0f]}
summon minecraft:area_effect_cloud 12033 100 4 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[90f,0f]}
summon minecraft:area_effect_cloud 12019 101 17 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[135f,0f]}
summon minecraft:area_effect_cloud 11998 102 16 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 11979 100 12 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-135f,0f]}

# Area Effect Cloud'y Power Up'ów
summon minecraft:area_effect_cloud 11985 100 -5 {Tags:["powerup","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 12000 100 0 {Tags:["powerup","notbomb"],Duration:214783647}