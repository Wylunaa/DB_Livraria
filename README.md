 <h1>SDB Livraria</h1>
    <p>Este repositório contém o modelo físico e o script SQL para a criação do banco de dados de um sistema de livraria.</p>
<p><strong>Visão Geral do Projeto</strong></p>
<p>Este projeto tem como objetivo modelar um banco de dados para gerenciar as operações de uma livraria, incluindo clientes (pessoas físicas e jurídicas), livros, editoras, estoque e pedidos.</p>

<p><strong>Estrutura do Banco de Dados</strong></p>
O banco de dados sdb_livraria é composto pelas seguintes tabelas

<strong>Cliente:</strong> Armazena informações gerais sobre os clientes da livraria.

<strong>Pessoa_fisica:</strong> Especialização de Cliente para clientes pessoa física, contendo RG e CPF.

<strong>Pessoa_juridica:</strong>  Especialização de Cliente para clientes pessoa jurídica, contendo CNPJ e Inscrição Estadual (IE).

<strong>Editora:</strong>  Contém detalhes sobre as editoras dos livros.

<strong>Livro:</strong>  Armazena informações sobre os livros disponíveis, incluindo título, autor, ano de publicação, categoria, ISBN e valor.

<strong>Estoque:</strong>  Gerencia a quantidade de cada livro em estoque e sua localização.

<strong>Pedido:</strong>  Registra os pedidos feitos pelos clientes.

<strong>Pedido_Livro:</strong>  Tabela associativa que detalha quais livros estão incluídos em cada pedido e suas respectivas quantidades.

<h3>Como Usar o Script SQL</h3>
Para criar o banco de dados e suas tabelas, siga os passos abaixo:

<strong>Acesse seu ambiente MySQL:</strong>  Abra um cliente MySQL (por exemplo, MySQL Workbench, linha de comando MySQL, phpMyAdmin, etc.).

<strong>Execute o script:</strong>  Copie e cole todo o conteúdo do arquivo SQL (fornecido em seu prompt anterior) no seu cliente MySQL e execute-o.
  
