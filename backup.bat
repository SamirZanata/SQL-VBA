@echo off

rem Credenciais para Conexão

rem Servidor de Hospedagem
set "server=*************************"

rem Qual banco de dados você quer exportar
set "database=***********************"

rem Username de acesso ao Banco
set "username=********"

rem Senha de Login do banco
set "password=admin"

rem Em qual pasta você quer salvar os arquivos exportados do banco
set "output_folder=C:\Users\..."

rem Faz as consultas nas tabelas de acordo com os parâmetros que passou lá em cima 
sqlcmd -S %server% -U %username% -P %password% -d %database% -h -1 -W -Q "SET NOCOUNT ON; SELECT name FROM sys.tables WHERE type_desc = 'USER_TABLE'" > tables.txt

rem Aqui lê o arquivo com os nomes das tabelas
for /F "delims=" %%t in (tables.txt) do (
    rem Exporte os dados da tabela, incluindo cabeçalhos das colunas e os dados
    (
        rem IMPORTANTE
        rem Aqui ele traz os nomes de cada coluna da tabela (Importante sem isso vem sem)
        for /F "tokens=*" %%c in ('sqlcmd -S %server% -U %username% -P %password% -d %database% -h -1 -W -Q "SET NOCOUNT ON; SELECT STRING_AGG(COLUMN_NAME, ''|'') FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = ''%%t'' GROUP BY TABLE_NAME"') do (
            echo %%c

            rem Exporta finalmente os dados da tabela com o separador que você definir (Geralmente eu uso espaço ou . ou - pra facilitar a exportação de CSV para Excel)
            sqlcmd -S %server% -U %username% -P %password% -d %database% -s "|" -W -h -1 -Q "SET NOCOUNT ON; SELECT * FROM %%t"
        )
    ) > "%output_folder%\%%t.csv"
)

rem Exclui o arquivo temporário com os nomes das tabelas
del tables.txt
