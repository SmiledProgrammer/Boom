###########################################################################
# Projekt: Boom                                                           #
# Autor: Szinton                                                          #
# Funkcja: Sprawdza czy gracz, który jeszcze nie był sprawdzony jest AFK. #
###########################################################################

execute as @a[tag=wgrze] if score @s nrGracza = aktualny nrGracza run function boom:game/afk/check

scoreboard players add aktualny nrGracza 1
execute if score aktualny nrGracza >= iloscGraczy licznikAFK run scoreboard players set aktualny nrGracza 0

scoreboard players set licznikOdstepu licznikAFK 0