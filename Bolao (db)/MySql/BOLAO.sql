

CREATE TABLE CAMPEONATO (

                CODCAMPEONATO int NOT NULL AUTO_INCREMENT,
                NOME_CAMPEONATO VARCHAR(15) NOT NULL,
                USUARIO VARCHAR(18) NOT NULL,
                SENHA VARCHAR(10) NOT NULL,
                PRIMARY KEY (CODCAMPEONATO)
);


CREATE TABLE SEMIS_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                TIME1 VARCHAR(25) NOT NULL,
                TIME2 VARCHAR(25) NOT NULL,
                TIME3 VARCHAR(25) NOT NULL,
                TIME4 VARCHAR(25) NOT NULL,
                CODCAMPEONATO INT NOT NULL
);


CREATE TABLE CAMPEAO_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                TIME VARCHAR(25) NOT NULL,
                CODCAMPEONATO INT NOT NULL
);


CREATE TABLE JOGOS_BR_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                JOGO1 VARCHAR(2) NOT NULL,
                JOGO2 VARCHAR(2) NOT NULL,
                JOGO3 VARCHAR(2) NOT NULL,
                OITAVAS VARCHAR(2) NOT NULL,
                QUARTAS VARCHAR(2) NOT NULL,
                SEMIS VARCHAR(2) NOT NULL,
                FINAL VARCHAR(2) NOT NULL,
                CODCAMPEONATO INT NOT NULL
);


CREATE TABLE QUARTAS_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                TIME1 VARCHAR(25) NOT NULL,
                TIME2 VARCHAR(25) NOT NULL,
                TIME3 VARCHAR(25) NOT NULL,
                TIME4 VARCHAR(25) NOT NULL,
                TIME5 VARCHAR(25) NOT NULL,
                TIME6 VARCHAR(25) NOT NULL,
                TIME7 VARCHAR(25) NOT NULL,
                TIME8 VARCHAR(25) NOT NULL,
                CODCAMPEONATO INT NOT NULL
);


CREATE TABLE OITAVAS_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                TIME1 VARCHAR(25) NOT NULL,
                TIME2 VARCHAR(25) NOT NULL,
                TIME3 VARCHAR(25) NOT NULL,
                TIME4 VARCHAR(25) NOT NULL,
                TIME5 VARCHAR(25) NOT NULL,
                TIME6 VARCHAR(25) NOT NULL,
                TIME7 VARCHAR(25) NOT NULL,
                TIME8 VARCHAR(25) NOT NULL,
                TIME9 VARCHAR(25) NOT NULL,
                TIME10 VARCHAR(25) NOT NULL,
                TIME11 VARCHAR(25) NOT NULL,
                TIME12 VARCHAR(25) NOT NULL,
                TIME13 VARCHAR(25) NOT NULL,
                TIME14 VARCHAR(25) NOT NULL,
                TIME15 VARCHAR(25) NOT NULL,
                TIME16 VARCHAR(25) NOT NULL,
                CODCAMPEONATO INT NOT NULL
);


CREATE TABLE FINAIS_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                TIME1 VARCHAR(25) NOT NULL,
                TIME2 VARCHAR(25) NOT NULL,
                CODCAMPEONATO INT NOT NULL
);


CREATE TABLE GA_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                CODCAMPEONATO INT NOT NULL,
                QATAR INT(2),
                EQUADOR INT(2),
                SENEGAL INT(2),
                HOLANDA INT(2)
);


CREATE TABLE GC_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                CODCAMPEONATO INT NOT NULL,
                ARGENTINA INT(2),
                ARABIASAUDITA INT(2),
                MEXICO INT(2),
                POLONIA INT(2)
);


CREATE TABLE GF_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                CODCAMPEONATO INT NOT NULL,
                BELGICA INT(2),
                CANADA INT(2),
                MARROCOS INT(2),
                CROACIA INT(2)
);


CREATE TABLE GH_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                CODCAMPEONATO INT NOT NULL,
                PORTUGAL INT(2),
                GANA INT(2),
                URUGUAI INT(2),
                COREIADOSUL INT(2)
);


CREATE TABLE GB_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                CODCAMPEONATO INT NOT NULL,
                INGLATERRA INT(2),
                IRAM INT(2),
                USA INT(2),
                PAISDEGALES INT(2)
);


CREATE TABLE GE_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                CODCAMPEONATO INT NOT NULL,
                ESPANHA INT(2),
                COSTARICA INT(2),
                ALEMANHA INT(2),
                JAPAO INT(2)
);


CREATE TABLE GD_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                FRANCA INT(2),
                AUSTRALIA INT(2),
                DINAMARCA INT(2),
                TUNISIA INT(2),
                CODCAMPEONATO INT NOT NULL
);


CREATE TABLE GG_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                CODCAMPEONATO INT NOT NULL,
                BRASIL INT(2),
                SERVIA INT(2),
                SUICA INT(2),
                CAMAROES INT(2)
);


