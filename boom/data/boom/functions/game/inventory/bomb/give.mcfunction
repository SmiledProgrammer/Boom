############################################################
# Projekt: Boom                                            #
# Autor: Szinton                                           #
# Funkcja: Ustawia bombę w ekwipunku gracza w trakcie gry. #
############################################################

clear @s minecraft:lingering_potion
execute if score @s bomby matches 1.. run replaceitem entity @s hotbar.0 minecraft:lingering_potion{CustomPotionEffects:[{Id:6,Amplifier:0,Duration:1,ShowParticles:0}],HideFlags:63,display:{Name:"[{\"text\":\"Bomb\",\"color\":\"red\",\"italic\":\"false\",\"bold\":\"true\"}]"}}
execute if score @s bomby matches 0 run replaceitem entity @s hotbar.0 minecraft:firework_star{HideFlags:63,display:{Name:"[{\"text\":\"You don't have more bombs!\",\"color\":\"yellow\",\"italic\":\"false\"}]"}}