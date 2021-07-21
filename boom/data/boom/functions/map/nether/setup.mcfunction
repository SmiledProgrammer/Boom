################################################################
# Projekt: Boom                                                #
# Autor: Szinton                                               #
# Funkcja: Ustawia wszystkie ustawienia i AEC na mapie Nether. #
################################################################

# Info o Autorze
title @a[tag=wgrze] subtitle {"text":"Map's Creators: Tesla's Crew and Zosiek","color":"yellow"}

# Ustawienie ilości spawnów
scoreboard players set liczbaSpawnow ustawienia 7

# Wczytanie koniecznych chunków na mapie
forceload add 9000 0
forceload add 8800 -200

forceload add 9021 -2
forceload add 9015 -16
forceload add 9001 -27
forceload add 8986 -12
forceload add 8983 11
forceload add 8997 22
forceload add 9012 16

forceload add 9010 4
forceload add 8995 -6
forceload add 8997 5

# Area Effect Cloud Środka Mapy i Rogu Przepaści
summon minecraft:area_effect_cloud 9000 120 0 {Tags:["centrumMapy","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 8800 0 -200 {Tags:["rogPrzepasciMapy","notbomb"],Duration:214783647}

# Area Effect Cloud'y Spawnów
summon minecraft:area_effect_cloud 9021 106 -2 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[90f,0f]}
summon minecraft:area_effect_cloud 9015 110 -16 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[45f,0f]}
summon minecraft:area_effect_cloud 9001 106 -27 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[0f,0f]}
summon minecraft:area_effect_cloud 8986 114 -12 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-45f,0f]}
summon minecraft:area_effect_cloud 8983 106 11 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-135f,0f]}
summon minecraft:area_effect_cloud 8997 106 22 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 9012 107 16 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[135f,0f]}

# Area Effect Cloud'y Power Up'ów
summon minecraft:area_effect_cloud 9010 111 4 {Tags:["powerup","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 8995 110 -6 {Tags:["powerup","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 8997 110 5 {Tags:["powerup","notbomb"],Duration:214783647}