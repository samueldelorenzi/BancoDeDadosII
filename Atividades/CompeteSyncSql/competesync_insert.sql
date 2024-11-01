insert into modalidade (nome, tipo) values
('futebol', 'por equipe'),
('atletismo', 'individual'),
('natação', 'individual'),
('basquete', 'por equipe');

insert into equipe (nome, categoria) values
('equipe a', 'masculino'),
('equipe b', 'masculino'),
('equipe c', 'feminino'),
('equipe d', 'misto');

insert into atleta (nome, data_nascimento, genero) values
('joão silva', '1990-05-15', 'masculino'),
('maria oliveira', '1992-08-25', 'feminino'),
('pedro alves', '1988-02-12', 'masculino'),
('ana souza', '1995-11-30', 'feminino');

insert into competicao (nome, data_inicio, data_fim, modalidade_id) values
('campeonato de futebol', '2024-01-10', '2024-01-20', 1),
('torneio de atletismo', '2024-02-15', '2024-02-17', 2),
('campeonato de natação', '2024-03-05', '2024-03-07', 3),
('torneio de basquete', '2024-04-10', '2024-04-15', 4);

insert into participacao (atleta_id, equipe_id, competicao_id) values
(1, 1, 1),
(2, 3, 1),
(3, 1, 2),
(4, 2, 3);

insert into partida (competicao_id, equipe1_id, equipe2_id, data_partida, gols_equipe1, gols_equipe2, vencedor_id) values
(1, 1, 2, '2024-01-12 16:00:00', 2, 1, 1),
(1, 3, 4, '2024-01-13 18:00:00', 1, 1, null),
(2, 1, 3, '2024-02-16 14:00:00', 3, 2, 1),
(3, 1, 2, '2024-03-06 10:00:00', 5, 3, 1);

insert into grupo (competicao_id, nome) values
(1, 'grupo a'),
(1, 'grupo b');

insert into classificacao (grupo_id, equipe_id, pontos, vitorias, empates, derrotas) values
(1, 1, 3, 1, 0, 0),
(1, 2, 1, 0, 1, 0),
(2, 3, 3, 1, 0, 0),
(2, 4, 0, 0, 0, 1);
