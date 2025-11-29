# Sistema de Gestão de Biblioteca Comunitária "Leitura Viva"

Este repositório contém os scripts SQL para a criação e manipulação do banco de dados do projeto "Leitura Viva", desenvolvido como parte da disciplina de Modelagem de Banco de Dados.

## 📋 Descrição do Projeto
O sistema visa informatizar o controle de acervo e empréstimos de uma biblioteca comunitária, permitindo o cadastro de livros, leitores e o controle de datas de devolução.

## 🚀 Como executar
Os scripts foram desenvolvidos para serem compatíveis com MySQL. Siga a ordem abaixo para execução no Workbench ou via terminal:

1.  **1_estrutura.sql**: Cria o banco de dados e as tabelas com relacionamentos.
2.  **2_insercoes.sql**: Popula o banco com dados iniciais de teste.
3.  **3_consultas.sql**: Exemplos de relatórios e consultas úteis.
4.  **4_manipulacao.sql**: Exemplos de atualização e exclusão de dados.

## 🗂 Estrutura do Banco de Dados
O modelo lógico inclui as seguintes entidades:
* **Autor e Categoria:** Tabelas de normalização.
* **Livro e Exemplar:** Separação entre a obra intelectual e a cópia física.
* **Leitor:** Dados dos usuários.
* **Emprestimo:** Tabela transacional que conecta Leitores a Exemplares.

## 👤 Autor
[Seu Nome Aqui]
Curso de Análise e Desenvolvimento de Sistemas
