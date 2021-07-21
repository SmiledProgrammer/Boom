##################################
# Projekt: Boom                  #
# Autor: Szinton                 #
# Funkcja: Daje power up miecza. #
##################################

give @s minecraft:iron_sword{Enchantments:[{id:"minecraft:knockback",lvl:20}],Damage:246,HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_speed",Slot:"mainhand",Name:"attack_speed",Operation:0,Amount:1000.0d,UUID:[I;1,2,3,4]}],display:{Name:"[{\"text\":\"Infinity Sword\",\"color\":\"yellow\",\"italic\":\"false\",\"bold\":\"true\"}]"}}

tellraw @a {"text":"","color":"aqua","extra":[{"text":"[POWER UP] ","color":"gold","bold":"true"},{"selector":"@s"},{"text":" has got the "},{"text":"Infinity Sword","color":"yellow","bold":"true"},{"text":"!"}]}