CREATE TABLE CADASTRO (
                CODCADASTRO int NOT NULL AUTO_INCREMENT,
                USUARIO VARCHAR(15) NOT NULL,
                NOME VARCHAR(30) NOT NULL,
                SENHA VARCHAR(18) NOT NULL,
                PONTUACAO INT,
                PRIMARY KEY (CODCADASTRO)
);


CREATE TABLE QUARTAS (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                TIME1 VARCHAR(25) NOT NULL,
                TIME2 VARCHAR(25) NOT NULL,
                TIME3 VARCHAR(25) NOT NULL,
                TIME4 VARCHAR(25) NOT NULL,
                TIME5 VARCHAR(25) NOT NULL,
                TIME6 VARCHAR(25) NOT NULL,
                TIME7 VARCHAR(25) NOT NULL,
                TIME8 VARCHAR(25) NOT NULL,
                CODCADASTRO INT NOT NULL
);


CREATE TABLE SEMIS (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                CODCADASTRO INT NOT NULL,
                POS4 VARCHAR(25),
                POS3 VARCHAR(25),
                POS2 VARCHAR(25),
                POS1 VARCHAR(25)
);


CREATE TABLE JOGOS_BR (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                JOGO1 VARCHAR(2) NOT NULL,
                JOGO2 VARCHAR(2) NOT NULL,
                JOGO3 VARCHAR(2) NOT NULL,
                OITAVAS VARCHAR(2) NOT NULL,
                QUARTAS VARCHAR(2) NOT NULL,
                SEMIS VARCHAR(2) NOT NULL,
                FINAL VARCHAR(2) NOT NULL,
                CODCADASTRO INT NOT NULL
);


CREATE TABLE GD (
				ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                CODCADASTRO INT NOT NULL,
                FRANCA INT(2),
                AUSTRALIA INT(2),
                DINAMARCA INT(2),
                TUNISIA INT(2)
);


CREATE TABLE GH (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                CODCADASTRO INT NOT NULL,
                PORTUGAL INT(2),
                GANA INT(2),
                URUGUAI INT(2),
                COREIADOSUL INT(2)
);


CREATE TABLE CAMPEAO (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                TIME VARCHAR(25) NOT NULL,
                CODCADASTRO INT NOT NULL
);


CREATE TABLE FINAIS (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                TIME1 VARCHAR(25) NOT NULL,
                TIME2 VARCHAR(25) NOT NULL,
                CODCADASTRO INT NOT NULL
);


CREATE TABLE GC (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                ARGENTINA INT(2),
                ARABIASAUDITA INT(2),
                MEXICO INT(2),
                POLONIA INT(2),
                CODCADASTRO INT NOT NULL
);


CREATE TABLE GG (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                BRASIL INT(2),
                SERVIA INT(2),
                SUICA INT(2),
                CAMAROES INT(2),
                CODCADASTRO INT NOT NULL
);


CREATE TABLE GF (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                CODCADASTRO INT NOT NULL,
                BELGICA INT(2),
                CANADA INT(2),
                MARROCOS INT(2),
                CROACIA INT(2)
);


CREATE TABLE GB (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                INGLATERRA INT(2),
                IRAM INT(2),
                USA INT(2),
                PAISDEGALES INT(2),
                CODCADASTRO INT NOT NULL
);


CREATE TABLE OITAVAS (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                TIME1 VARCHAR(25) NOT NULL,
                TIME2 VARCHAR(25) NOT NULL,
                TIME3 VARCHAR(25) NOT NULL,
                TIME4 VARCHAR(25) NOT NULL,
                TIME5 VARCHAR(25) NOT NULL,
                TIME6 VARCHAR(25) NOT NULL,
                TIME7 VARCHAR(25) NOT NULL,
                TIME8 VARCHAR(25) NOT NULL,
                TIME9 VARCHAR(25) NOT NULL,
                TIME10 VARCHAR(25) NOT NULL,
                TIME11 VARCHAR(25) NOT NULL,
                TIME12 VARCHAR(25) NOT NULL,
                TIME13 VARCHAR(25) NOT NULL,
                TIME14 VARCHAR(25) NOT NULL,
                TIME15 VARCHAR(25) NOT NULL,
                TIME16 VARCHAR(25) NOT NULL,
                CODCADASTRO INT NOT NULL
);


CREATE TABLE GE (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                ESPANHA INT(2),
                COSTARICA INT(2),
                ALEMANHA INT(2),
                JAPAO INT(2),
                CODCADASTRO INT NOT NULL
);


CREATE TABLE GA (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                QATAR INT(2),
                EQUADOR INT(2),
                SENEGAL INT(2),
                HOLANDA INT(2),
                CODCADASTRO INT NOT NULL
);


