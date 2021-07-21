######################################
# Projekt: Boom                      #
# Autor: Szinton                     #
# Funkcja: Stawia tabliczki w lobby. #
######################################

# Stawianie tabliczek opcji
function boom:lobby/option/day
function boom:lobby/option/settings_preset
function boom:lobby/option/antiafk
function boom:lobby/option/lives_on_start
function boom:lobby/option/gamemode
function boom:lobby/option/max_bombs
function boom:lobby/option/bow
execute if score tryb ustawienia matches 1 run function boom:lobby/option/balance_lives
function boom:lobby/option/powerups

function boom:lobby/option/map
function boom:lobby/option/recommended_preset

# Stawianie tabliczki losowej mapy
setblock -1 66 -14 minecraft:dark_oak_wall_sign[facing=south]{Text2:'{"text":"[Random Map]","color":"blue","bold":"true"}',Text4:'{"text":"Click to set","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"/trigger tabliczkaKlik set 1001"}}'} destroy

# Stawianie tabliczki "Jak grać?"
setblock 0 65 14 minecraft:birch_wall_sign[facing=north]{Text1:"{\"text\":\"===============\",\"color\":\"gold\"}",Text2:"{\"text\":\"How to play?\",\"color\":\"red\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger tabliczkaKlik set 10000\"}}",Text3:"{\"text\":\"[click]\",\"color\":\"yellow\"}",Text4:"{\"text\":\"===============\",\"color\":\"gold\"}"} destroy