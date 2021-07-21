#########################################
# Projekt: Boom                         #
# Autor: Szinton                        #
# Funkcja: Balansuje życia w drużynach. #
#########################################

scoreboard players operation zbalansowaneZycia ustawienia = iloscZycia ustawienia
scoreboard players operation zbalansowaneZycia ustawienia *= iloscNiebieskich spawn
scoreboard players operation zbalansowaneZycia ustawienia /= iloscCzerwonych spawn
scoreboard players operation zbalansowaneZycia ustawienia /= dwa tabliczkaKlik
scoreboard players add zbalansowaneZycia ustawienia 2
scoreboard players operation @a[team=czerwoni] zycia = zbalansowaneZycia ustawienia