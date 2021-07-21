###############################################
# Projekt: Boom                               #
# Autor: Szinton                              #
# Funkcja: Aktualizuje system anty-kamperski. #
###############################################

scoreboard players add licznikOdstepu licznikAFK 1
execute if score licznikOdstepu licznikAFK >= odstep licznikAFK run function boom:game/afk/next_player