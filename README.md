# RF Online Register

Este é um sistema simples para registrar jogadores em servidores de RF Online, com integração a bancos de dados SQL Server. O projeto foi desenvolvido utilizando Ruby on Rails e oferece funcionalidades para gerenciar jogadores e exibir o status dos servidores de login e mundo do jogo.

## Funcionalidades

- **Registro de jogadores**: Permite registrar novos jogadores nos servidores RF Online.
- **Status dos servidores**: Exibe o status dos servidores de login e do servidor de mundo do game diretamente na página inicial.
- **Suporte a SQL Server**: Integra-se aos bancos de dados `RF_user` e `BILLING` (versão Roslaw) usando o SQL Server como banco de dados.

## Tecnologias Usadas

- **Ruby on Rails**: Framework web para desenvolvimento rápido e eficiente.
- **Bootstrap**: Utilizado para estilização através de CDN.
- **SQL Server**: Banco de dados utilizado para armazenar as informações dos jogadores.
- **Hotwire (Turbo + Stimulus)**: Para otimização da experiência do usuário com carregamento dinâmico de páginas.
- **TinyTDS e ActiveRecord SQL Server Adapter**: Gems usadas para a conexão com o SQL Server.

## Gemfile

As principais gems utilizadas no projeto incluem:

- `rails`: Framework principal do projeto (versão 8.0.2).
- `puma`: Servidor web utilizado.
- `propshaft`: Pipeline de assets.
- `importmap-rails`: Para gerenciar dependências JavaScript de forma moderna.
- `turbo-rails` e `stimulus-rails`: Para implementar a experiência SPA-like.
- `tiny_tds` e `activerecord-sqlserver-adapter`: Gems para conexão com SQL Server.
- `bootsnap`: Para melhorar o tempo de inicialização do aplicativo.
- `kamal`: Gem para deploy com Docker (opcional).

## Requisitos

- Ruby 3.x ou superior
- Rails 8.x ou superior
- SQL Server configurado

## Como Executar

1. **Configurar o banco de dados**

   Altere as configurações de conexão no arquivo `config/database.yml` para refletir as informações corretas do seu banco de dados SQL Server.

2. **Instalar as dependências**

   Execute o comando para instalar as gems necessárias:

   ```bash
   bundle install
   ```

3. **Rodar as migrações do banco de dados **

   Se o projeto já tiver migrações adicionais, execute:

   ```bash
   rails db:migrate
   ```
   caso contrário pule essa etapa.

4. **Executar o servidor**

   Para iniciar o servidor localmente, execute o comando padrão do Rails:

   ```bash
   rails server
   ```

5. **Acessar o aplicativo**

   Abra seu navegador e vá até `http://localhost:3000` para acessar o sistema.

## Visão Geral do Projeto

- **Home**: Exibe o status dos servidores de login e mundo do jogo, além de oferecer a funcionalidade de registro de novos jogadores.
- **Banco de Dados**: Utiliza o SQL Server e as bases `RF_user` e `BILLING` (versão Roslaw).
- **Interface**: A interface do usuário é simplificada e utiliza o Bootstrap via cdn para um design responsivo e moderno.

## Contribuindo

1. Faça um fork deste repositório.
2. Crie uma branch para suas mudanças (`git checkout -b feature/xyz`).
3. Commit suas alterações (`git commit -am 'Add feature xyz'`).
4. Envie para o repositório remoto (`git push origin feature/xyz`).
5. Abra um Pull Request.

## Licença

Fique à vontade para usar e contribuir caso deseje, licença MIT suave e tranquila !
---

