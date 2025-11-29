-- --- COMANDOS DE UPDATE ---

-- 1. Registrar a devolução de um livro (Atualiza data de devolução e muda status do exemplar)
UPDATE Emprestimo SET data_devolucao = '2023-11-12' WHERE id_emprestimo = 1;
UPDATE Exemplar SET situacao = 'Disponível' WHERE id_exemplar = 2;

-- 2. Atualizar o telefone de um leitor que mudou de número
UPDATE Leitor SET telefone = '11900001111' WHERE nome = 'Maria Oliveira';

-- 3. Corrigir o título de um livro cadastrado com erro de digitação (Exemplo hipotético)
UPDATE Livro SET titulo = 'Dom Casmurro - Edição Especial' WHERE isbn = '9788500001';


-- --- COMANDOS DE DELETE ---

-- 1. Excluir um autor que não possui livros cadastrados (Supondo ID 4 criado por engano)
-- Nota: Para testar, crie um autor extra antes: INSERT INTO Autor (nome) VALUES ('Autor Teste');
DELETE FROM Autor WHERE nome = 'Autor Teste';

-- 2. Remover um exemplar que foi perdido ou totalmente danificado
DELETE FROM Exemplar WHERE id_exemplar = 3 AND situacao = 'Danificado';

-- 3. Excluir registro de leitor inativo (que nunca fez empréstimos)
-- Nota: Isso requer verificação de chaves estrangeiras, o comando abaixo deleta leitores sem empréstimos.
DELETE FROM Leitor 
WHERE id_leitor NOT IN (SELECT DISTINCT id_leitor FROM Emprestimo);