####################################################################
# Projekt: Boom                                                    #
# Autor: Szinton                                                   #
# Funkcja: Ustawia wszystkie ustawienia i AEC na mapie Apocalypse. #
####################################################################

# Info o Autorze
title @a[tag=wgrze] subtitle {"text":"Map's Creator: Lamps","color":"yellow"}

# Ustawienie ilości spawnów
scoreboard players set liczbaSpawnow ustawienia 11

# Wczytanie koniecznych chunków na mapie
forceload add 4000 0
forceload add 3800 -200

forceload add 4001 -47
forceload add 4019 -18
forceload add 4038 -1
forceload add 4008 23
forceload add 3986 19
forceload add 3978 -9
forceload add 3969 -15
forceload add 3988 -35
forceload add 4021 8
forceload add 3979 11
forceload add 3986 2

forceload add 4008 5
forceload add 4000 1
forceload add 4000 -20

# Area Effect Cloud Środka Mapy i Rogu Przepaści
summon minecraft:area_effect_cloud 4000 120 0 {Tags:["centrumMapy","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 3800 0 -200 {Tags:["rogPrzepasciMapy","notbomb"],Duration:214783647}

# Area Effect Cloud'y Spawnów
summon minecraft:area_effect_cloud 4001 140 -47 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[0f,45f]}
summon minecraft:area_effect_cloud 4019 111 -18 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[90f,0f]}
summon minecraft:area_effect_cloud 4038 135 -1 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[90f,45f]}
summon minecraft:area_effect_cloud 4008 113 23 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 3986 119 19 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-135f,0f]}
summon minecraft:area_effect_cloud 3978 114 -9 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-90f,0f]}
summon minecraft:area_effect_cloud 3969 96 -15 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-90f,0f]}
summon minecraft:area_effect_cloud 3988 96 -35 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[0f,0f]}
summon minecraft:area_effect_cloud 4021 83.5 8 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 3979 97 11 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-90f,0f]}
summon minecraft:area_effect_cloud 3986 144 2 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-90f,0f]}

# Area Effect Cloud'y Power Up'ów
summon minecraft:area_effect_cloud 4008 114 5 {Tags:["powerup","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 4000 100 1 {Tags:["powerup","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 4000 100 -20 {Tags:["powerup","notbomb"],Duration:214783647}