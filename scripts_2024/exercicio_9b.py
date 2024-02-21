import os

try:
    os.rmdir("diretorio")
except Exception as erro:
    print("Erro geral")
except OSError as erro:
    print("Erro de sistema")
except FileNotFoundError as erro:
    print("Diretório não encontrado")
