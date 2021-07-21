###########################################
# Projekt: Boom                           #
# Autor: Szinton                          #
# Funkcja: Zarządza bossbar'em czasu gry. #
###########################################

scoreboard players remove czasGry licznikAFK 1
execute store result bossbar minecraft:czas_gry value run scoreboard players get czasGry licznikAFK
function boom:game/game_time/update_default_name

execute if score czasGry licznikAFK matches ..60 run schedule function boom:game/game_time/sudden_death/setup 1t