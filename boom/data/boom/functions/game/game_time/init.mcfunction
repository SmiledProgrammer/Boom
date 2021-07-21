########################################
# Projekt: Boom                        #
# Autor: Szinton                       #
# Funkcja: Inicjuje bossbar czasu gry. #
########################################

scoreboard players operation startowyCzasGry licznikAFK = stalaCzasuGry tabliczkaKlik
scoreboard players operation startowyCzasGry licznikAFK *= iloscZycia ustawienia
scoreboard players operation czasGry licznikAFK = startowyCzasGry licznikAFK

execute store result bossbar minecraft:czas_gry max run scoreboard players get startowyCzasGry licznikAFK
execute store result bossbar minecraft:czas_gry value run scoreboard players get startowyCzasGry licznikAFK
bossbar set minecraft:czas_gry color green
bossbar set minecraft:czas_gry players @a

function boom:game/game_time/update_default_name