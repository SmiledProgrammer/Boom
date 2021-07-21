#################################
# Projekt: Boom                 #
# Autor: Szinton                #
# Funkcja: Ustawia losową mapę. #
#################################

scoreboard players operation wynik rng *= stala rng
scoreboard players add wynik rng 12345
scoreboard players operation mapa ustawienia = wynik rng
scoreboard players operation mapa ustawienia %= iloscMap rng
scoreboard players add mapa ustawienia 1