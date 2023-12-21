def parfait(nombre):
    sum = 0
    for i in range(1, nombre):
        # on trouve ses diviseurs (Ceux dont le modulo est egal a 0) puis on les additionne
        if(nombre % i == 0):
            sum = sum + i
    if (sum == nombre):
        # on verrifie si la somme des diviseurs est egale au nombre lui-meme
        return True
    return False


def parfaits(nombre):
    nombres_parfaits = []
    for i in range(1, nombre):
        if parfait(i):
            nombres_parfaits.append(i)
    print(nombres_parfaits)

# Testons
parfaits(1000)