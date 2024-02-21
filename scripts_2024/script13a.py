with open("dados13.txt", "r") as arquivo:
    print("Representação original da linha")
    for linha in arquivo:
        print(repr(linha))
