##########################################################################
# Projekt: Boom                                                          #
# Autor: Szinton                                                         #
# Funkcja: Rekurencyjna; Daje wygraną graczowi z największą ilością żyć. #
##########################################################################

# Obniżenie poszukiwanej ilości żyć
scoreboard players remove szukanaIloscZyc spawn 1

# Zliczenie graczy z szukaną ilością żyć
scoreboard players set graczeZSzukanaIlosciaZyc spawn 0
execute as @a[tag=wgrze] if score @s zycia = szukanaIloscZyc spawn run scoreboard players add graczeZSzukanaIlosciaZyc spawn 1

# Remis, jeśli nikt nie przeżył
execute if score szukanaIloscZyc spawn matches 0 run function boom:game/end/ffa_tie

# Wygrana dla gracza z największą ilością żyć
execute if score szukanaIloscZyc spawn matches 1.. if score graczeZSzukanaIlosciaZyc spawn matches 1 as @a[tag=wgrze] if score @s zycia = szukanaIloscZyc spawn run function boom:game/end/ffa

# Wygrana dla kilku graczy z największą ilością żyć
execute if score szukanaIloscZyc spawn matches 1.. if score graczeZSzukanaIlosciaZyc spawn matches 2.. as @a[tag=wgrze] if score @s zycia = szukanaIloscZyc spawn run function boom:game/end/ffa_tie

# Wywołanie funkcji jeszcze raz z niższą szukaną wartością
execute if score szukanaIloscZyc spawn matches 1.. if score graczeZSzukanaIlosciaZyc spawn matches 0 run function boom:game/end/ffa_find_most_lives