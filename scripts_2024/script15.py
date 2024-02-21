with open("dados13.txt", "r") as arquivo:
    texto = arquivo.read()
    contador = texto.count("Olá")
    print("Total de Olás = ", contador)
