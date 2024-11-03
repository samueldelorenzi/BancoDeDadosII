insert into modalidade (id_modalidade, nome_modalidade, tipo) values (1, 'Futebol', 'Equipe');
insert into modalidade (id_modalidade, nome_modalidade, tipo) values (2, 'Tênis', 'Individual');

insert into equipe (id_equipe, nome_equipe, pais_origem, id_modalidade) values (1, 'Equipe A', 'Brasil', 1);
insert into equipe (id_equipe, nome_equipe, pais_origem, id_modalidade) values (2, 'Equipe B', 'Argentina', 1);

insert into atleta (id_atleta, nome, idade, genero, pais_origem, id_modalidade) values (1, 'Atleta 1', 25, 'M', 'Brasil', 2);
insert into atleta (id_atleta, nome, idade, genero, pais_origem, id_modalidade) values (2, 'Atleta 2', 22, 'F', 'Argentina', 2);

insert into torneio (id_torneio, nome_torneio, data_inicio, data_fim, formato) values (1, 'Torneio Internacional', '2024-01-10', '2024-01-30', 'Grupos');

insert into fase_torneio (id_fase, nome_fase, id_torneio) values (1, 'Classificatória', 1);
insert into fase_torneio (id_fase, nome_fase, id_torneio) values (2, 'Quartas de Final', 1);

insert into grupo (id_grupo, nome_grupo, id_fase) values (1, 'Grupo A', 1);
insert into grupo (id_grupo, nome_grupo, id_fase) values (2, 'Grupo B', 1);

insert into participacao (id_participacao, id_torneio, id_fase, id_grupo, id_atleta, pontos_acumulados) values (1, 1, 1, null, 1, 0);
insert into participacao (id_participacao, id_torneio, id_fase, id_grupo, id_equipe, pontos_acumulados) values (2, 1, 1, 1, null, 0);

insert into pontuacao (id_pontuacao, id_grupo, id_atleta, pontos_total) values (1, 1, 1, 3);
insert into pontuacao (id_pontuacao, id_grupo, id_equipe, pontos_total) values (2, 1, 1, 3);

insert into partida (id_partida, data_partida, id_grupo, id_fase, id_torneio) values (1, '2024-01-15 15:00:00', 1, 1, 1);
insert into partida (id_partida, data_partida, id_grupo, id_fase, id_torneio) values (2, '2024-01-16 18:00:00', 1, 1, 1);

insert into resultado_partida (id_resultado, id_partida, pontos_equipe1, pontos_equipe2, vencedor) values (1, 1, 2, 1, 1);
insert into resultado_partida (id_resultado, id_partida, pontos_equipe1, pontos_equipe2, vencedor) values (2, 2, 3, 3, null);