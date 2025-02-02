---------------------------------- Iniciar projeto -----------------------------------------

Para iniciar projeto deve fazer no terminal 
 - cd backend
 - node index.js

De seguida deve clicar em http://localhost:3001 com Ctrl + botao direito do rato.

---------------------------------- Backend -----------------------------------------------

A pasta responsável pelo backend é a pasta "backend".
No ficheiro db.js é a ligação com base de dados.
No ficheiro index.js é responsável por :

    - Importar Modulos : 
        -express : Framework para criar servidores HTTP;
        -path : Facilita a manipulação de caminhos de ficheiros;
        -body-parser :  Analisa os dados enviados no corpo das requisições (formulários);
        -cors : Permite requisições de origens diferentes (necessário para frontend e backend em domínios diferentes);
        -db : Módulo para conexão com a base de dados;
        -jsonwebtoken (jwt) : Gera e verifica tokens de autenticação seguros.
    
    - Configuração do Servidor :
        - Porta configurada: 3001
        - Middleware ativo :
            -cors : Libera acesso CORS;
            - bodyParser.json(): Analisa requisições com JSON no corpo.
        
    - Redirecionamentos e Servir Ficheiros Estáticos :
        -Rota principal "/" : Redireciona para a pagina inicial ;
        -Servir ficheiros estáticos com express.static, direcionado ao diretório ../frontend.
    
    -A função verificarToken:
        -Verifica se o token JWT está presente no cabeçalho da requisição.
        -Decodifica e valida o token.
        -Caso válido, adiciona os dados do usuário ao objeto req para uso futuro.
        -Caso inválido ou ausente, retorna um erro HTTP apropriado.


---------------------------------- Backend -----------------------------------------------
