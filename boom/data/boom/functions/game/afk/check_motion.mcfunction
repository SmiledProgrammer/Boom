######################################################
# Projekt: Boom                                      #
# Autor: Szinton                                     #
# Funkcja: Sprawdza czy gracz się rusza w powietrzu. #
######################################################

# Sprawdzanie ruchu gracza po osi Y
execute store result score @s ruchY run data get entity @s Motion[1] 100000
execute at @s if block ~ ~-1 ~ minecraft:air unless score @s ruchY matches -7841 run scoreboard players set @s licznikAFK 0