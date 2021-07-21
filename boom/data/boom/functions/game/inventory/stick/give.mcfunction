############################################################
# Projekt: Boom                                            #
# Autor: Szinton                                           #
# Funkcja: Ustawia patyk w ekwipunku gracza w trakcie gry. #
############################################################

clear @s minecraft:stick
replaceitem entity @s hotbar.1 minecraft:stick{Enchantments:[{id:"minecraft:knockback",lvl:5}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_speed",Slot:"mainhand",Name:"attack_speed",Operation:0,Amount:1000.0d,UUID:[I;1,2,3,4]}],display:{Name:"[{\"text\":\"Infinity Stick\",\"color\":\"aqua\",\"italic\":\"false\"}]"}}