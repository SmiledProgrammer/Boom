########################################
# Projekt: Boom                        #
# Autor: Szinton                       #
# Funkcja: Odlicza czas do startu gry. #
########################################

# Wyświetlenie powiadomienia o czasie pozostałym do startu
title @a title {"text":""}
title @a subtitle {"text":"","color":"green","extra":[{"text":"Game will start in "},{"score":{"name":"licznikStartu","objective":"timerArmorStanda"}},{"text":" seconds..."}]}

# Odjęcie czasu licznika
scoreboard players remove licznikStartu timerArmorStanda 1

# Rozpoczynanie gry, jeśli czas minął
execute if score licznikStartu timerArmorStanda matches -1 run schedule function boom:game/start/start 2t

# Zapętlenie funkcji, jeśli czas nie minął
execute if score licznikStartu timerArmorStanda matches 0.. run schedule function boom:game/start/countdown 1s

# Policzenie graczy na serwerze
execute store result score gracze ustawienia run execute if entity @a

# Sprawdzenie czy jest co najmniej dwóch graczy
execute if score gracze ustawienia matches ..1 run function boom:game/start/too_little_players

# Sprawdzenie czy w grze starczy miejsca dla wszystkich
execute if score gracze ustawienia > liczbaGraczy ustawienia run function boom:game/start/too_many_players

# Ustawienie odpowiedniego title, jeśli liczba graczy jest zła
execute if score gracze ustawienia matches ..1 run schedule function boom:game/start/cancel_countdown 1t
execute if score gracze ustawienia > liczbaGraczy ustawienia run schedule function boom:game/start/cancel_countdown 1t