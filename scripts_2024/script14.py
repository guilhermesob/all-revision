with open("dados13.txt", "r") as arquivo:
    print("Total de linhas no arquivo")
    contador = 0
    for linha in arquivo:
        if linha:
            contador += 1
    print("Total = ", contador)

print()

with open("dados13.txt", "r") as arquivo:
    print("Total REAL de linhas no arquivo")
    contador = 0
    for linha in arquivo:
        if linha.strip():
            contador += 1
    print("Total real = ", contador)
