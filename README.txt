!! A pasta BD é responsável pela ligação com a base de dados, para vê-la é preciso fazer download do ficheiro ZIP

---------------------------------- Instalar node -----------------------------------------
O projeto usa a versão V22.13.1 do node.js.
Para instalar o node no seu computador, precisa de : 
    - Ir a https://nodejs.org/pt/download e instalar a versão V22.13.1(LTS);
    - Executar o seguinte comando no cmd : node -v .




---------------------------------- Iniciar projeto -----------------------------------------

Para iniciar projeto deve fazer no terminal 
 - cd BD
 - node index.js

De seguida deve clicar em http://localhost:3001 com Ctrl + botao direito do rato.

---------------------------------- Backend -----------------------------------------------

A pasta responsável pelo backend é a pasta "BD".
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


---------------------------------- Frontend -----------------------------------------------
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

Dentro da pasta Base_de_dados está a base de dados MySQL

O projeto usa vue.js importado no w3schools : https://www.w3schools.com/vue/vue_intro.php 

---------------------------------- POR A BASE DE DADOS NO SEU PC -----------------------------------------------

Para por a base de dados no seu pc deve instalar MySQL Workbench atravez do seguinte link: 
https://dev.mysql.com/downloads/workbench/

Depois de instalado deve ir a pasta BD, de seguida clicar no ficheiro db.js e subestituir o seguindo codigo pelas credenciais do computador:
const connection = mysql.createConnection({
    host: 'localhost',       // Define o endereço do servidor de banco de dados
    user: '',                // Define o nome de utilizador para conexão
    password: '',            // Define a palavra-passe do banco de dados(se tiver)
    database: 'pap',         // Define o nome do banco de dados a ser utilizado
});
