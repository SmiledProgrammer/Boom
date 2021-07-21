###################################################################
# Projekt: Boom                                                   #
# Autor: Szinton                                                  #
# Funkcja: Ustawia wszystkie ustawienia i AEC na mapie Candyland. #
###################################################################

# Info o Autorze
title @a[tag=wgrze] subtitle {"text":"Map's Creator: Ekipa Tesli i Zosiek","color":"yellow"}

# Ustawienie ilości spawnów
scoreboard players set liczbaSpawnow ustawienia 8

# Wczytanie koniecznych chunków na mapie
forceload add 6000 0
forceload add 5800 -200

forceload add 5983 -6
forceload add 5981 1
forceload add 5984 6
forceload add 5995 23
forceload add 6014 19
forceload add 6029 1
forceload add 6017 -17
forceload add 5999 -21

forceload add 6000 6
forceload add 6002 -7
forceload add 6007 3

# Area Effect Cloud Środka Mapy i Rogu Przepaści
summon minecraft:area_effect_cloud 6000 120 0 {Tags:["centrumMapy","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 5800 0 -200 {Tags:["rogPrzepasciMapy","notbomb"],Duration:214783647}

# Area Effect Cloud'y Spawnów
summon minecraft:area_effect_cloud 5983 118 -6 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-90f,0f]}
summon minecraft:area_effect_cloud 5981 119 1 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-90f,0f]}
summon minecraft:area_effect_cloud 5984 116 6 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-90f,0f]}
summon minecraft:area_effect_cloud 5995 115 23 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 6014 115 19 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[135f,0f]}
summon minecraft:area_effect_cloud 6029 113 1 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[90f,0f]}
summon minecraft:area_effect_cloud 6017 113 -17 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[45f,0f]}
summon minecraft:area_effect_cloud 5999 109 -21 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[0f,0f]}

# Area Effect Cloud'y Power Up'ów
summon minecraft:area_effect_cloud 6000 107 6 {Tags:["powerup","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 6002 108 -7 {Tags:["powerup","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 6007 108 3 {Tags:["powerup","notbomb"],Duration:214783647}