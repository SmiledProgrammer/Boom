################################################
# Projekt: Boom                                #
# Autor: Szinton                               #
# Funkcja: Rekurencyjna; Dodaje graczy do gry. #
################################################

execute as @a[tag=!wgrze] run function boom:game/start/add_player
scoreboard players add numer nrGracza 1

execute if score numer nrGracza < iloscGraczy licznikAFK run function boom:game/start/add_players