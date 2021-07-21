####################################################################
# Projekt: Boom                                                    #
# Autor: Szinton                                                   #
# Funkcja: Ustawia wszystkie ustawienia i AEC na mapie Elementals. #
####################################################################

# Info o Autorze
title @a[tag=wgrze] subtitle {"text":"Map's Creator: skalimeteor","color":"yellow"}

# Ustawienie ilości spawnów
scoreboard players set liczbaSpawnow ustawienia 9

# Wczytanie koniecznych chunków na mapie
forceload add 11000 0
forceload add 10800 -200

forceload add 11008 -35
forceload add 10979 -16
forceload add 10975 3
forceload add 10976 20
forceload add 11001 25
forceload add 10997 21
forceload add 11021 16
forceload add 11029 -4
forceload add 11029 -14

forceload add 11010 0
forceload add 11000 10
forceload add 10990 0
forceload add 11000 -10

# Area Effect Cloud Środka Mapy i Rogu Przepaści
summon minecraft:area_effect_cloud 11000 120 0 {Tags:["centrumMapy","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 10800 0 -200 {Tags:["rogPrzepasciMapy","notbomb"],Duration:214783647}

# Area Effect Cloud'y Spawnów
summon minecraft:area_effect_cloud 11008 108.125 -35 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[0f,0f]}
summon minecraft:area_effect_cloud 10979 116 -16 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-45f,0f]}
summon minecraft:area_effect_cloud 10975 108 3 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-90f,0f]}
summon minecraft:area_effect_cloud 10976 103 20 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-135f,0f]}
summon minecraft:area_effect_cloud 11001 99 25 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 10997 114 21 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 11021 103 16 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[135f,0f]}
summon minecraft:area_effect_cloud 11029 105 -4 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[90f,0f]}
summon minecraft:area_effect_cloud 11029 116 -14 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[45f,0f]}

# Area Effect Cloud'y Power Up'ów
summon minecraft:area_effect_cloud 11010 101 0 {Tags:["powerup","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 11000 101 10 {Tags:["powerup","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 10990 101 0 {Tags:["powerup","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 11000 101 -10 {Tags:["powerup","notbomb"],Duration:214783647}