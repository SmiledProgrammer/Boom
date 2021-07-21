############################################################
# Projekt: Boom                                            #
# Autor: Szinton                                           #
# Funkcja: Dołącza do drużyny, w której jest mniej graczy. #
############################################################

# Dodawanie do drużyny z mniejszą ilością graczy
execute if score iloscCzerwonych spawn > iloscNiebieskich spawn run team join niebiescy @s
execute if score iloscCzerwonych spawn <= iloscNiebieskich spawn run team join czerwoni @s

# Zliczenie graczy w drużynach
execute store result score iloscCzerwonych spawn if entity @a[team=czerwoni]
execute store result score iloscNiebieskich spawn if entity @a[team=niebiescy]