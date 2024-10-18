create database competesync;
use competesync;

create table atleta (
    id_atleta int auto_increment primary key,
    nome varchar(100) not null,
    data_nascimento date not null,
    genero enum('masculino', 'feminino', 'outro') not null
);

create table equipe (
    id_equipe int auto_increment primary key,
    nome varchar(100) not null,
    categoria enum('masculino', 'feminino', 'misto') not null
);

create table modalidade (
    id_modalidade int auto_increment primary key,
    nome varchar(100) not null,
    tipo enum('individual', 'por equipe') not null
);

create table competicao (
    id_competicao int auto_increment primary key,
    nome varchar(100) not null,
    data_inicio date not null,
    data_fim date not null,
    modalidade_id int,
    foreign key (modalidade_id) references modalidade(id_modalidade)
);

create table participacao (
    id_participacao int auto_increment primary key,
    atleta_id int,
    equipe_id int,
    competicao_id int,
    foreign key (atleta_id) references atleta(id_atleta),
    foreign key (equipe_id) references equipe(id_equipe),
    foreign key (competicao_id) references competicao(id_competicao)
);

create table partida (
    id_partida int auto_increment primary key,
    competicao_id int,
    equipe1_id int,
    equipe2_id int,
    data_partida datetime not null,
    gols_equipe1 int not null,
    gols_equipe2 int not null,
    vencedor_id int,
    foreign key (competicao_id) references competicao(id_competicao),
    foreign key (equipe1_id) references equipe(id_equipe),
    foreign key (equipe2_id) references equipe(id_equipe),
    foreign key (vencedor_id) references equipe(id_equipe)
);

create table grupo (
    id_grupo int auto_increment primary key,
    competicao_id int,
    nome varchar(100) not null,
    foreign key (competicao_id) references competicao(id_competicao)
);

create table classificacao (
    id_classificacao int auto_increment primary key,
    grupo_id int,
    equipe_id int,
    pontos int,
    vitorias int,
    empates int,
    derrotas int,
    foreign key (grupo_id) references grupo(id_grupo),
    foreign key (equipe_id) references equipe(id_equipe)
);
