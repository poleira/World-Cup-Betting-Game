
CREATE TABLE QUARTAS_1 (
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

CREATE TABLE SEMIS_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                TIME4 VARCHAR(25),
                TIME3 VARCHAR(25),
                TIME2 VARCHAR(25),
                TIME1 VARCHAR(25)
);

CREATE TABLE HABILITARPALPITE (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                GERAL BOOLEAN,
                OITAVAS BOOLEAN,
                QUARTAS BOOLEAN,
                SEMIS BOOLEAN,
                FINAIS BOOLEAN
);

CREATE TABLE JOGOSDOBR_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                JOGO1 VARCHAR(8),
                JOGO2 VARCHAR(8),
                JOGO3 VARCHAR(8),
                OITAVAS VARCHAR(8),
                QUARTAS VARCHAR(8),
                SEMIS VARCHAR(8),
                FINAL VARCHAR(8)
                
);


CREATE TABLE GD_1 (
				ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                FRANCA INT(2),
                AUSTRALIA INT(2),
                DINAMARCA INT(2),
                TUNISIA INT(2),
                FRANCAPONTOS INT(2),
                AUSTRALIAPONTOS INT(2),
                DINAMARCAPONTOS INT(2),
                TUNISIAPONTOS INT(2)
);


CREATE TABLE GH_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),

                PORTUGAL INT(2),
                GANA INT(2),
                URUGUAI INT(2),
                COREIADOSUL INT(2),
				PORTUGALPONTOS INT(2),
                GANAPONTOS INT(2),
                URUGUAIPONTOS INT(2),
                COREIADOSULPONTOS INT(2)
);


CREATE TABLE CAMPEAO_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                TIME VARCHAR(25)

);


CREATE TABLE FINAIS_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                TIME1 VARCHAR(25),
                TIME2 VARCHAR(25)
);


CREATE TABLE GC_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                ARGENTINA INT(2),
                ARABIASAUDITA INT(2),
                MEXICO INT(2),
                POLONIA INT(2),
				ARGENTINAPONTOS INT(2),
                ARABIASAUDITAPONTOS INT(2),
                MEXICOPONTOS INT(2),
                POLONIAPONTOS INT(2)
);


CREATE TABLE GG_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                BRASIL INT(2),
                SERVIA INT(2),
                SUICA INT(2),
                CAMAROES INT(2),
                BRASILPONTOS INT(2),
                SERVIAPONTOS INT(2),
                SUICAPONTOS INT(2),
                CAMAROESPONTOS INT(2)
);


CREATE TABLE GF_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                BELGICA INT(2),
                CANADA INT(2),
                MARROCOS INT(2),
                CROACIA INT(2),
                BELGICAPONTOS INT(2),
                CANADAPONTOS INT(2),
                MARROCOSPONTOS INT(2),
                CROACIAPONTOS INT(2)
);


CREATE TABLE GB_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                INGLATERRA INT(2),
                IRAM INT(2),
                USA INT(2),
                PAISDEGALES INT(2),
                INGLATERRAPONTOS INT(2),
                IRAMPONTOS INT(2),
                USAPONTOS INT(2),
                PAISDEGALESPONTOS INT(2)
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
                TIME16 VARCHAR(25)
);


CREATE TABLE GE_1 (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                ESPANHA INT(2),
                COSTARICA INT(2),
                ALEMANHA INT(2),
                JAPAO INT(2),
                ESPANHAPONTOS INT(2),
                COSTARICAPONTOS INT(2),
                ALEMANHAPONTOS INT(2),
                JAPAOPONTOS INT(2)
);


CREATE TABLE GA_1 (
ID int(2) NOT NULL AUTO_INCREMENT,
                primary key(ID),
                QATAR INT(2),
                EQUADOR INT(2),
                SENEGAL INT(2),
                HOLANDA INT(2),
                QATARPONTOS INT(2),
                EQUADORPONTOS INT(2),
                SENEGALPONTOS INT(2),
                HOLANDAPONTOS INT(2)
);

