##############################################
# Projekt: Boom                              #
# Autor: Szinton                             #
# Funkcja: Sprawdza czy mo�e si� zacz�� gra. #
##############################################

# Policzenie graczy na serwerze
execute store result score gracze ustawienia run execute if entity @a

# Sprawdzenie czy jest co najmniej dw�ch graczy
execute if score gracze ustawienia matches ..1 run function boom:game/start/too_little_players

# Sprawdzenie czy w grze starczy miejsca dla wszystkich
execute if score gracze ustawienia > liczbaGraczy ustawienia run function boom:game/start/too_many_players

# Rozpocz�cie odliczania, je�li liczba graczy jest w�a�ciwa
execute if score gracze ustawienia matches 2.. if score gracze ustawienia <= liczbaGraczy ustawienia run function boom:game/start/start_countdown