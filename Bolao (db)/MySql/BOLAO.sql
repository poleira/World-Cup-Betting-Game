
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
                TIME1 VARCHAR(25),
                TIME2 VARCHAR(25),
                TIME3 VARCHAR(25),
                TIME4 VARCHAR(25),
                TIME5 VARCHAR(25),
                TIME6 VARCHAR(25),
                TIME7 VARCHAR(25),
                TIME8 VARCHAR(25),
                TIME9 VARCHAR(25),
                TIME10 VARCHAR(25),
                TIME11 VARCHAR(25),
                TIME12 VARCHAR(25),
                TIME13 VARCHAR(25),
                TIME14 VARCHAR(25),
                TIME15 VARCHAR(25),
                TIME16 VARCHAR(25),
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



CREATE TABLE QUARTAS (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                TIME1 VARCHAR(25),
                TIME2 VARCHAR(25),
                TIME3 VARCHAR(25),
                TIME4 VARCHAR(25),
                TIME5 VARCHAR(25),
                TIME6 VARCHAR(25),
                TIME7 VARCHAR(25),
                TIME8 VARCHAR(25)
);

CREATE TABLE SEMIS (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                TIME4 VARCHAR(25),
                TIME3 VARCHAR(25),
                TIME2 VARCHAR(25),
                TIME1 VARCHAR(25)
);

CREATE TABLE JOGOSDOBR (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                JOGO1 VARCHAR(2),
                JOGO2 VARCHAR(2),
                JOGO3 VARCHAR(2),
                OITAVAS VARCHAR(2),
                QUARTAS VARCHAR(2),
                SEMIS VARCHAR(2),
                FINAL VARCHAR(2)
                
);


CREATE TABLE GD (
				ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                
                FRANCA INT(2),
                AUSTRALIA INT(2),
                DINAMARCA INT(2),
                TUNISIA INT(2)
);


CREATE TABLE GH (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),

                PORTUGAL INT(2),
                GANA INT(2),
                URUGUAI INT(2),
                COREIADOSUL INT(2)
);


CREATE TABLE CAMPEAO (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                TIME VARCHAR(25)

);


CREATE TABLE FINAIS (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                TIME1 VARCHAR(25),
                TIME2 VARCHAR(25)
);


CREATE TABLE GC (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                ARGENTINA INT(2),
                ARABIASAUDITA INT(2),
                MEXICO INT(2),
                POLONIA INT(2)
);


CREATE TABLE GG (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                BRASIL INT(2),
                SERVIA INT(2),
                SUICA INT(2),
                CAMAROES INT(2)
);


CREATE TABLE GF (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
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
                PAISDEGALES INT(2)
);


CREATE TABLE OITAVAS (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                TIME1 VARCHAR(25),
                TIME2 VARCHAR(25),
                TIME3 VARCHAR(25),
                TIME4 VARCHAR(25),
                TIME5 VARCHAR(25),
                TIME6 VARCHAR(25),
                TIME7 VARCHAR(25),
                TIME8 VARCHAR(25),
                TIME9 VARCHAR(25),
                TIME10 VARCHAR(25),
                TIME11 VARCHAR(25),
                TIME12 VARCHAR(25),
                TIME13 VARCHAR(25),
                TIME14 VARCHAR(25),
                TIME15 VARCHAR(25),
                TIME16 VARCHAR(25)
);


CREATE TABLE GE (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                ESPANHA INT(2),
                COSTARICA INT(2),
                ALEMANHA INT(2),
                JAPAO INT(2)
);


CREATE TABLE GA (
ID int(2) NOT NULL AUTO_INCREMENT,
                primary key(ID),
                QATAR INT(2),
                EQUADOR INT(2),
                SENEGAL INT(2),
                HOLANDA INT(2)
);

CREATE TABLE CADASTRO (
                CODCADASTRO int NOT NULL AUTO_INCREMENT,
                USUARIO VARCHAR(15) NOT NULL,
                NOME VARCHAR(30) NOT NULL,
                SENHA VARCHAR(18) NOT NULL,
                PONTUACAO INT,
                IDGA int(2),
                IDGB INT(2),
                IDGC int(2),
                IDGD INT(2),
                IDGE int(2),
                IDGF INT(2),
                IDGG int(2),
                IDGH INT(2),
                IDOITAVAS int(2),
                IDQUARTAS int(2),
                IDSEMIS INT(2),
                IDFINAIS int(2),
                IDJOGOSDOBR INT(2),
                IDCAMPEAO INT(2),
                FOREIGN KEY (IDGA) REFERENCES GA (ID), 
                FOREIGN KEY (IDGB) REFERENCES GB (ID), 
                FOREIGN KEY (IDGC) REFERENCES GC (ID),
                FOREIGN KEY (IDGD) REFERENCES GD (ID),
                FOREIGN KEY (IDGE) REFERENCES GE (ID),
                FOREIGN KEY (IDGF) REFERENCES GF (ID),
                FOREIGN KEY (IDGG) REFERENCES GG (ID),
                FOREIGN KEY (IDGH) REFERENCES GH (ID),
                FOREIGN KEY (IDOITAVAS) REFERENCES OITAVAS (ID),
                FOREIGN KEY (IDQUARTAS) REFERENCES QUARTAS (ID),
                FOREIGN KEY (IDSEMIS) REFERENCES SEMIS (ID),
                FOREIGN KEY (IDFINAIS) REFERENCES FINAIS (ID),
                FOREIGN KEY (IDJOGOSDOBR) REFERENCES JOGOSDOBR (ID),
                FOREIGN KEY (IDCAMPEAO) REFERENCES CAMPEAO (ID), 
                PRIMARY KEY (CODCADASTRO)
);


