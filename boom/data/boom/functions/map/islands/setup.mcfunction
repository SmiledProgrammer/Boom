#################################################################
# Projekt: Boom                                                 #
# Autor: Szinton                                                #
# Funkcja: Ustawia wszystkie ustawienia i AEC na mapie Islands. #
#################################################################

# Info o Autorze
title @a[tag=wgrze] subtitle {"text":"Map's Creator: Szinton","color":"yellow"}

# Ustawienie ilości spawnów
scoreboard players set liczbaSpawnow ustawienia 11

# Wczytanie koniecznych chunków na mapie
forceload add 1000 0
forceload add 1800 -200

forceload add 1983 9
forceload add 1981 8
forceload add 2002 14
forceload add 2024 19
forceload add 2023 18
forceload add 2038 4
forceload add 2038 5
forceload add 2024 -21
forceload add 2025 -21
forceload add 2002 -17
forceload add 1984 -11

forceload add 2000 0
forceload add 2016 3
forceload add 2022 -2

# Area Effect Cloud Środka Mapy i Rogu Przepaści
summon minecraft:area_effect_cloud 2000 120 0 {Tags:["centrumMapy","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 1800 0 -200 {Tags:["rogPrzepasciMapy","notbomb"],Duration:214783647}

# Area Effect Cloud'y Spawnów
summon minecraft:area_effect_cloud 1983 118 9 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-120f,0f]}
summon minecraft:area_effect_cloud 1981 130 8 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-120f,45f]}
summon minecraft:area_effect_cloud 2002 116 14 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 2024 108 19 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 2022 118 16 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[150f,0f]}
summon minecraft:area_effect_cloud 2038 108 4 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[90f,0f]}
summon minecraft:area_effect_cloud 2038 118 5 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[90f,0f]}
summon minecraft:area_effect_cloud 2024 103 -21 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[0f,0f]}
summon minecraft:area_effect_cloud 2025 111 -21 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[0f,0f]}
summon minecraft:area_effect_cloud 2002 116 -17 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[0f,0f]}
summon minecraft:area_effect_cloud 1984 109 -11 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-45f,0f]}

# Area Effect Cloud'y Power Up'ów
summon minecraft:area_effect_cloud 2000 106 0 {Tags:["powerup","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 2016 108 3 {Tags:["powerup","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 2022 107 -2 {Tags:["powerup","notbomb"],Duration:214783647}