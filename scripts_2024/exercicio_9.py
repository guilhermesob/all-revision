with open("exercicio8.txt") as arquivo:
    contador = 0
    for linha in arquivo:
        if linha.strip():
            if linha.split(":")[1]:
                contador += 1
    print(contador)
