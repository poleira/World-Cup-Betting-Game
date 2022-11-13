
update ga_1 set
    `ga_1`.`QATAR`=99,
    `ga_1`.`EQUADOR`=99,
    `ga_1`.`SENEGAL`=99,
    `ga_1`.`HOLANDA`=99,
    `ga_1`.`QATARPONTOS`=99,
    `ga_1`.`EQUADORPONTOS`=99,
    `ga_1`.`SENEGALPONTOS`=99,
    `ga_1`.`HOLANDAPONTOS`=99
where id=1;

update gb_1 set
    `gb_1`.`INGLATERRA`=99,
    `gb_1`.`IRAM`=99,
    `gb_1`.`USA`=99,
    `gb_1`.`PAISDEGALES`=99,
    `gb_1`.`INGLATERRAPONTOS`=99,
    `gb_1`.`IRAMPONTOS`=99,
    `gb_1`.`USAPONTOS`=99,
    `gb_1`.`PAISDEGALESPONTOS`=99
where id=1;

update gc_1 set 
    `gc_1`.`ARGENTINA`=99,
    `gc_1`.`ARABIASAUDITA`=99,
    `gc_1`.`MEXICO`=99,
    `gc_1`.`POLONIA`=99,
    `gc_1`.`ARGENTINAPONTOS`=99,
    `gc_1`.`ARABIASAUDITAPONTOS`=99,
    `gc_1`.`MEXICOPONTOS`=99,
    `gc_1`.`POLONIAPONTOS`=99
where id = 1;

update gd_1 set 
    `gd_1`.`FRANCA`=99,
    `gd_1`.`AUSTRALIA`=99,
    `gd_1`.`DINAMARCA`=99,
    `gd_1`.`TUNISIA`=99,
    `gd_1`.`FRANCAPONTOS`=99,
    `gd_1`.`AUSTRALIAPONTOS`=99,
    `gd_1`.`DINAMARCAPONTOS`=99,
    `gd_1`.`TUNISIAPONTOS`=99
where id=1;

update ge_1 set 
    `ge_1`.`ESPANHA` =99,
    `ge_1`.`COSTARICA`=99,
    `ge_1`.`ALEMANHA`=99,
    `ge_1`.`JAPAO`=99,
    `ge_1`.`ESPANHAPONTOS`=99,
    `ge_1`.`COSTARICAPONTOS`=99,
    `ge_1`.`ALEMANHAPONTOS`=99,
    `ge_1`.`JAPAOPONTOS`=99
where id=1;

update gf_1 set 
    `gf_1`.`BELGICA`=99,
    `gf_1`.`CANADA`=99,
    `gf_1`.`MARROCOS`=99,
    `gf_1`.`CROACIA`=99,
    `gf_1`.`BELGICAPONTOS`=99,
    `gf_1`.`CANADAPONTOS`=99,
    `gf_1`.`MARROCOSPONTOS`=99,
    `gf_1`.`CROACIAPONTOS`=99
where id=1;

update gg_1 set 
    `gg_1`.`BRASIL`=99,
    `gg_1`.`SERVIA`=99,
    `gg_1`.`SUICA`=99,
    `gg_1`.`CAMAROES`=99,
    `gg_1`.`BRASILPONTOS`=99,
    `gg_1`.`SERVIAPONTOS`=99,
    `gg_1`.`SUICAPONTOS`=99,
    `gg_1`.`CAMAROESPONTOS`=99
where id=1;

update gh_1 set 
    `gh_1`.`PORTUGAL`=99,
    `gh_1`.`GANA`=99,
    `gh_1`.`URUGUAI`=99,
    `gh_1`.`COREIADOSUL`=99,
    `gh_1`.`PORTUGALPONTOS`=99,
    `gh_1`.`GANAPONTOS`=99,
    `gh_1`.`URUGUAIPONTOS`=99,
    `gh_1`.`COREIADOSULPONTOS`=99
where id=1;

update oitavas_1 set 
    `oitavas_1`.`TIME1`="x",
    `oitavas_1`.`TIME2`="x",
    `oitavas_1`.`TIME3`="x",
    `oitavas_1`.`TIME4`="x",
    `oitavas_1`.`TIME5`="x",
    `oitavas_1`.`TIME6`="x",
    `oitavas_1`.`TIME7`="x",
    `oitavas_1`.`TIME8`="x",
    `oitavas_1`.`TIME9`="x",
    `oitavas_1`.`TIME10`="x",
    `oitavas_1`.`TIME11`="x",
    `oitavas_1`.`TIME12`="x",
    `oitavas_1`.`TIME13`="x",
    `oitavas_1`.`TIME14`="x",
    `oitavas_1`.`TIME15`="x",
    `oitavas_1`.`TIME16`="x"
where id=1 ;

update quartas_1 set 
    `quartas_1`.`TIME1`="x",
    `quartas_1`.`TIME2`="x",
    `quartas_1`.`TIME3`="x",
    `quartas_1`.`TIME4`="x",
    `quartas_1`.`TIME5`="x",
    `quartas_1`.`TIME6`="x",
    `quartas_1`.`TIME7`="x",
    `quartas_1`.`TIME8`="x"
where id=1 ;

update semis_1 set 
    `semis_1`.`TIME1`="x",
    `semis_1`.`TIME2`="x",
    `semis_1`.`TIME3`="x",
    `semis_1`.`TIME4`="x"
where id=1 ;

update finais_1 set 
    `finais_1`.`TIME1`="x",
    `finais_1`.`TIME2`="x"
where id=1 ;

update campeao_1 set 
    `campeao_1`.`TIME`="x"
where id=1 ;

update jogosdobr_1 set
    `jogosdobr_1`.`JOGO1`="x",
    `jogosdobr_1`.`JOGO2`="x",
    `jogosdobr_1`.`JOGO3`="x",
    `jogosdobr_1`.`OITAVAS`="x",
    `jogosdobr_1`.`QUARTAS`="x",
    `jogosdobr_1`.`SEMIS`="x",
    `jogosdobr_1`.`FINAL`="x"
where id = 1;



INSERT INTO campeonato (
    `NOME_CAMPEONATO`,
    `USUARIO`,
    `SENHA`,
    `IDGA_1`,
    `IDGB_1`,
    `IDGC_1`,
    `IDGD_1`,
    `IDGE_1`,
    `IDGF_1`,
    `IDGG_1`,
    `IDGH_1`,
    `IDOITAVAS_1`,
    `IDQUARTAS_1`,
    `IDSEMIS_1`,
    `IDFINAIS_1`,
    `IDJOGOSDOBR_1`,
    `IDCAMPEAO_1`) VALUES (
  'strings', 'stringa', 'strings', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,1,1,1
);

insert into habilitarpalpite
set geral = true, oitavas = false, quartas=false, semis = false, finais = false;