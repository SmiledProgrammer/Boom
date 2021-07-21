#######################################################
# Projekt: Boom                                       #
# Autor: Szinton                                      #
# Funkcja: Rozpoczyna odliczanie czasu do startu gry. #
#######################################################

# Usunięcie guzika (aby uniemożliwić ponowny start gry)
setblock 0 66 14 minecraft:air

# Ustawienie czasu do gry
scoreboard players set licznikStartu timerArmorStanda 5

# Rozpoczęcie odliczania
function boom:game/start/countdown