################################################################
# Projekt: Boom                                                #
# Autor: Szinton                                               #
# Funkcja: Ustawia wszystkie ustawienia i AEC na mapie Planes. #
################################################################

# Info o Autorze
title @a[tag=wgrze] subtitle {"text":"Map's Creator: Teszoq","color":"yellow"}

# Ustawienie ilości spawnów
scoreboard players set liczbaSpawnow ustawienia 8

# Wczytanie koniecznych chunków na mapie
forceload add 14000 0
forceload add 13800 -200

forceload add 13979 -22
forceload add 13979 23
forceload add 14027 30
forceload add 14027 -29
forceload add 14034 0
forceload add 14007 -34
forceload add 14007 35

forceload add 13998 0

# Area Effect Cloud Środka Mapy i Rogu Przepaści
summon minecraft:area_effect_cloud 14000 120 1.0 {Tags:["centrumMapy","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 13800 0 -200 {Tags:["rogPrzepasciMapy","notbomb"],Duration:214783647}

# Area Effect Cloud'y Spawnów
summon minecraft:area_effect_cloud 13979 116 -22 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-45f,15f]}
summon minecraft:area_effect_cloud 13979 116 23 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-135f,15f]}
summon minecraft:area_effect_cloud 14027 114 30 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[135f,15f]}
summon minecraft:area_effect_cloud 14027 114 -29 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[45f,15f]}
summon minecraft:area_effect_cloud 14034 118 1.0 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[90f,15f]}
summon minecraft:area_effect_cloud 14007 102 -34 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[0f,0f]}
summon minecraft:area_effect_cloud 14007 102 35 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 13977 107 1.0 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-90f,0f]}

# Area Effect Cloud'y Power Up'ów
summon minecraft:area_effect_cloud 13998.0 107 1.0 {Tags:["powerup","notbomb"],Duration:214783647}