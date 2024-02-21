arquivo = open("dados.txt", "r")

conteudo = arquivo.read()

print("Tipo do conteúdo:", type(conteudo))

print("Conteúdo retornado pelo read:")
print(repr(conteudo))

arquivo.close()
