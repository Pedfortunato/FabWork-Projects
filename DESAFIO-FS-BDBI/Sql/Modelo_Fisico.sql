/* Lógico_final: */

CREATE TABLE paciente (
    id INT PRIMARY KEY,
    nome VARCHAR(40),
    endereco varchar(40),
    telefone INT(11),
    data_nascimento DATE,
    _primeira_consulta DATE,
    e_mail varchar(40),
    limite_consultas_mes INT,
    plano_saude varchar(40),
    fk_consulta_id integer
);

CREATE TABLE consulta (
    id integer PRIMARY KEY,
    tipo_ varchar(40),
    consultorio varchar(40),
    paciente varchar(40),
    data date,
    hora varchar(40)
);

CREATE TABLE consultorio (
    id int PRIMARY KEY,
    localizacao_ varchar(40),
    dias_atendimento int,
    horario_atendimento varchar(40),
    Nome_consultorio Varchar(40),
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

alter table paciente drop column telefone
