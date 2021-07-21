################################################################
# Projekt: Boom                                                #
# Autor: Szinton                                               #
# Funkcja: Ustawia wszystkie ustawienia i AEC na mapie Desert. #
################################################################

# Info o Autorze
title @a[tag=wgrze] subtitle {"text":"Map's Creator: Michalo_01","color":"yellow"}

# Ustawienie ilości spawnów
scoreboard players set liczbaSpawnow ustawienia 6

# Wczytanie koniecznych chunków na mapie
forceload add 13000 0
forceload add 12800 -200

forceload add 12982 9
forceload add 12987 -12
forceload add 13006 -26
forceload add 13020 -8
forceload add 13017 12
forceload add 13001 19

forceload add 13001 0

# Area Effect Cloud Środka Mapy i Rogu Przepaści
summon minecraft:area_effect_cloud 13000 120 0 {Tags:["centrumMapy","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 12800 0 -200 {Tags:["rogPrzepasciMapy","notbomb"],Duration:214783647}

# Area Effect Cloud'y Spawnów
summon minecraft:area_effect_cloud 12982 104 9 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-120f,0f]}
summon minecraft:area_effect_cloud 12987 107 -12 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-45f,0f]}
summon minecraft:area_effect_cloud 13006 109 -26 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[0f,0f]}
summon minecraft:area_effect_cloud 13020 102 -8 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[90f,0f]}
summon minecraft:area_effect_cloud 13017 111 12 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[135f,15f]}
summon minecraft:area_effect_cloud 13001 105 19 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[180f,0f]}

# Area Effect Cloud'y Power Up'ów
summon minecraft:area_effect_cloud 13001 104 0 {Tags:["powerup","notbomb"],Duration:214783647}