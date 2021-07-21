################################################################
# Projekt: Boom                                                #
# Autor: Szinton                                               #
# Funkcja: Wykonuje teleportację po wejściu w portal na mapie. #
################################################################

# Teleportacja na losowy spawn
tag @s add smierc
function boom:game/get_spawn_spot

# Zaznaczenie, że portal został uruchomiony
scoreboard players set portal timerArmorStanda 1