########################################################
# Projekt: Boom                                        #
# Autor: Szinton                                       #
# Funkcja: Inicjuje bossbar czasu gry na nagłą śmierć. #
########################################################

bossbar set minecraft:czas_gry color red
function boom:game/game_time/sudden_death/update_name
scoreboard players set stanLicznikaCzasuGry licznikAFK 1