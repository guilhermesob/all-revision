def extrair_linha(nome_do_arquivo):
    with open(nome_do_arquivo) as arquivo:
        for linha in arquivo:
            return linha
