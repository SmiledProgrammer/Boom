##########################################################
# Projekt: Boom                                          #
# Autor: Szinton                                         #
# Funkcja: Ustawia łuk w ekwipunku gracza w trakcie gry. #
##########################################################

clear @s minecraft:bow
replaceitem entity @s hotbar.2 minecraft:bow{Unbreakable:1b,Enchantments:[{id:"minecraft:punch",lvl:50},{id:"minecraft:infinity",lvl:1}],HideFlags:63,display:{Name:"[{\"text\":\"Infinity Bow\",\"color\":\"aqua\",\"italic\":\"false\"}]"}}