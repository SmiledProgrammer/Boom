########################################
# Projekt: Boom                        #
# Autor: Szinton                       #
# Funkcja: Sprawdza czy ktoś jest AFK. #
########################################

execute at @s[team=zwykly] if entity @a[tag=wgrze,distance=0.01..10] run scoreboard players set @s licznikAFK 0
execute at @s[team=niebiescy] if entity @a[tag=wgrze,distance=0.01..10,team=!niebiescy] run scoreboard players set @s licznikAFK 0
execute at @s[team=czerwoni] if entity @a[tag=wgrze,distance=0.01..10,team=!czerwoni] run scoreboard players set @s licznikAFK 0
execute unless score @s licznikAFK matches 0 run function boom:game/afk/check_motion
execute unless score @s licznikAFK matches 0 run function boom:game/afk/check_movement
function boom:game/afk/warning