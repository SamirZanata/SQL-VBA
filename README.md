**Exportação de Tabelas de Banco de Dados SQL Server para CSV**

Este repositório contém um script em batch para exportar tabelas de um banco de dados SQL Server para arquivos CSV, juntamente com um exemplo de código VBA para processar os dados CSV no Excel.

**Requisitos**

1. **SQL Server**: Certifique-se de ter acesso a um servidor SQL Server com o banco de dados que deseja exportar.
1. **SQLCMD**: A ferramenta de linha de comando **sqlcmd** deve estar instalada e disponível no PATH do sistema.
1. **Windows**: O script foi desenvolvido para ser executado em sistemas operacionais Windows.

**Configuração e Execução**

**1. Configurar o Script**

Salve o script bat em um arquivo com a extensão **.bat**, por exemplo, **export\_tables.bat**.

**2. Configurar Credenciais e Parâmetros**

- **server**: Substitua **SEU\_SERVIDOR** pelo nome do servidor onde o banco de dados está hospedado.
- **database**: Substitua **SEU\_BANCO\_DE\_DADOS** pelo nome do banco de dados que deseja exportar.
- **username**: Substitua **SEU\_USUARIO** pelo nome de usuário que possui acesso ao banco de dados.
- **password**: Altere **admin** pela senha correspondente ao usuário.
- **output\_folder**: Defina o caminho onde os arquivos CSV exportados serão salvos.

**3. Executar o Script**

1. Abra o Prompt de Comando (cmd) como Administrador.
1. Navegue até o diretório onde o script **.bat** está salvo.
1. Execute o script digitando o nome do arquivo:


**Código VBA para Processamento dos Dados CSV**

O código VBA a seguir pode ser usado para importar e processar os dados dos arquivos CSV no Excel.

**Instruções para o VBA**

1. Abra o Excel.
1. Pressione **Alt + F11** para abrir o Editor do VBA.
1. Insira um novo módulo (**Inserir > Módulo**).
1. Copie e cole o código VBA acima no módulo.
1. Altere o valor da variável **csvPath** para o caminho onde os arquivos CSV estão salvos.
1. Feche o Editor do VBA.
1. Para executar o script VBA, pressione **Alt + F8**, selecione **ImportCSV** e clique em **Executar**.

**Contribuições**

Sinta-se à vontade para abrir issues e pull requests para melhorias ou correções.

**Licença**

Este projeto está licenciado sob a licença MIT - veja o arquivo LICENSE para mais detalhes.

