###################################################################
# Projekt: Boom                                                   #
# Autor: Szinton                                                  #
# Funkcja: Ustawia wszystkie ustawienia i AEC na mapie Gold Mine. #
###################################################################

# Info o Autorze
title @a[tag=wgrze] subtitle {"text":"Map's Creator: Lukasz_anonim","color":"yellow"}

# Ustawienie ilości spawnów
scoreboard players set liczbaSpawnow ustawienia 11

# Wczytanie koniecznych chunków na mapie
forceload add 5000 0
forceload add 4800 -200

forceload add 4973 -21
forceload add 4984 -37
forceload add 5002 -22
forceload add 5023 -30
forceload add 5020 -2
forceload add 5024 21
forceload add 5013 14
forceload add 4987 24
forceload add 4970 17
forceload add 4978 1

forceload add 5000 0
forceload add 4988 -11

# Area Effect Cloud Środka Mapy i Rogu Przepaści
summon minecraft:area_effect_cloud 5000 120 0 {Tags:["centrumMapy","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 4800 0 -200 {Tags:["rogPrzepasciMapy","notbomb"],Duration:214783647}

# Area Effect Cloud'y Spawnów
summon minecraft:area_effect_cloud 4973 105 -21 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-90f,0f]}
summon minecraft:area_effect_cloud 4984 104 -37 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-45f,0f]}
summon minecraft:area_effect_cloud 5002 92 -22 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[0f,0f]}
summon minecraft:area_effect_cloud 5023 106 -30 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[45f,0f]}
summon minecraft:area_effect_cloud 5020 105 -2 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[90f,0f]}
summon minecraft:area_effect_cloud 5024 101 21 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[135f,0f]}
summon minecraft:area_effect_cloud 5013 97 14 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[90f,0f]}
summon minecraft:area_effect_cloud 4987 104 24 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 4970 100 17 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-135f,0f]}
summon minecraft:area_effect_cloud 4978 100 1 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-90f,0f]}
summon minecraft:area_effect_cloud 4973 110 -37 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-45f,0f]}

# Area Effect Cloud'y Power Up'ów
summon minecraft:area_effect_cloud 5000 100 0 {Tags:["powerup","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 4988 103 -11 {Tags:["powerup","notbomb"],Duration:214783647}