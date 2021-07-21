##################################################
# Projekt: Boom                                  #
# Autor: Szinton                                 #
# Funkcja: Sprawdza wygraną w trybie Drużynowym. #
##################################################

# Zliczenie ilości żywych graczy z obydwu drużyn
execute store result score iloscCzerwonych spawn if entity @a[tag=wgrze,scores={zycia=1..},team=czerwoni]
execute store result score iloscNiebieskich spawn if entity @a[tag=wgrze,scores={zycia=1..},team=niebiescy]

# Zakończenie gry
execute if score czasGry licznikAFK matches -1 run function boom:game/end/teams_out_of_time

execute if score iloscCzerwonych spawn matches 0 unless score iloscNiebieskich spawn matches 0 run function boom:game/end/teams_blue
execute if score iloscNiebieskich spawn matches 0 unless score iloscCzerwonych spawn matches 0 run function boom:game/end/teams_red
execute if score iloscNiebieskich spawn matches 0 if score iloscCzerwonych spawn matches 0 run function boom:game/end/teams_tie