CREATE TABLE CAMPEONATO (

                CODCAMPEONATO int NOT NULL AUTO_INCREMENT,
                NOME_CAMPEONATO VARCHAR(15) NOT NULL,
                USUARIO VARCHAR(18) NOT NULL,
                SENHA VARCHAR(10) NOT NULL,
                IDGA_1 int(2),
                IDGB_1 INT(2),
                IDGC_1 int(2),
                IDGD_1 INT(2),
                IDGE_1 int(2),
                IDGF_1 INT(2),
                IDGG_1 int(2),
                IDGH_1 INT(2),
                IDOITAVAS_1 int(2),
                IDQUARTAS_1 int(2),
                IDSEMIS_1 INT(2),
                IDFINAIS_1 int(2),
                IDJOGOSDOBR_1 INT(2),
                IDCAMPEAO_1 INT(2),
                FOREIGN KEY (IDGA_1) REFERENCES GA_1 (ID), 
                FOREIGN KEY (IDGB_1) REFERENCES GB_1 (ID), 
                FOREIGN KEY (IDGC_1) REFERENCES GC_1 (ID),
                FOREIGN KEY (IDGD_1) REFERENCES GD_1 (ID),
                FOREIGN KEY (IDGE_1) REFERENCES GE_1 (ID),
                FOREIGN KEY (IDGF_1) REFERENCES GF_1 (ID),
                FOREIGN KEY (IDGG_1) REFERENCES GG_1 (ID),
                FOREIGN KEY (IDGH_1) REFERENCES GH_1 (ID),
                FOREIGN KEY (IDOITAVAS_1) REFERENCES OITAVAS_1 (ID),
                FOREIGN KEY (IDQUARTAS_1) REFERENCES QUARTAS_1 (ID),
                FOREIGN KEY (IDSEMIS_1) REFERENCES SEMIS_1 (ID),
                FOREIGN KEY (IDFINAIS_1) REFERENCES FINAIS_1 (ID),
                FOREIGN KEY (IDJOGOSDOBR_1) REFERENCES JOGOSDOBR_1 (ID),
                FOREIGN KEY (IDCAMPEAO_1) REFERENCES CAMPEAO_1 (ID), 
                PRIMARY KEY (CODCAMPEONATO)
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
                JOGO1 VARCHAR(8),
                JOGO2 VARCHAR(8),
                JOGO3 VARCHAR(8),
                OITAVAS VARCHAR(8),
                QUARTAS VARCHAR(8),
                SEMIS VARCHAR(8),
                FINAL VARCHAR(8)
                
);


CREATE TABLE GD (
				ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                
                FRANCA INT(2),
                AUSTRALIA INT(2),
                DINAMARCA INT(2),
                TUNISIA INT(2),
                FRANCAPONTOS INT(2),
                AUSTRALIAPONTOS INT(2),
                DINAMARCAPONTOS INT(2),
                TUNISIAPONTOS INT(2)
);


CREATE TABLE GH (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),

                PORTUGAL INT(2),
                GANA INT(2),
                URUGUAI INT(2),
                COREIADOSUL INT(2),
				PORTUGALPONTOS INT(2),
                GANAPONTOS INT(2),
                URUGUAIPONTOS INT(2),
                COREIADOSULPONTOS INT(2)
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
                POLONIA INT(2),
				ARGENTINAPONTOS INT(2),
                ARABIASAUDITAPONTOS INT(2),
                MEXICOPONTOS INT(2),
                POLONIAPONTOS INT(2)
);


CREATE TABLE GG (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                BRASIL INT(2),
                SERVIA INT(2),
                SUICA INT(2),
                CAMAROES INT(2),
                BRASILPONTOS INT(2),
                SERVIAPONTOS INT(2),
                SUICAPONTOS INT(2),
                CAMAROESPONTOS INT(2)
);


CREATE TABLE GF (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                BELGICA INT(2),
                CANADA INT(2),
                MARROCOS INT(2),
                CROACIA INT(2),
                BELGICAPONTOS INT(2),
                CANADAPONTOS INT(2),
                MARROCOSPONTOS INT(2),
                CROACIAPONTOS INT(2)
);


CREATE TABLE GB (
ID int NOT NULL AUTO_INCREMENT,
                primary key(ID),
                INGLATERRA INT(2),
                IRAM INT(2),
                USA INT(2),
                PAISDEGALES INT(2),
                INGLATERRAPONTOS INT(2),
                IRAMPONTOS INT(2),
                USAPONTOS INT(2),
                PAISDEGALESPONTOS INT(2)
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
                JAPAO INT(2),
                ESPANHAPONTOS INT(2),
                COSTARICAPONTOS INT(2),
                ALEMANHAPONTOS INT(2),
                JAPAOPONTOS INT(2)
);


CREATE TABLE GA (
ID int(2) NOT NULL AUTO_INCREMENT,
                primary key(ID),
                QATAR INT(2),
                EQUADOR INT(2),
                SENEGAL INT(2),
                HOLANDA INT(2),
                QATARPONTOS INT(2),
                EQUADORPONTOS INT(2),
                SENEGALPONTOS INT(2),
                HOLANDAPONTOS INT(2)
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


