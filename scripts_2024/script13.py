with open("dados13.txt", "r") as arquivo:
    print("Representação original da linha")
    for linha in arquivo:
        print(repr(linha))

print()

with open("dados13.txt", "r") as arquivo:
    print("Representação da linha após strip")
    for linha in arquivo:
        linha_limpa = linha.strip()
        print(repr(linha_limpa))
