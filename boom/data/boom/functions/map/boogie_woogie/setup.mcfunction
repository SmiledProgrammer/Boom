#######################################################################
# Projekt: Boom                                                       #
# Autor: Szinton                                                      #
# Funkcja: Ustawia wszystkie ustawienia i AEC na mapie Boogie Woogie. #
#######################################################################

# Info o Autorze
title @a[tag=wgrze] subtitle {"text":"Map's Creator: Szinton","color":"yellow"}

# Ustawienie ilości spawnów
scoreboard players set liczbaSpawnow ustawienia 8

# Wczytanie koniecznych chunków na mapie
forceload add 1000 0
forceload add 800 -200

forceload add 971 0
forceload add 1000 -29
forceload add 1000 29
forceload add 1029 0
forceload add 986 -14
forceload add 986 14
forceload add 1014 -14
forceload add 1014 14

forceload add 995 -5
forceload add 995 5
forceload add 1005 -5
forceload add 1005 5

# Area Effect Cloud Środka Mapy i Rogu Przepaści
summon minecraft:area_effect_cloud 1000 120 0 {Tags:["centrumMapy","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 800 0 -200 {Tags:["rogPrzepasciMapy","notbomb"],Duration:214783647}

# Area Effect Cloud'y Spawnów
summon minecraft:area_effect_cloud 971 111 0 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-90f,0f]}
summon minecraft:area_effect_cloud 1000 111 -29 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[0f,0f]}
summon minecraft:area_effect_cloud 1000 111 29 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 1029 111 0 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[90f,0f]}
summon minecraft:area_effect_cloud 986 111 -14 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-45f,0f]}
summon minecraft:area_effect_cloud 986 111 14 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-135f,0f]}
summon minecraft:area_effect_cloud 1014 111 -14 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[45f,0f]}
summon minecraft:area_effect_cloud 1014 111 14 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[135f,0f]}

# Area Effect Cloud'y Power Up'ów
summon minecraft:area_effect_cloud 995 101 -5 {Tags:["powerup","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 995 101 5 {Tags:["powerup","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 1005 101 -5 {Tags:["powerup","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 1005 101 5 {Tags:["powerup","notbomb"],Duration:214783647}