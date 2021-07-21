################################################
# Projekt: Boom                                #
# Autor: Szinton                               #
# Funkcja: Zarządza grą (update co 20 ticków). #
################################################

schedule function boom:game/play20t 20t

# Update zbroi
execute as @a[tag=wgrze,team=niebiescy,tag=!niewidzialny] run function boom:game/inventory/armor_blue/check
execute as @a[tag=wgrze,team=czerwoni,tag=!niewidzialny] run function boom:game/inventory/armor_red/check

# Zarządzanie bossbar'em czasu gry
execute if score stanLicznikaCzasuGry licznikAFK matches 0 run function boom:game/game_time/update
execute if score stanLicznikaCzasuGry licznikAFK matches 1 run function boom:game/game_time/sudden_death/update
execute if score stanLicznikaCzasuGry licznikAFK matches 2 run function boom:game/game_time/end/update