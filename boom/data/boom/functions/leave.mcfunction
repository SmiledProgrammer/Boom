#########################################################
# Projekt: Boom                                         #
# Autor: Szinton                                        #
# Funkcja: Funkcja wykonywana dla powracającego gracza. #
#########################################################

scoreboard players set @s wyjscia 0

gamemode adventure @s
clear @s
effect clear @s
tp @s 0 65 0 0 0

tag @s remove wgrze
tag @s remove duringParkour
bossbar set minecraft:czas_gry players @s[distance=999999..]

function boom:powerup/remove_invisibility

title @s times 0 40 0