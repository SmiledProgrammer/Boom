###########################################
# Projekt: Boom                           #
# Autor: Szinton                          #
# Funkcja: Sprawdza wygraną w trybie FFA. #
###########################################

# Zliczenie ilości żywych graczy
scoreboard players set gracze spawn 0
execute store result score gracze spawn if entity @a[tag=wgrze,scores={zycia=1..}]

# Zakończenie gry
execute if score czasGry licznikAFK matches -1 run function boom:game/end/ffa_out_of_time

execute if score gracze spawn matches 1 as @a[tag=wgrze,limit=1] if score @s zycia matches 1.. run function boom:game/end/ffa
execute if score gracze spawn matches 0 run function boom:game/end/ffa_tie