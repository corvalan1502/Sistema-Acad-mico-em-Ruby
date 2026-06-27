# 🎓 Sistema de Controle Acadêmico

**Nota:** Este projeto foi desenvolvido como trabalho final da disciplina de Programação WEB - Ruby on Rails, ministrada pelo Professor Dr. Constantino Augusto Dias Neto no Centro de Tecnologia e Urbanismo (CTU) da Universidade Estadual do Piauí (UESPI), sido feito em dupla por Rodrigo Berger e Inácio Barroso durante o Bloco 4.

## Sobre o projeto
O sistema consiste em uma aplicação web desenvolvida em Ruby on Rails para realizar o Controle Acadêmico. O objetivo é aplicar na prática os conceitos avançados do framework, incluindo uso de gems essenciais, validações e manipulação de arquivos.

### Funcionalidades Principais
O sistema implementa o ciclo de vida completo dos dados (CRUD), permitindo:
- Inserção de registros.
- Exclusão de registros.
- Consulta de registros.
- Alteração de registros.

**Recursos extras implementados:**
- **Autenticação:** Permite autenticação segura no sistema.
- **Paginação:** Criação de uma lista paginada para exibição de registros na tela.
- **Geração de PDF:** Permite gerar um arquivo PDF da listagem de tela de consulta.
- **Geração de CSV:** Na tela principal do APP, existe a funcionalidade de gerar um arquivo CSV com pelo menos 3 campos (como id, Aluno, idade).
- **Regras de Negócio:** O sistema conta com validações e associações entre os modelos.

## Entidades do Sistema
O banco de dados foi modelado para gerenciar o contexto escolar, possuindo pelo menos as seguintes 3 entidades principais:
- `Aluno`.
- `Disciplinas`.
- `Matrícula`.

## Tecnologias e Plugins Utilizados
- **Framework base:** Ruby on Rails.
- **Layout/Estilização:** Twitter Bootstrap, que permite desenvolver sites rapidamente e ter um layout profissional.
- **Gems Principais:**
  - `devise`: Para gerenciar a autenticação e login de usuários.
  - `kaminari`: Para a paginação das views.
  - `prawn`: Para a construção e exportação dos relatórios em PDF.

## Como executar o projeto

### Pré-requisitos
Certifique-se de ter o Ruby, o Rails e o gerenciador de pacotes Bundler instalados na sua máquina.

### Rodando a aplicação
```bash
# Clone este repositório
$ git clone [https://github.com/corvalan1502/Sistema-Acad-mico-em-Ruby.git](https://github.com/corvalan1502/Sistema-Acad-mico-em-Ruby.git)

# Acesse a pasta do projeto no terminal
$ cd Sistema-Acad-mico-em-Ruby

# Instale as dependências listadas no Gemfile
$ bundle install

# Configure o banco de dados
$rails db:create$ rails db:migrate

# Inicie o servidor local
$ rails server
