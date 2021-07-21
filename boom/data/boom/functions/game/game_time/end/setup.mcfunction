######################################################
# Projekt: Boom                                      #
# Autor: Szinton                                     #
# Funkcja: Inicjuje bossbar czasu gry na koniec gry. #
######################################################

scoreboard players set czasGry licznikAFK 60
execute store result bossbar minecraft:czas_gry max run scoreboard players get czasGry licznikAFK
execute store result bossbar minecraft:czas_gry value run scoreboard players get czasGry licznikAFK

function boom:game/game_time/end/update_name
scoreboard players set stanLicznikaCzasuGry licznikAFK 2

execute as @a at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1.5