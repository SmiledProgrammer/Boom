#######################################
# Projekt: Boom                       #
# Autor: Szinton                      #
# Funkcja: Koniec czasu w trybie FFA. #
#######################################

# Wygrana dla gracza z największą ilością żyć lub remis, jeśli po tyle samo
scoreboard players operation szukanaIloscZyc spawn = iloscZycia ustawienia
scoreboard players add szukanaIloscZyc spawn 1
function boom:game/end/ffa_find_most_lives