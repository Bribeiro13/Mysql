create database if not exists voos1;
use voos1;

create table if not exists passageiros(
	cod_passageiro varchar(45),
    nome varchar (45),
    sobrenome varchar(45),
    data_nasc date,
    nacionalidade varchar(45)
);
    
create table if not exists reservas_voos(
	cod_reserva int,
    data_reserva varchar(45),
    forma_pagamento varchar(45),
    valor_total decimal(10,2)
    
);

create table if not exists cias_aereas(
	id_cia int,
    nome varchar(45),
    cnpj varchar(45)
);

create table if not exists aeronave(
	cod_aeronave int,
    modelo varchar(45),
    fabricante varchar(45),
    ano year(4),
    quantidade_assentos int,
    FOREIGN KEY (id_cia) REFERENCES cias_aereas
);

create table if not exists voos(
	id_voos int,
    assento varchar(45),
    data_partida DATE,
    data_chegada DATE,
    hora_partida time,
    hora_chegada time,
    FOREIGN KEY (cod_aeronave) REFERENCES aeronave,
    FOREIGN KEY (id_cia) REFERENCES cias_aereas,
    FOREIGN KEY (data_partida) REFERENCES aeroporto,
    FOREIGN KEY (data_chegada) REFERENCES aeroporto
);

create table if not exists aeroporto(
	cod_aeroporto varchar(45),
    aeroporto_partida varchar(45),
    aeroporto_chegada varchar(45),
    nome_aeroporto varchar(45),
    capacidade_aeronaves varchar(45),
    quantidade_aeronaves varchar(45)
);

create table if not exists passageiros_resevas(
	FOREIGN KEY (cod_passageiro) REFERENCES passageiros,
    FOREIGN KEY (cod_reserva) REFERENCES reservas_voos
);

create table if not exists voos_reservas(
	
);

