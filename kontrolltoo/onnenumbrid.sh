for arv in range(1000, 10000):
    algne_arv = arv
    summa = 0

    while arv > 0:
        summa += arv % 10
        arv //= 10

    while summa > 9:
        uus_summa = 0

        while summa > 0:
            uus_summa += summa % 10
            summa //= 10

        summa = uus_summa

    if summa == 7:
        print(algne_arv)
