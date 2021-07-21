#############################################################
# Projekt: Boom                                             #
# Autor: Szinton                                            #
# Funkcja: Wykonuje odliczanie do ponownego użycia portalu. #
#############################################################

setblock 3000 103 0 minecraft:air
setblock 3000 103 0 minecraft:oak_sign{Text1:'{"score":{"name":"licznikPortalu","objective":"timerArmorStanda"},"color":"yellow","bold":"true"}'}

data modify entity @e[type=minecraft:armor_stand,tag=portal,limit=1] CustomName set value ""
data modify entity @e[type=minecraft:armor_stand,tag=portal,limit=1] CustomName set from block 3000 103 0 Text1

scoreboard players remove licznikPortalu timerArmorStanda 1

execute if score licznikPortalu timerArmorStanda matches -1 run function boom:map/ender/reset_portal
execute if score licznikPortalu timerArmorStanda matches -1 run tellraw @a {"text":"The portal has opened again!","color":"light_purple"}

execute if score licznikPortalu timerArmorStanda matches 0.. run schedule function boom:map/ender/portal_cooldown 20t