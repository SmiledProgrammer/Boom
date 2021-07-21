########################################################################
# Projekt: Boom                                                        #
# Autor: Szinton                                                       #
# Funkcja: Ustawia wszystkie ustawienia i AEC na mapie Flying Madness. #
########################################################################

# Info o Autorze
title @a[tag=wgrze] subtitle {"text":"Map's Creator: TheIQpl","color":"yellow"}

# Ustawienie ilości spawnów
scoreboard players set liczbaSpawnow ustawienia 10

# Wczytanie koniecznych chunków na mapie
forceload add 7000 0
forceload add 6800 -200

forceload add 6990 16
forceload add 6999 15
forceload add 6983 -3
forceload add 6997 -16
forceload add 7009 -13
forceload add 7018 -2
forceload add 7015 18
forceload add 7013 7

forceload add 6999 -1

# Area Effect Cloud Środka Mapy i Rogu Przepaści
summon minecraft:area_effect_cloud 7000 120 0 {Tags:["centrumMapy","notbomb"],Duration:214783647}
summon minecraft:area_effect_cloud 6800 0 -200 {Tags:["rogPrzepasciMapy","notbomb"],Duration:214783647}

# Area Effect Cloud'y Spawnów
summon minecraft:area_effect_cloud 6990 107 16 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-135f,0f]}
summon minecraft:area_effect_cloud 6999 98 15 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 6983 103 -3 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[-90f,0f]}
summon minecraft:area_effect_cloud 6997 108 -16 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[0f,0f]}
summon minecraft:area_effect_cloud 7009 106 -13 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[45f,0f]}
summon minecraft:area_effect_cloud 7018 103 -2 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[90f,0f]}
summon minecraft:area_effect_cloud 7015 110 18 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[135f,0f]}
summon minecraft:area_effect_cloud 7013 102 7 {Tags:["spawn","notbomb"],Duration:214783647,Rotation:[135f,0f]}

# Area Effect Cloud'y Power Up'ów
summon minecraft:area_effect_cloud 6999 100 -1 {Tags:["powerup","notbomb"],Duration:214783647}