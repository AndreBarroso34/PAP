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
Na pasta ajuda está a ajuda toda sem ser preiciso conta.

Dentro da pasta Ajuda está :
    - ajuda.html que é responsável por mostrar a pagina ;
    - corpo.css responsável pelo design;
    - ajuda.css responsável pelo disign no texto dos serviços;

    -Dentro das pastas branqueamento, dentisteria, endodontria, Implantologia, Ortodontia, periodontologia há arquivos .html que explicam o que é cada serviço e dizem os cuidados
        que o utilizador deve ter após cada tratamento.


Na pasta assistentes está tudo o que está relacionado com as assistentes.

Dentro da pasta assistentes está : 
    - a pasta ajuda : 
        - ajuda.html que é responsável por mostrar a pagina ;
        -Dentro das pastas branqueamento, dentisteria, endodontria, Implantologia, Ortodontia, periodontologia há arquivos .html que explicam o que é cada serviço e dizem os cuidados
            que o utilizador deve ter após cada tratamento.
    
    - a pasta Paginainicial com paginainical.html, que é o html do site, e paginainical.css, que é responsável pelo design ;
    - a pasta Paginainicial2 é o sistema de marcar consultas e ver as consultas de cada medica e utilizador;
    - a pasta Perfil é o sistema de perfil, onde é possivel mudar a palavra-pass e terminar sessão.

Dentro da pasta medico está : 
    - a pasta ajuda : 
        - ajuda.html que é responsável por mostrar a pagina ;
        -Dentro das pastas branqueamento, dentisteria, endodontria, Implantologia, Ortodontia, periodontologia há arquivos .html que explicam o que é cada serviço e dizem os cuidados
            que o utilizador deve ter após cada tratamento.
    
    - a pasta Paginainicial com paginainical.html, que é o html do site, e paginainical.css, que é responsável pelo design ;
    - a pasta consultas é o sistema de ver as consultas do proprio medico;
    - a pasta Perfil é o sistema de perfil, onde é possivel mudar a palavra-pass e terminar sessão.

Dentro da pasta medico está : 
    - a pasta ajuda : 
        - ajuda.html que é responsável por mostrar a pagina ;
        -Dentro das pastas branqueamento, dentisteria, endodontria, Implantologia, Ortodontia, periodontologia há arquivos .html que explicam o que é cada serviço e dizem os cuidados
            que o utilizador deve ter após cada tratamento.
    
    - a pasta Paginainicial com paginainical.html, que é o html do site, e paginainical.css, que é responsável pelo design ;
    - a pasta marcarconsulta é o sistema de pedir para marcar uma consulta;
    - a pasta Perfil é o sistema de perfil, onde é possivel mudar a palavra-pass e terminar sessão.

Dentro da pasta login é o sistema de iniciar sessão e tem : 
    - login.html que é responsável por html;
    - login.css que é responsável pelo design.

Dentro da pasta signup é o sistema de criar conta e tem : 
    - signup.html que é responsável por html;
    - signup.css que é responsável pelo design.

Dentro da pasta paginainical é sistema da página inical sem ter sessão iniciada e tem : 
    -paginaInicial.html que é responsável por html;
    -paginainicial.css que é responsável pelo design.

Dentro da pasta IMG tem duas subpastas : 
    -Fotos que contem as fotos usadas;
    -LOGOS  que contem os logos usados

Dentro da pasta HEADER tem header.css que é responsável pelo o design do header.