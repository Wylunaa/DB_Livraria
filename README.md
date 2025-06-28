 <h1>SDB Livraria</h1>
    <p>Este repositório contém o modelo físico e o script SQL para a criação do banco de dados de um sistema de livraria.</p>
Visão Geral do Projeto
Este projeto tem como objetivo modelar um banco de dados para gerenciar as operações de uma livraria, incluindo clientes (pessoas físicas e jurídicas), livros, editoras, estoque e pedidos.

Estrutura do Banco de Dados
O banco de dados sdb_livraria é composto pelas seguintes tabelas:

Cliente: Armazena informações gerais sobre os clientes da livraria.

Pessoa_fisica: Especialização de Cliente para clientes pessoa física, contendo RG e CPF.

Pessoa_juridica: Especialização de Cliente para clientes pessoa jurídica, contendo CNPJ e Inscrição Estadual (IE).

Editora: Contém detalhes sobre as editoras dos livros.

Livro: Armazena informações sobre os livros disponíveis, incluindo título, autor, ano de publicação, categoria, ISBN e valor.

Estoque: Gerencia a quantidade de cada livro em estoque e sua localização.

Pedido: Registra os pedidos feitos pelos clientes.

Pedido_Livro: Tabela associativa que detalha quais livros estão incluídos em cada pedido e suas respectivas quantidades.

Modelo Físico
O diagrama abaixo ilustra o modelo físico do banco de dados, mostrando as entidades e seus relacionamentos:

Como Usar o Script SQL
Para criar o banco de dados e suas tabelas, siga os passos abaixo:

Acesse seu ambiente MySQL: Abra um cliente MySQL (por exemplo, MySQL Workbench, linha de comando MySQL, phpMyAdmin, etc.).

Execute o script: Copie e cole todo o conteúdo do arquivo SQL (fornecido em seu prompt anterior) no seu cliente MySQL e execute-o.
  
