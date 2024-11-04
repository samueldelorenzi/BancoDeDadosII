use bd_competicao;

-- lista torneios e datas
select nome_torneio, data_inicio, data_fim
from torneio;

-- atletas de uma modalidade
select nome, idade, genero, pais_origem
from atleta a
join modalidade m on a.id_modalidade = m.id_modalidade
where m.nome_modalidade = 'Natação'; -- trocar modalidade

-- quantas equipes em um torneio
select t.nome_torneio, count(distinct p.id_equipe) as total_equipes -- conta as equipes diferentes
from torneio t
join participacao p on t.id_torneio = p.id_torneio
where p.id_equipe is not null -- onde é em equipe
group by t.nome_torneio;

-- pontos de um atleta
select a.nome, sum(pt.pontos_total) as soma_dos_pontos
from atleta a
join pontuacao pt on a.id_atleta = pt.id_atleta
where a.nome = 'Atleta 2' -- mudar atleta
group by a.nome;

-- atletas que estão no torneio
select a.nome, t.nome_torneio
from atleta a
join participacao p on a.id_atleta = p.id_atleta
join torneio t on p.id_torneio = t.id_torneio
where t.nome_torneio = 'Torneio Regional'; -- alterar nome do torneio

-- pontuação das equipes em um grupo
select g.nome_grupo, e.nome_equipe, pt.pontos_total
from equipe e
join pontuacao pt on e.id_equipe = pt.id_equipe
join grupo g on pt.id_grupo = g.id_grupo
where g.nome_grupo = 'Grupo B'; -- definir grupo

-- resultados das partidas do torneo
select t.nome_torneio, p.data_partida, rp.pontos_equipe1, rp.pontos_equipe2,
case 
	when rp.vencedor is null then 'Empate'
else 
	concat('Equipe ', rp.vencedor) -- junta a string equipe com o numero da equipe vencedora
end as Vencedor
from torneio t join partida p on t.id_torneio = p.id_torneio join resultado_partida rp on p.id_partida = rp.id_partida where t.id_torneio = 1;
