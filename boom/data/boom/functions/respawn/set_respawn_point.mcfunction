########################################################
# Projekt: Boom                                        #
# Autor: Szinton                                       #
# Funkcja: Ustawia nowy punkt respawnu na miejscu AEC. #
########################################################

# Skopiowanie wyniku zmiennej respawnCounter do wyniku danego AEC spawnowego / Przydzielenie numeru spawnu do AEC spawnowego
execute store result score @s spawn run scoreboard players get respawnCounter spawn

# Oznaczenie, że AEC ma już przydzielony numer spawnu
tag @s add respawnSet