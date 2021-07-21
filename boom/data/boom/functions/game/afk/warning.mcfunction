########################################
# Projekt: Boom                        #
# Autor: Szinton                       #
# Funkcja: Respawnuje żyjącego gracza. #
########################################

scoreboard players remove @s licznikAFK 1
execute if score @s[nbt={FallDistance:0.0f}] licznikAFK matches ..-3 run function boom:game/afk/respawn
execute if score @s licznikAFK matches -2 run title @s title ""
execute if score @s licznikAFK matches -2 if score @s tepyBezSmierci matches ..1 run title @s subtitle {"text":"Move or you'll get respawned!","color":"yellow"}
execute if score @s licznikAFK matches -2 if score @s tepyBezSmierci matches 2.. run title @s subtitle {"text":"Move or you'll lose ","color":"yellow","extra":[{"text":"1 life","color":"red","bold":"true"},{"text":"!"}]}