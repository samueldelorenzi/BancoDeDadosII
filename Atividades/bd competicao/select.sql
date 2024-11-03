use bd_competicao;

-- atletas que estão no torneio
select a.nome, t.nome_torneio
from atleta a
join participacao p on a.id_atleta = p.id_atleta
join torneio t on p.id_torneio = t.id_torneio
where t.nome_torneio = 'Torneio Regional'; -- alterar nome do torneio

-- pontuação das equipes em um grupo
select e.nome_equipe, pt.pontos_total
from equipe e
join pontuacao pt on e.id_equipe = pt.id_equipe
join grupo g on pt.id_grupo = g.id_grupo
where g.nome_grupo = 'Grupo B'; -- definir grupo

select t.nome_torneio as Nome_Torneio, p.data_partida as Data_Partida, rp.pontos_equipe1 as Pontos_Equipe1, rp.pontos_equipe2 as Pontos_Equipe2,
case 
	when rp.vencedor is null then 'Empate'
else 
	concat('Equipe ', rp.vencedor) -- junta a string equipe com o numero da equipe vencedora
end as Vencedor
from torneio t join partida p on t.id_torneio = p.id_torneio join resultado_partida rp on p.id_partida = rp.id_partida where t.id_torneio = 1;