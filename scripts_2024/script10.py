linhas = ["Conteúdo da primeira linha.",
          "\nConteúdo da segunda linha."]

arquivo_escrita = open("dados_writelines.txt", "w")
arquivo_escrita.writelines(linhas)
arquivo_escrita.close()
