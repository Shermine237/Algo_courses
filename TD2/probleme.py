## Variables Globales
A=[]
B=[]
nb_points = 0

## 1- Ecrire une procédure Saisie permettant de ranger Np points dans les vecteurs A et B. 
def saisie(min_point, max_point):
    global A
    global B
    global nb_points

    nb_points = 0
    while (nb_points < min_point or nb_points > max_point):
        nb_points = int(input(f"Entrez le nombre de points (entre {min_point} et {max_point})): "))
    for i in range(1, nb_points+1):
        A.append(float(input(f"Entrez la valeur de X du point {i}: ")))
        B.append(float(input(f"Entrez la valeur de Y du point {i}: ")))
    print(f"A: {A}")
    print(f"B: {B}")


## 2- Ecrire une fonction PositionPoint permettant de retourner l’indice k de la première apparition du point de coordonnée (X, Y) tel que : (IndDebut ≤ K ≤ IndFin). Si le point  n’existe pas, la fonction retourne 0.
def positionPoint(x, y, indDebut, indFin):
    k = []
    for i in range(indDebut, indFin):
        if(A[i] == x and B[i] == y):
            k.append(i+1)
            print(f"La coordonnee ({x}, {y}) a pour indice k = {k}")
    return k


## 3- Ecrire une procédure SupPoint qui permet de supprimer le point d’indice IndElement. Indication : la suppression d’un point implique que l’on doit effectuer un décalage à gauche  de tous les points succédant le point supprimé ainsi que la réduction de la taille des tableaux A et B.
def supPoint(indElement):
    global A
    global B
    global nb_points

    A.pop(indElement -1)
    B.pop(indElement -1)
    nb_points = nb_points -1
    print(f"A: {A}")
    print(f"B: {B}")


## 4-  Ecrire une fonction Calcul qui permet de calculer l'aire a du polygone P
def calcul():
    part1 = (A[nb_points-1] + A[0])*(B[nb_points-1] - B[0])
    part2 = 0
    for i in range(1, nb_points-1):
        part2 + (A[i]+A[i+1])*(B[i]-B[i+1])
    part3 = part1 + part2
    if part3 < 0:
        part3 = part3 *(-1)
    aire = part3 /2
    print(f"L'aire = {aire}")
    return aire


## 5-  Ecrire l’algorithme AirePolygone
def airePolygone():
    # Saisir un entier n (3 ≤ n <= 100)
    # Remplir les tableaux PolyX et PolyY par les coordonnées de n point
    # (Les 2 actions ci sont executees dans la procedure saisie())
    saisie(min_point=3, max_point=100)
    # Supprimer les points qui se répètent
    for i in range(0, nb_points):
        liste_occurences = positionPoint(A[i-1], B[i-1], indDebut=0, indFin=nb_points)
        if len(liste_occurences) > 1:
            supPoint(i)
    # Calculer et afficher l'aire a du polygone P.
    calcul()

# Testons :)
airePolygone()