###########################################
# Projekt: Boom                           #
# Autor: Szinton                          #
# Funkcja: Tworzy spawn point'y na mapie. #
###########################################

# Resetowanie wszystkim graczom numeru ostatniego spawna
scoreboard players reset * spawn

# Ustawienie zmiennej respawnCounter na 0 (ta zmienna pomaga przy tworzeniu spawnów)
scoreboard players set respawnCounter spawn 0

# Wywołanie funkcji rekurencyjnej ustawiającej spawn point'y
function boom:respawn/set_respawn_points