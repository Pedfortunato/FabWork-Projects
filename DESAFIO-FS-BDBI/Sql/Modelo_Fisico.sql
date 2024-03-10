/* Lógico_final: */

CREATE TABLE paciente (
    id INT PRIMARY KEY,
    nome VARCHAR,
    endereco varchar,
    telefone INT(11),
    data_nascimento DATE,
    _primeira_consulta DATE,
    e_mail varchar,
    limite_consultas_mes INT,
    plano_saude varchar,
    fk_consulta_id integer
);

CREATE TABLE consulta (
    id integer PRIMARY KEY,
    tipo_ varchar,
    consultorio varchar,
    paciente varchar,
    data date,
    hora varchaR
);

CREATE TABLE consultorio (
    id int PRIMARY KEY,
    localizacao_ varchar,
    dias_atendimento int,
    horario_atendimento varchar,
    Nome_consultorio Varchar,
    fk_consulta_id integer
);
 
ALTER TABLE paciente ADD CONSTRAINT FK_paciente_2
    FOREIGN KEY (fk_consulta_id)
    REFERENCES consulta (id)
    ON DELETE RESTRICT;
 
ALTER TABLE consultorio ADD CONSTRAINT FK_consultorio_2
    FOREIGN KEY (fk_consulta_id)
    REFERENCES consulta (id)
    ON DELETE RESTRICT;