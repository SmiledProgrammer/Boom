##############################################
# Projekt: Boom                              #
# Autor: Szinton                             #
# Funkcja: Sprawdza czy mo¿e siê zacz¹æ gra. #
##############################################

# Policzenie graczy na serwerze
execute store result score gracze ustawienia run execute if entity @a

# Sprawdzenie czy jest co najmniej dwóch graczy
execute if score gracze ustawienia matches ..1 run function boom:game/start/too_little_players

# Sprawdzenie czy w grze starczy miejsca dla wszystkich
execute if score gracze ustawienia > liczbaGraczy ustawienia run function boom:game/start/too_many_players

# Rozpoczêcie odliczania, jeœli liczba graczy jest w³aœciwa
execute if score gracze ustawienia matches 2.. if score gracze ustawienia <= liczbaGraczy ustawienia run function boom:game/start/start_countdown