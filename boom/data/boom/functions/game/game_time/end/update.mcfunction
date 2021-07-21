###########################################
# Projekt: Boom                           #
# Autor: Szinton                          #
# Funkcja: Zarządza bossbar'em czasu gry. #
###########################################

# Efekt nagłej śmierci
function boom:game/game_time/sudden_death/execute

execute if score czasGry licznikAFK matches 0.. run scoreboard players remove czasGry licznikAFK 1
execute store result bossbar minecraft:czas_gry value run scoreboard players get czasGry licznikAFK
function boom:game/game_time/end/update_name