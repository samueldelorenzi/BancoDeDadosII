use bd_competicao;

insert into modalidade (id_modalidade, nome_modalidade, tipo) values (1, 'Futebol', 'Equipe');
insert into modalidade (id_modalidade, nome_modalidade, tipo) values (2, 'Tênis', 'Individual');
insert into modalidade (id_modalidade, nome_modalidade, tipo) values (3, 'Basquete', 'Equipe');
insert into modalidade (id_modalidade, nome_modalidade, tipo) values (4, 'Vôlei', 'Equipe');
insert into modalidade (id_modalidade, nome_modalidade, tipo) values (5, 'Natação', 'Individual');

insert into equipe (id_equipe, nome_equipe, pais_origem, id_modalidade) values (1, 'Equipe A', 'Brasil', 1);
insert into equipe (id_equipe, nome_equipe, pais_origem, id_modalidade) values (2, 'Equipe B', 'Argentina', 1);
insert into equipe (id_equipe, nome_equipe, pais_origem, id_modalidade) values (3, 'Equipe C', 'Chile', 1);
insert into equipe (id_equipe, nome_equipe, pais_origem, id_modalidade) values (4, 'Equipe D', 'Peru', 1);
insert into equipe (id_equipe, nome_equipe, pais_origem, id_modalidade) values (5, 'Equipe E', 'Brasil', 3);
insert into equipe (id_equipe, nome_equipe, pais_origem, id_modalidade) values (6, 'Equipe F', 'Argentina', 4);

insert into atleta (id_atleta, nome, idade, genero, pais_origem, id_modalidade) values (1, 'Atleta 1', 25, 'M', 'Brasil', 2);
insert into atleta (id_atleta, nome, idade, genero, pais_origem, id_modalidade) values (2, 'Atleta 2', 22, 'F', 'Argentina', 2);
insert into atleta (id_atleta, nome, idade, genero, pais_origem, id_modalidade) values (3, 'Atleta 3', 27, 'M', 'Brasil', 5);
insert into atleta (id_atleta, nome, idade, genero, pais_origem, id_modalidade) values (4, 'Atleta 4', 24, 'F', 'Chile', 5);
insert into atleta (id_atleta, nome, idade, genero, pais_origem, id_modalidade) values (5, 'Atleta 5', 29, 'M', 'Peru', 2);
insert into atleta (id_atleta, nome, idade, genero, pais_origem, id_modalidade) values (6, 'Atleta 6', 21, 'F', 'Argentina', 2);

insert into torneio (id_torneio, nome_torneio, data_inicio, data_fim, formato) values (1, 'Torneio Internacional', '2024-01-10', '2024-01-30', 'Grupos');
insert into torneio (id_torneio, nome_torneio, data_inicio, data_fim, formato) values (2, 'Torneio Regional', '2024-02-01', '2024-02-20', 'Pontos corridos');
insert into torneio (id_torneio, nome_torneio, data_inicio, data_fim, formato) values (3, 'Torneio Nacional', '2024-03-05', '2024-03-25', 'Grupos');

insert into fase_torneio (id_fase, nome_fase, id_torneio) values (1, 'Classificatória', 3);
insert into fase_torneio (id_fase, nome_fase, id_torneio) values (2, 'Quartas de Final', 2);
insert into fase_torneio (id_fase, nome_fase, id_torneio) values (3, 'Semifinal', 1);
insert into fase_torneio (id_fase, nome_fase, id_torneio) values (4, 'Final', 1);
insert into fase_torneio (id_fase, nome_fase, id_torneio) values (5, 'Eliminatória', 2);

insert into grupo (id_grupo, nome_grupo, id_fase) values (1, 'Grupo A', 1);
insert into grupo (id_grupo, nome_grupo, id_fase) values (2, 'Grupo B', 1);
insert into grupo (id_grupo, nome_grupo, id_fase) values (3, 'Grupo C', 1);
insert into grupo (id_grupo, nome_grupo, id_fase) values (4, 'Grupo D', 1);
insert into grupo (id_grupo, nome_grupo, id_fase) values (5, 'Grupo E', 5);

insert into participacao (id_participacao, id_torneio, id_fase, id_grupo, id_atleta, pontos_acumulados) values (1, 1, 3, null, 1, 0);
insert into participacao (id_participacao, id_torneio, id_fase, id_grupo, id_atleta, pontos_acumulados) values (2, 2, 1, null, 2, 0);
insert into participacao (id_participacao, id_torneio, id_fase, id_grupo, id_atleta, pontos_acumulados) values (3, 3, 2, null, 3, 0);
insert into participacao (id_participacao, id_torneio, id_fase, id_grupo, id_atleta, pontos_acumulados) values (4, 1, 1, null, 4, 0);
insert into participacao (id_participacao, id_torneio, id_fase, id_grupo, id_equipe, pontos_acumulados) values (5, 3, 1, 1, null, 0);
insert into participacao (id_participacao, id_torneio, id_fase, id_grupo, id_atleta, pontos_acumulados) values (6, 2, 1, null, 6, 5);
insert into participacao (id_participacao, id_torneio, id_fase, id_grupo, id_equipe, pontos_acumulados) values (7, 1, 1, 2, null, 4);

insert into pontuacao (id_pontuacao, id_grupo, id_atleta, pontos_total) values (1, 1, 1, 3);
insert into pontuacao (id_pontuacao, id_grupo, id_equipe, pontos_total) values (2, 1, 1, 3);
insert into pontuacao (id_pontuacao, id_grupo, id_atleta, pontos_total) values (3, 2, 2, 6);
insert into pontuacao (id_pontuacao, id_grupo, id_equipe, pontos_total) values (4, 2, 4, 3);

insert into partida (id_partida, data_partida, id_grupo, id_fase, id_torneio) values (1, '2024-01-15 15:00:00', 1, 1, 1);
insert into partida (id_partida, data_partida, id_grupo, id_fase, id_torneio) values (2, '2024-01-16 18:00:00', 1, 1, 1);
insert into partida (id_partida, data_partida, id_grupo, id_fase, id_torneio) values (3, '2024-01-18 17:00:00', 2, 1, 1);
insert into partida (id_partida, data_partida, id_grupo, id_fase, id_torneio) values (4, '2024-01-20 20:00:00', 2, 1, 1);
insert into partida (id_partida, data_partida, id_grupo, id_fase, id_torneio) values (5, '2024-02-05 19:00:00', 5, 5, 2);

insert into resultado_partida (id_resultado, id_partida, pontos_equipe1, pontos_equipe2, vencedor) values (1, 1, 2, 1, 1);
insert into resultado_partida (id_resultado, id_partida, pontos_equipe1, pontos_equipe2, vencedor) values (2, 2, 3, 3, null);
insert into resultado_partida (id_resultado, id_partida, pontos_equipe1, pontos_equipe2, vencedor) values (3, 3, 2, 2, null);
insert into resultado_partida (id_resultado, id_partida, pontos_equipe1, pontos_equipe2, vencedor) values (4, 4, 1, 2, 4);
insert into resultado_partida (id_resultado, id_partida, pontos_equipe1, pontos_equipe2, vencedor) values (5, 5, 0, 1, null);