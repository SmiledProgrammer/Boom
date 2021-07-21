##########################################
# Projekt: Boom                          #
# Autor: Szinton                         #
# Funkcja: Respawnuje gracza po śmierci. #
##########################################

# Wiadomość czatowa o śmierci
execute if score @s zycia matches 2.. run tellraw @a {"text":"","color":"red","extra":[{"selector":"@s"},{"text":" has died! He has "},{"score":{"name":"@s","objective":"zycia"}},{"text":" lives left."}]}
execute if score @s zycia matches 1 run tellraw @a {"text":"","color":"red","extra":[{"selector":"@s"},{"text":" has died! He has "},{"score":{"name":"@s","objective":"zycia"}},{"text":" life left."}]}

# Wyczyszczenie itemów z power up'ów
clear @s minecraft:ender_pearl
clear @s minecraft:iron_sword
clear @s minecraft:crossbow

# Zrestartowanie ilości bomb
scoreboard players operation @s bomby = maxBomby ustawienia

# Wyłączenie knockbacka na 3 sekundy
function boom:game/death/no_knockback_set

# Wywołanie funkcji rekurencyjnej, która przeteleportuje gracza na wolne miejsce spawnu
execute at @s run function boom:game/get_spawn_spot

# Resetowanie limitu ilości teleportacji bez śmierci
scoreboard players set @s tepyBezSmierci 0

# Usuwanie taga pomocniczego
tag @s remove smierc