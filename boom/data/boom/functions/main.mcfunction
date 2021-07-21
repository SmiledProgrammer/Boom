########################################################
# Projekt: Boom                                        #
# Autor: Szinton                                       #
# Funkcja: Główna - uruchamiana raz na każdy tick gry. #
########################################################

# Obsługiwanie powracających graczy
execute as @a if score @s wyjscia matches 1.. run function boom:leave

# Update lobby
execute unless entity @a[tag=wgrze] run function boom:lobby/update

# Update gry
execute if score czasGry licznikAFK matches -1.. run function boom:game/play

# Zabijanie itemów leżących na ziemi
kill @e[type=item]