ALTER TABLE GG_1 ADD CONSTRAINT campeonato_gg_1_fk
FOREIGN KEY (CODCAMPEONATO)
REFERENCES CAMPEONATO (CODCAMPEONATO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE GD_1 ADD CONSTRAINT campeonato_gd_1_fk
FOREIGN KEY (CODCAMPEONATO)
REFERENCES CAMPEONATO (CODCAMPEONATO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE GE_1 ADD CONSTRAINT campeonato_ge_1_fk
FOREIGN KEY (CODCAMPEONATO)
REFERENCES CAMPEONATO (CODCAMPEONATO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE GB_1 ADD CONSTRAINT campeonato_gb_1_fk
FOREIGN KEY (CODCAMPEONATO)
REFERENCES CAMPEONATO (CODCAMPEONATO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE GH_1 ADD CONSTRAINT campeonato_gh_1_fk
FOREIGN KEY (CODCAMPEONATO)
REFERENCES CAMPEONATO (CODCAMPEONATO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE GF_1 ADD CONSTRAINT campeonato_gf_1_fk
FOREIGN KEY (CODCAMPEONATO)
REFERENCES CAMPEONATO (CODCAMPEONATO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE GC_1 ADD CONSTRAINT campeonato_gc_1_fk
FOREIGN KEY (CODCAMPEONATO)
REFERENCES CAMPEONATO (CODCAMPEONATO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE GA_1 ADD CONSTRAINT campeonato_ga_1_fk
FOREIGN KEY (CODCAMPEONATO)
REFERENCES CAMPEONATO (CODCAMPEONATO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE FINAIS_1 ADD CONSTRAINT campeonato_finais_1_fk
FOREIGN KEY (CODCAMPEONATO)
REFERENCES CAMPEONATO (CODCAMPEONATO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE OITAVAS_1 ADD CONSTRAINT campeonato_oitavas_1_fk
FOREIGN KEY (CODCAMPEONATO)
REFERENCES CAMPEONATO (CODCAMPEONATO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE QUARTAS_1 ADD CONSTRAINT campeonato_quartas_1_fk
FOREIGN KEY (CODCAMPEONATO)
REFERENCES CAMPEONATO (CODCAMPEONATO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE JOGOS_BR_1 ADD CONSTRAINT campeonato_jogos_br_1_fk
FOREIGN KEY (CODCAMPEONATO)
REFERENCES CAMPEONATO (CODCAMPEONATO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE CAMPEAO_1 ADD CONSTRAINT campeonato_campeao_1_fk
FOREIGN KEY (CODCAMPEONATO)
REFERENCES CAMPEONATO (CODCAMPEONATO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE SEMIS_1 ADD CONSTRAINT campeonato_semis_1_fk
FOREIGN KEY (CODCAMPEONATO)
REFERENCES CAMPEONATO (CODCAMPEONATO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE GA ADD CONSTRAINT cadastro_ga_fk
FOREIGN KEY (CODCADASTRO)
REFERENCES CADASTRO (CODCADASTRO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE GE ADD CONSTRAINT cadastro_ge_fk
FOREIGN KEY (CODCADASTRO)
REFERENCES CADASTRO (CODCADASTRO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE OITAVAS ADD CONSTRAINT cadastro_oitavas_fk
FOREIGN KEY (CODCADASTRO)
REFERENCES CADASTRO (CODCADASTRO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE GB ADD CONSTRAINT cadastro_gb_fk
FOREIGN KEY (CODCADASTRO)
REFERENCES CADASTRO (CODCADASTRO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE GF ADD CONSTRAINT cadastro_gf_fk
FOREIGN KEY (CODCADASTRO)
REFERENCES CADASTRO (CODCADASTRO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE GG ADD CONSTRAINT cadastro_gg_fk
FOREIGN KEY (CODCADASTRO)
REFERENCES CADASTRO (CODCADASTRO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE GC ADD CONSTRAINT cadastro_gc_fk
FOREIGN KEY (CODCADASTRO)
REFERENCES CADASTRO (CODCADASTRO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE FINAIS ADD CONSTRAINT cadastro_finais_fk
FOREIGN KEY (CODCADASTRO)
REFERENCES CADASTRO (CODCADASTRO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE CAMPEAO ADD CONSTRAINT cadastro_campeao_fk
FOREIGN KEY (CODCADASTRO)
REFERENCES CADASTRO (CODCADASTRO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE GH ADD CONSTRAINT cadastro_gh_fk
FOREIGN KEY (CODCADASTRO)
REFERENCES CADASTRO (CODCADASTRO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE GD ADD CONSTRAINT cadastro_gd_fk
FOREIGN KEY (CODCADASTRO)
REFERENCES CADASTRO (CODCADASTRO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE JOGOS_BR ADD CONSTRAINT cadastro_jogos_br_fk
FOREIGN KEY (CODCADASTRO)
REFERENCES CADASTRO (CODCADASTRO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE SEMIS ADD CONSTRAINT cadastro_semis_fk
FOREIGN KEY (CODCADASTRO)
REFERENCES CADASTRO (CODCADASTRO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE QUARTAS ADD CONSTRAINT cadastro_quartas_fk
FOREIGN KEY (CODCADASTRO)
REFERENCES CADASTRO (CODCADASTRO)
ON DELETE NO ACTION
ON UPDATE NO ACTION;