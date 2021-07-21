###################################################
# Projekt: Boom                                   #
# Autor: Szinton                                  #
# Funkcja: Aktualizuje nazwę bossbar'a czasu gry. #
###################################################

scoreboard players operation czasGryMinuty licznikAFK = czasGry licznikAFK
scoreboard players operation czasGryMinuty licznikAFK /= szescdziesiat tabliczkaKlik
scoreboard players operation czasGrySekundy licznikAFK = czasGry licznikAFK
scoreboard players operation czasGrySekundy licznikAFK %= szescdziesiat tabliczkaKlik
execute if score czasGrySekundy licznikAFK matches 10.. run bossbar set minecraft:czas_gry name {"text":"Game End - ","color":"red","extra":[{"score":{"name":"czasGryMinuty","objective":"licznikAFK"}},{"text":":"},{"score":{"name":"czasGrySekundy","objective":"licznikAFK"}}]}
execute unless score czasGrySekundy licznikAFK matches 10.. run bossbar set minecraft:czas_gry name {"text":"Game End - ","color":"red","extra":[{"score":{"name":"czasGryMinuty","objective":"licznikAFK"}},{"text":":0"},{"score":{"name":"czasGrySekundy","objective":"licznikAFK"}}]}