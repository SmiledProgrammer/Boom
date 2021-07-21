###########################################################################
# Projekt: Boom                                                           #
# Autor: Szinton                                                          #
# Funkcja: Odejmuje życie po zbyt dużej licznie teleportacji bez śmierci. #
###########################################################################

scoreboard players set @s tepyBezSmierci 0
scoreboard players remove @s zycia 1

tellraw @a {"text":"","color":"blue","extra":[{"selector":"@s"},{"text":" wasn't moving so he got respawned and lost "},{"text":"one life","color":"red"},{"text":"!"}]}

execute if score @s zycia matches 0 run function boom:game/death/permanent