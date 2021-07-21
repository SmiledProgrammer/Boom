########################################
# Projekt: Boom                        #
# Autor: Szinton                       #
# Funkcja: Respawnuje żyjącego gracza. #
########################################

scoreboard players set @s licznikAFK 0

tag @s add smierc
function boom:game/get_spawn_spot

effect give @s minecraft:slowness 1 100 true

scoreboard players add @s tepyBezSmierci 1
execute if score @s tepyBezSmierci matches ..2 run tellraw @a {"text":"","color":"blue","extra":[{"selector":"@s"},{"text":" wasn't moving so he got respawned!"}]}
execute if score @s tepyBezSmierci matches 3.. run function boom:game/afk/remove_life