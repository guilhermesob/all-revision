arquivo = open("dados.txt", "r")

print("Iterando sobre o arquivo")
for linha in arquivo:
    print(repr(linha))

arquivo.close()
