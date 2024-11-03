-- Listar todos os atletas que estão participando de um torneio específico
select a.nome, t.nome_torneio
from atleta a
join participacao p on a.id_atleta = p.id_atleta
join torneio t on p.id_torneio = t.id_torneio
where t.nome_torneio = 'Torneio Internacional';

-- Verificar a pontuação acumulada das equipes em um grupo específico
select e.nome_equipe, pt.pontos_total
from equipe e
join pontuacao pt on e.id_equipe = pt.id_equipe
join grupo g on pt.id_grupo = g.id_grupo
where g.nome_grupo = 'Grupo A';

-- Listar as partidas e seus resultados
select p.data_partida, rp.pontos_equipe1, rp.pontos_equipe2, 
       case when rp.vencedor is not null then 'Equipe ' || rp.vencedor else 'Empate' end as resultado
from partida p
join resultado_partida rp on p.id_partida = rp.id_partida
where p.id_torneio = 1;

-- Classificação dos participantes por pontos no grupo específico
select case 
           when p.id_atleta is not null then (select nome from atleta where id_atleta = p.id_atleta)
           when p.id_equipe is not null then (select nome_equipe from equipe where id_equipe = p.id_equipe)
           else 'Desconhecido' 
       end as participante,
       pt.pontos_total
from participacao p
join pontuacao pt on (p.id_atleta = pt.id_atleta or p.id_equipe = pt.id_equipe)
where p.id_grupo = 1
order by pt.pontos_total desc;