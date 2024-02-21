arquivo = open("dados.txt", "r")

conteudo = arquivo.readline()

print("Tipo do conteúdo:", type(conteudo))

print("Conteúdo retornado pelo readline:")
print(repr(conteudo))

proximo_conteudo = arquivo.readline()

print("Próximo Conteúdo retornado:")
print(repr(proximo_conteudo))

arquivo.close()
