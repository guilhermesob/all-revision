def extrair_linha(nome_do_arquivo):
    with open(nome_do_arquivo) as arquivo:
        linhas = arquivo.read()
        for linha in linhas:
            return linha
