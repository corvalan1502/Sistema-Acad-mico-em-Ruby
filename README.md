# 🎓 Sistema de Controle Acadêmico

> [cite_start]**Nota:** Este projeto foi desenvolvido como trabalho final [cite: 2] [cite_start]da disciplina de Programação WEB - Ruby on Rails [cite: 1][cite_start], ministrada pelo Professor Dr. Constantino Augusto Dias Neto [cite: 1] [cite_start]no Centro de Tecnologia e Urbanismo (CTU) da Universidade Estadual do Piauí (UESPI)[cite: 1].

## 💻 Sobre o projeto
[cite_start]O sistema consiste em uma aplicação web desenvolvida em Ruby on Rails para realizar o Controle Acadêmico[cite: 33]. O objetivo é aplicar na prática os conceitos avançados do framework, incluindo uso de gems essenciais, validações e manipulação de arquivos.

### ⚙️ Funcionalidades Principais
[cite_start]O sistema implementa o ciclo de vida completo dos dados (CRUD)[cite: 22], permitindo:
- [cite_start]Inserção de registros[cite: 23].
- [cite_start]Exclusão de registros[cite: 24].
- [cite_start]Consulta de registros[cite: 25].
- [cite_start]Alteração de registros[cite: 26].

**Recursos extras implementados:**
- [cite_start]**Autenticação:** Permite autenticação segura no sistema[cite: 7].
- [cite_start]**Paginação:** Criação de uma lista paginada para exibição de registros na tela[cite: 4].
- [cite_start]**Geração de PDF:** Permite gerar um arquivo PDF da listagem de tela de consulta[cite: 14].
- [cite_start]**Geração de CSV:** Na tela principal do APP, existe a funcionalidade de gerar um arquivo CSV com pelo menos 3 campos (como id, Aluno, idade)[cite: 17, 19].
- [cite_start]**Regras de Negócio:** O sistema conta com validações e associações entre os modelos[cite: 15].

## 🗂️ Entidades do Sistema
[cite_start]O banco de dados foi modelado para gerenciar o contexto escolar, possuindo pelo menos as seguintes 3 entidades principais[cite: 27]:
- [cite_start]`Aluno`[cite: 33].
- [cite_start]`Disciplinas`[cite: 33].
- [cite_start]`Matrícula`[cite: 33].

## 🛠️ Tecnologias e Plugins Utilizados
- [cite_start]**Framework base:** Ruby on Rails[cite: 3].
- [cite_start]**Layout/Estilização:** Twitter Bootstrap, que permite desenvolver sites rapidamente e ter um layout profissional[cite: 10].
- **Gems Principais:**
  - [cite_start]`devise`: Para gerenciar a autenticação e login de usuários[cite: 7].
  - [cite_start]`kaminari`: Para a paginação das views[cite: 4].
  - [cite_start]`prawn`: Para a construção e exportação dos relatórios em PDF[cite: 14].

## 🚀 Como executar o projeto

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
