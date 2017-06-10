CREATE TABLE cartaos (
    id bigint NOT NULL,
    usuario_id bigint,
    saldo double precision,
    data_cadastro date,
    data_vencimento date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


CREATE TABLE cidades (
    id bigint NOT NULL,
    nome text,
    qtd_habitantes integer,
    area integer,
    qtd_estacoes integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


CREATE TABLE cobradors (
    cpf bigint NOT NULL,
    onibus_id bigint,
    salario double precision,
    data_inicio_ser date,
    datanasc date,
    empresa_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


CREATE TABLE condutors (
    cpf bigint NOT NULL PRIMARY KEY,
    onibus_id bigint,
    salario double precision,
    data_inicio_serv date,
    datanasc date,
    empresa_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


CREATE TABLE empresas (
    cnpj bigint NOT NULL PRIMARY KEY,
    nome character varying,
    tel_contato bigint,
    qtd_empregados integer,
    endereco text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


CREATE TABLE estacao_metros (
    id bigint NOT NULL,
    nome character varying,
    cidade_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);

CREATE TABLE estacaos (
    id bigint NOT NULL,
    nome character varying,
    cidade_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);

CREATE TABLE itinerario_metros (
    id bigint NOT NULL,
    estacao_metro_id bigint,
    linha_metro_id bigint,
    ordem integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);



CREATE TABLE itinerarios (
    id bigint NOT NULL,
    estacao_id bigint,
    linha_id bigint,
    ordem integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


CREATE TABLE linha_cartaos (
    id bigint NOT NULL,
    cartao_id bigint,
    linha_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


CREATE TABLE linha_metros (
    id bigint NOT NULL,
    numero_paradas integer,
    cor character varying,
    passageiros_atendidos character varying,
    qtd_trans character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);

CREATE TABLE linhas (
    id bigint NOT NULL,
    numero_paradas integer,
    passageiros_atendidos integer,
    qtd_onibus integer,
    preco double precision,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);

CREATE TABLE metros (
    id bigint NOT NULL,
    linha_metro_id bigint,
    empresa_id bigint,
    qtd_passageiros integer,
    data_inicio_operacao date,
    ultima_revisao date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);



CREATE TABLE onibuses (
    id bigint NOT NULL,
    data_fabricacao date,
    qtd_passageiros integer,
    ultima_revisao date,
    empresa_id bigint,
    linha_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);

CREATE TABLE usuarios (
    cpf bigint NOT NULL PRIMARY KEY,
    datanasc date,
    profissao text,
    endereco text,
    sexo character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);



INSERT INTO cartaos (id, usuario_id, saldo, data_cadastro, data_vencimento, created_at, updated_at) VALUES (1, 12345, 200, '2017-06-09', '2017-06-09', '2017-06-09 23:33:39.752704', '2017-06-09 23:33:39.752704');

INSERT INTO cartaos (id, usuario_id, saldo, data_cadastro, data_vencimento, created_at, updated_at) VALUES (2, 1, 300, '2013-06-09', '2021-06-09', '2017-06-09 23:43:17.793695', '2017-06-09 23:43:17.793695');


INSERT INTO cidades (id, nome, qtd_habitantes, area, qtd_estacoes, created_at, updated_at) VALUES (1, 'Cidade mais maravilhosa do mundo', 10000, 500, 34, '2017-06-09 21:33:34.391062', '2017-06-09 21:33:34.391062');


INSERT INTO empresas (cnpj, nome, tel_contato, qtd_empregados, endereco, created_at, updated_at) VALUES (123, 'teste', 13412, 12, 'alkdjflaj', '2017-06-10 01:04:17.416077', '2017-06-10 01:04:17.416077');

INSERT INTO empresas (cnpj, nome, tel_contato, qtd_empregados, endereco, created_at, updated_at) VALUES (222, 'Pioneira', 6133773373, 50, 'SGCV Sul, Lote 18, SOF Sul, Guará-DF. CEP: 71215-100', '2017-06-10 02:59:52.668835', '2017-06-10 03:00:31.687238');

INSERT INTO linha_metros (id, numero_paradas, cor, passageiros_atendidos, qtd_trans, created_at, updated_at) VALUES (1, 21, 'azul', '67', '2', '2017-06-10 03:08:35.668559', '2017-06-10 03:08:35.668559');

INSERT INTO linhas (id, numero_paradas, passageiros_atendidos, qtd_onibus, preco, created_at, updated_at) VALUES (1, 20, 32, 6, 3.5, '2017-06-10 03:06:30.715572', '2017-06-10 03:06:30.715572');

INSERT INTO metros (id, linha_metro_id, empresa_id, qtd_passageiros, data_inicio_operacao, ultima_revisao, created_at, updated_at) VALUES (1, 1, 222, 100, '2012-05-10', '2017-03-10', '2017-06-10 03:09:07.365771', '2017-06-10 03:09:07.365771');

INSERT INTO onibuses (id, data_fabricacao, qtd_passageiros, ultima_revisao, empresa_id, linha_id, created_at, updated_at) VALUES (1, '2017-06-10', 12, '2017-06-10', 123, 1, '2017-06-10 18:36:39.354884', '2017-06-10 18:36:39.354884');

INSERT INTO usuarios (cpf, datanasc, profissao, endereco, sexo, created_at, updated_at) VALUES (12345, '2017-06-09', 'estudante', 'rua 12 casa 14', 'M', '2017-06-09 23:32:50.89756', '2017-06-09 23:32:50.89756');

INSERT INTO usuarios (cpf, datanasc, profissao, endereco, sexo, created_at, updated_at) VALUES (1, '2014-06-09', 'estagiário', 'rua 15', 'M', '2017-06-09 23:42:53.736678', '2017-06-09 23:42:53.736678');




