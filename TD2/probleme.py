def saisie():
    global A
    global B
    global nb_points

    nb_points = int(input("Entrez le nombre de points: "))
    for i in range(1, nb_points+1):
        A.append(float(input(f"Entrez la valeur de X du point {i}: ")))
        B.append(float(input(f"Entrez la valeur de Y du point {i}: ")))
    print(f"A: {A}")
    print(f"B: {B}")


def positionPoint(x, y, indDebut, indFin):
    k = 0
    for i in range(indDebut, indFin):
        if(A[i] == x and B[i] == y):
            k = i+1
            print(f"La coordonnee ({x}, {y}) a pour indice k = {k}")
    return k


def supPoint(indElement):
    global A
    global B
    global nb_points

    A.pop(indElement -1)
    B.pop(indElement -1)
    nb_points = nb_points -1
    print(f"A: {A}")
    print(f"B: {B}")


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

# Testons
A=[]
B=[]
nb_points = 0

## 1- Ecrire une procédure Saisie permettant de ranger Np points dans les vecteurs A et B. 
saisie()

## 2- Ecrire une fonction PositionPoint permettant de retourner l’indice k de la première apparition du point de coordonnée (X, Y) tel que : (IndDebut ≤ K ≤ IndFin). Si le point  n’existe pas, la fonction retourne 0.
position_k = positionPoint(x=1.0, y=2.3, indDebut=0, indFin=nb_points)

## 3- Ecrire une procédure SupPoint qui permet de supprimer le point d’indice IndElement. Indication : la suppression d’un point implique que l’on doit effectuer un décalage à gauche  de tous les points succédant le point supprimé ainsi que la réduction de la taille des tableaux A et B. 
supPoint(indElement=2)

## 4-  Ecrire une fonction Calcul qui permet de calculer l'aire a du polygone P
calcul()

## 5- 