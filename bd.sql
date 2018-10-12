/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.29-MariaDB : Database - duenademi2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`duenademi2` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `duenademi2`;

/*Table structure for table `area` */

DROP TABLE IF EXISTS `area`;

CREATE TABLE `area` (
  `id_area` int(11) NOT NULL AUTO_INCREMENT,
  `diagnostico_area` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `objetivo_area` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `evaluacion_global` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `acti_descripcion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `acti_responsable` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `acti_tiempo` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `acti_evaluacion` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `acti_observacion` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `area_acomp` int(11) NOT NULL,
  PRIMARY KEY (`id_area`),
  KEY `PGF_AREA_ACTIVI` (`acti_descripcion`),
  KEY `AREA_ACOMP_AREA` (`area_acomp`),
  CONSTRAINT `AREA_ACOMP_AREA` FOREIGN KEY (`area_acomp`) REFERENCES `area_acomp` (`id_area_acomp`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `area` */

insert  into `area`(`id_area`,`diagnostico_area`,`objetivo_area`,`evaluacion_global`,`acti_descripcion`,`acti_responsable`,`acti_tiempo`,`acti_evaluacion`,`acti_observacion`,`area_acomp`) values (6,'jkfgn','njdfk','jkfdhbfgfjdkbsgjsb','njkgdggfndbgjbj','jkfgjksffn,bn','fdsghbfgjhbfgxmghbsjbh','hjkfgbjhfbgshjgfyygkgbvkbvhkbdfhj','jabfkdbfdhjfbahj',4),(7,'dddddddddddddddddddddd','ssssssssssssssssssssssss','rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr','sssssssssssssssss','aaaaaaaaaaaaaaaaaaaaaaa','qqqqqqqqqqqqqqq','wwwwwwwwwwwwwww','rrrrrrrrrrrrrrrrrrrrr',5),(8,'lllllllllllll','lllllllllllllllllllll','oooooooooooooooooooo','kkkkkkkkkkkkkkkkkkkkkkkk','m','llllllll','kkkkkkkkkkkkkkk','jjjjjjjjjjjjjjjjjjjj',19),(9,'kkkkkkkkkkkk','llllllllllllllllll','iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii','llllllllllllllllllllll','kkkkkkkkkkkkkkkk','jjjjjjjjjjjjjjjjj','nnnnnnnnnnnnnn','yyyyyyyyyyyyyyyyy',20),(10,'kkkkkkkkkkkk','kkkkkkkkkkkkkkk','pppppppppppppppppppppppp','nnnnnnnnnnn','yyyyyyyyyyyyyyy','ggggggggggggggg','iiiiiiiiiiiii','oooooooooooooooo',20),(11,'kkkkkkkkkkkkk','llllllllllllll','aaaaaaaaaaaaaaaaaaaaaa','oooooooooooooooooooooo','hhhhhhhhhhhhhhhhhh','rrrrrrrrrrrrrr','mmmmmmmmmmm','ffffffffffffff',19),(12,'jhjn','nbbjh','hbjkjhjk','knjj','jnjkn','jnkj','jnkj','h hjm',21);

/*Table structure for table `area_acomp` */

DROP TABLE IF EXISTS `area_acomp`;

CREATE TABLE `area_acomp` (
  `id_area_acomp` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_area_acomp` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `tipo_area_acomp` int(11) NOT NULL,
  PRIMARY KEY (`id_area_acomp`),
  KEY `AREAACOMP_AREATIPOACOMP` (`tipo_area_acomp`),
  CONSTRAINT `AREAACOMP_AREATIPOACOMP` FOREIGN KEY (`tipo_area_acomp`) REFERENCES `areas_tipo_area_acomp` (`id_tipo_area`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `area_acomp` */

insert  into `area_acomp`(`id_area_acomp`,`descripcion_area_acomp`,`tipo_area_acomp`) values (1,'Convivencia y Relaciones Familiares',3),(2,'Aislamiento Socio Familiar',3),(3,'Habito y Rutinas Familiares',3),(4,'Habilidades Eucativas/de cuidado del NNA',3),(5,'Salud',4),(6,'Legal',4),(7,'Vivienda',4),(8,'Economía Elaboral',4),(9,'Educación',4),(10,'RecursosComunitarios',4),(11,'Cognitivo Intelectual',1),(12,'Afectivo Emocional',1),(13,'Autonomía Personal',1),(14,'Físico y Salud',1),(15,'Habilidades Sociales',1),(16,'Espiritual',1),(17,'Familiar',2),(18,'Escolar',2),(19,'Espacio de Acogida',2),(20,'Cominitario',2),(21,'Ocio y Tiempo Libre',2);

/*Table structure for table `areas_tipo_area_acomp` */

DROP TABLE IF EXISTS `areas_tipo_area_acomp`;

CREATE TABLE `areas_tipo_area_acomp` (
  `id_tipo_area` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_tipo_area`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `areas_tipo_area_acomp` */

insert  into `areas_tipo_area_acomp`(`id_tipo_area`,`tipo`) values (1,'Desarrollo Personal'),(2,'Desarrollo Social'),(3,'Dinámicas Intrafamiliares'),(4,'Condiciones Sociocultural');

/*Table structure for table `informes` */

DROP TABLE IF EXISTS `informes`;

CREATE TABLE `informes` (
  `id_informe` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `documento` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `observacion` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nina` int(11) NOT NULL,
  `tipo_informe` int(11) NOT NULL,
  PRIMARY KEY (`id_informe`),
  KEY `INFOR_NNA` (`nina`),
  KEY `INFOR_TIPO` (`tipo_informe`),
  CONSTRAINT `INFOR_NNA` FOREIGN KEY (`nina`) REFERENCES `ninas` (`id_nina`),
  CONSTRAINT `INFOR_TIPO` FOREIGN KEY (`tipo_informe`) REFERENCES `informes_tipo` (`id_inf_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `informes` */

insert  into `informes`(`id_informe`,`fecha`,`documento`,`observacion`,`nina`,`tipo_informe`) values (1,'0000-00-00','upl_5bc01954d786d.pdf','hfdjgks',2,1),(2,'0000-00-00','upl_5bc01cdca2ab6.docx','fvdffsd',2,1),(3,'2018-10-11','upl_5bc04520ae466.docx','fkjgfd',2,1),(4,'2018-10-31','upl_5bc04b0141a04.docx','mmmmmmmmmmmmmmmmmmmmm',2,1);

/*Table structure for table `informes_tipo` */

DROP TABLE IF EXISTS `informes_tipo`;

CREATE TABLE `informes_tipo` (
  `id_inf_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_inf_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `informes_tipo` */

insert  into `informes_tipo`(`id_inf_tipo`,`tipo`) values (1,'Preliminar');

/*Table structure for table `ninas` */

DROP TABLE IF EXISTS `ninas`;

CREATE TABLE `ninas` (
  `id_nina` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_ingreso` date NOT NULL,
  `nombres` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `lugar_nacimiento` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `foto` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `cedula` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `tipo_medida` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `numero_medida` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_medida` date NOT NULL,
  `orga_persona` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `desc_vestimenta` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `desc_maltrato_fisico` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `desc_pertenencia` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `desc_obs_generales` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `desc_estado_salud` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_nina`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `ninas` */

insert  into `ninas`(`id_nina`,`fecha_ingreso`,`nombres`,`apellidos`,`lugar_nacimiento`,`fecha_nacimiento`,`foto`,`cedula`,`telefono`,`direccion`,`tipo_medida`,`numero_medida`,`fecha_medida`,`orga_persona`,`desc_vestimenta`,`desc_maltrato_fisico`,`desc_pertenencia`,`desc_obs_generales`,`desc_estado_salud`) values (2,'0201-05-25','vfdjhb','hbjc','fhjcsbnm','0000-00-00','foto.jpg','fhjbn','fhbjsn','fhjsnm','vfjhbn','fbjkn','0000-00-00','vhjbnm','fvsjkn','hfjbn','hbjkvfn','hbnfm','fjksn'),(6,'0201-05-25','jkdsf','kjdsb','machala','1992-07-19','foto.jpg','0706674819','0967687882','dhs','jsdka','ll','0000-00-00','ll','jjfjfjj','jj','j','jj','jj'),(7,'0201-05-25','jkdsf','kjdsb','machala','1992-07-19','foto.jpg','0706674819','0967687882','dhs','jsdka','ll','0000-00-00','ll','jjfjfjj','jj','j','jj','jj'),(8,'0201-05-25','jkdsf','kjdsb','machala','1992-07-19','upl_5bc10ad1e2b72.jpg','0706674819','0967687882','dhs','jsdka','ll','0000-00-00','ll','jjfjfjj','jj','j','jj','jj');

/*Table structure for table `ninas_familia` */

DROP TABLE IF EXISTS `ninas_familia`;

CREATE TABLE `ninas_familia` (
  `id_familia` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `parentesco` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `cedula` varchar(10) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `lugar_trabajo` varchar(50) DEFAULT NULL,
  `nina` int(11) NOT NULL,
  PRIMARY KEY (`id_familia`),
  KEY `FAMILA_NNA` (`nina`),
  CONSTRAINT `FAMILA_NNA` FOREIGN KEY (`nina`) REFERENCES `ninas` (`id_nina`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `ninas_familia` */

insert  into `ninas_familia`(`id_familia`,`nombres`,`apellidos`,`parentesco`,`edad`,`cedula`,`direccion`,`telefono`,`lugar_trabajo`,`nina`) values (1,'hkjg','hjfn','fdn',0,'dnm','hdfn','fdhbjknq','bdnm',2),(2,'jkfsdn','fjkn','jkfn',0,'nfm','jfknvm','hjnfm','hjnfm',2),(3,'hjkdbn','hjdn','hdjbn',0,'nmfjkn','hjmnf','hjknmdkj','mdhjn',2),(4,'mmm','mm','m',0,'mm','m','m','m',6),(5,'m','m','mm',0,'m','m','m','mm',6);

/*Table structure for table `ninas_informantes` */

DROP TABLE IF EXISTS `ninas_informantes`;

CREATE TABLE `ninas_informantes` (
  `id_informantes` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `institucion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `documento_ingreso` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `nina` int(11) NOT NULL,
  PRIMARY KEY (`id_informantes`),
  KEY `INF_NNA` (`nina`),
  CONSTRAINT `INF_NNA` FOREIGN KEY (`nina`) REFERENCES `ninas` (`id_nina`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `ninas_informantes` */

insert  into `ninas_informantes`(`id_informantes`,`nombres`,`apellidos`,`direccion`,`telefono`,`institucion`,`documento_ingreso`,`nina`) values (1,'yehj','hjbkn','hjn','jhb','uijk','hj',2),(2,'jh','hg','hm','hgbn','hgn','hgbn ',2),(7,'dkkkj','kjj','jj','j','j','j',6);

/*Table structure for table `paina` */

DROP TABLE IF EXISTS `paina`;

CREATE TABLE `paina` (
  `id_paina` int(11) NOT NULL AUTO_INCREMENT,
  `familia` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `etnia` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `acogimiento` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_elaboracion` date NOT NULL,
  `proxima_evaluacion` date NOT NULL,
  `profesional` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `cedula` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `obj_general` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `nina` int(11) NOT NULL,
  PRIMARY KEY (`id_paina`),
  KEY `PAINA_NNA` (`nina`),
  CONSTRAINT `PAINA_NNA` FOREIGN KEY (`nina`) REFERENCES `ninas` (`id_nina`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `paina` */

insert  into `paina`(`id_paina`,`familia`,`etnia`,`acogimiento`,`fecha_elaboracion`,`proxima_evaluacion`,`profesional`,`cedula`,`obj_general`,`nina`) values (2,'','qqqqqqqqqqqqq','qqqqqqqqqqqqqqqqqqq','0000-00-00','0000-00-00','eeeeeeeeee','wwwwwwwwww','ssssssssssssssss',2);

/*Table structure for table `paina_area` */

DROP TABLE IF EXISTS `paina_area`;

CREATE TABLE `paina_area` (
  `paina` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  KEY `PAA_AREA` (`area`),
  KEY `PAA_PAINA` (`paina`),
  CONSTRAINT `PAA_AREA` FOREIGN KEY (`area`) REFERENCES `area` (`id_area`),
  CONSTRAINT `PAA_PAINA` FOREIGN KEY (`paina`) REFERENCES `paina` (`id_paina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `paina_area` */

insert  into `paina_area`(`paina`,`area`) values (2,7);

/*Table structure for table `permisos` */

DROP TABLE IF EXISTS `permisos`;

CREATE TABLE `permisos` (
  `id_permiso` int(11) NOT NULL AUTO_INCREMENT,
  `permiso` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `key` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_permiso`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `permisos` */

insert  into `permisos`(`id_permiso`,`permiso`,`key`) values (1,'Tareas de administracion','admin_access'),(7,'Crear usuarios','add_user'),(8,'Desactivar usuarios','disabled_user'),(9,'Registrar nina','add_nina'),(10,'Registrar plan de fortalecimiento comunitario','add_pfc'),(11,'Agregar plan global familiar','add_pgf'),(12,'Agregar PAINA','add_paina'),(13,'Agregar Informe Preliminar (Psicología)','add_preliminar'),(14,'Agregar Informe Preliminar (TS)','add_ts');

/*Table structure for table `permisos_role` */

DROP TABLE IF EXISTS `permisos_role`;

CREATE TABLE `permisos_role` (
  `role` int(11) NOT NULL,
  `permiso` int(11) NOT NULL,
  `valor` tinyint(4) NOT NULL,
  PRIMARY KEY (`role`,`permiso`),
  KEY `role` (`role`),
  KEY `permiso` (`permiso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `permisos_role` */

insert  into `permisos_role`(`role`,`permiso`,`valor`) values (1,1,1),(1,2,1),(1,3,1),(1,7,1),(1,8,1),(1,9,0),(1,10,0),(1,11,0),(1,12,0),(1,13,0),(5,4,1),(5,9,1),(5,10,1),(6,9,1),(7,14,1);

/*Table structure for table `permisos_usuario` */

DROP TABLE IF EXISTS `permisos_usuario`;

CREATE TABLE `permisos_usuario` (
  `usuario` int(11) NOT NULL,
  `permiso` int(11) NOT NULL,
  `valor` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`usuario`,`permiso`),
  KEY `permiso` (`permiso`),
  KEY `permisos_usuario_ibfk_2` (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `permisos_usuario` */

insert  into `permisos_usuario`(`usuario`,`permiso`,`valor`) values (4,9,1),(4,10,1),(4,11,1),(4,12,1),(4,13,1);

/*Table structure for table `pfc` */

DROP TABLE IF EXISTS `pfc`;

CREATE TABLE `pfc` (
  `id_pfc` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `canton` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `parroquia` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `num_familia_servicio` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `num_nna_servicio` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_elab` date NOT NULL,
  `fecha_eval` date NOT NULL,
  `diag_participativo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `obj_general` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `obj_especifico` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `nina` int(11) NOT NULL,
  PRIMARY KEY (`id_pfc`),
  KEY `PFC_NNA` (`nina`),
  CONSTRAINT `PFC_NNA` FOREIGN KEY (`nina`) REFERENCES `ninas` (`id_nina`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `pfc` */

insert  into `pfc`(`id_pfc`,`nombre`,`canton`,`parroquia`,`num_familia_servicio`,`num_nna_servicio`,`fecha_elab`,`fecha_eval`,`diag_participativo`,`obj_general`,`obj_especifico`,`nina`) values (4,'jkv','nfdj','jfnd','fjdn','fjd','0000-00-00','0000-00-00','jdf','fdj','fjdk',2),(6,'njkvm','jkfdnn','jfkdn ','fkjdn m','jkfdnnm','0000-00-00','0000-00-00','fgdilk','fdnjk','jdfk',2),(7,'jknfg','fudigyo','mcbvjh','fj','ufh','0000-00-00','0000-00-00','fdhj','jdfh','hfdj',2);

/*Table structure for table `pfc_intervenciones` */

DROP TABLE IF EXISTS `pfc_intervenciones`;

CREATE TABLE `pfc_intervenciones` (
  `id_intervenciones` int(11) NOT NULL AUTO_INCREMENT,
  `meta` varchar(100) NOT NULL,
  `indicador` varchar(100) NOT NULL,
  `actividad` varchar(100) NOT NULL,
  `tiempo` varchar(100) NOT NULL,
  `recurso` varchar(100) NOT NULL,
  `responsable` varchar(100) NOT NULL,
  `pfc` int(11) NOT NULL,
  PRIMARY KEY (`id_intervenciones`),
  KEY `INTE_PFC` (`pfc`),
  CONSTRAINT `INTE_PFC` FOREIGN KEY (`pfc`) REFERENCES `pfc` (`id_pfc`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `pfc_intervenciones` */

insert  into `pfc_intervenciones`(`id_intervenciones`,`meta`,`indicador`,`actividad`,`tiempo`,`recurso`,`responsable`,`pfc`) values (3,'dfjk','djfk','djfk','dsjk','jdfk','kjfd',4),(4,'fdnkj','jdfkn','jkvdf','jfkdm','jfkdm','djfkm',4),(5,'fdjk','kjdf','jfkn','jkf','jfk','jskko',6),(6,'qerf','ituugh','jhdhfh','nnfm','gbndj','bbfi',6),(7,'jhf','fdjh','gbcv','yfysu','gggg','nnn',7);

/*Table structure for table `pfc_responsables` */

DROP TABLE IF EXISTS `pfc_responsables`;

CREATE TABLE `pfc_responsables` (
  `id_responsables` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `rol` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `pfc` int(11) NOT NULL,
  PRIMARY KEY (`id_responsables`),
  KEY `RESP_PFC` (`pfc`),
  CONSTRAINT `RESP_PFC` FOREIGN KEY (`pfc`) REFERENCES `pfc` (`id_pfc`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `pfc_responsables` */

insert  into `pfc_responsables`(`id_responsables`,`nombres`,`apellidos`,`rol`,`pfc`) values (1,'fkjbg','fhjdn ','fjdn',4),(2,'fkjbd','fdjkbn','fdjn',4),(3,'otiuirq','qweefgjk','ppaid',6),(4,'hfii','ddgh','qwesh',6),(5,'hhhhhh','hhgggggy','uuiiiiiii',7);

/*Table structure for table `pfc_seguimientos` */

DROP TABLE IF EXISTS `pfc_seguimientos`;

CREATE TABLE `pfc_seguimientos` (
  `id_seguimientos` int(11) NOT NULL AUTO_INCREMENT,
  `actividad` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `dificultad` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `resultado` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `observacion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `pfc` int(11) NOT NULL,
  PRIMARY KEY (`id_seguimientos`),
  KEY `SEGUI_PFC` (`pfc`),
  CONSTRAINT `SEGUI_PFC` FOREIGN KEY (`pfc`) REFERENCES `pfc` (`id_pfc`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `pfc_seguimientos` */

insert  into `pfc_seguimientos`(`id_seguimientos`,`actividad`,`dificultad`,`resultado`,`observacion`,`pfc`) values (3,'nvlkj','fknjd','jkfdn','jkfnd',4),(4,'dfkj','djkfs','jkdn','jkfdmn',4),(5,'jfjjjdhgdsg','gfgsgahh','bsbbbf','wbdfyyu',6),(6,'uuuuuuuu','jjjjjjj','hgggggg','bbbbbb',7),(7,'bbbcbb','vvvvv','ggggg','jjkkk',7);

/*Table structure for table `pgf` */

DROP TABLE IF EXISTS `pgf`;

CREATE TABLE `pgf` (
  `id_pgf` int(11) NOT NULL AUTO_INCREMENT,
  `familia` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `etnia` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `acogimiento` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_elaboracion` date NOT NULL,
  `proxima_evaluacion` date NOT NULL,
  `profesional` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `cedula` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `diag_sit_familia` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `diag_sit_equipo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `obj_gene_familia` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `obj_gene_equipo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `nina` int(11) NOT NULL,
  PRIMARY KEY (`id_pgf`),
  KEY `PFG_OBJ_GEN` (`obj_gene_familia`),
  KEY `PGF_DIAG_SIT` (`diag_sit_familia`),
  KEY `PGF_NNA` (`nina`),
  CONSTRAINT `PGF_NNA` FOREIGN KEY (`nina`) REFERENCES `ninas` (`id_nina`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `pgf` */

insert  into `pgf`(`id_pgf`,`familia`,`etnia`,`acogimiento`,`fecha_elaboracion`,`proxima_evaluacion`,`profesional`,`cedula`,`diag_sit_familia`,`diag_sit_equipo`,`obj_gene_familia`,`obj_gene_equipo`,`nina`) values (7,'','fnkd','fnjkd','0000-00-00','0000-00-00','fnjk','fj','fdjk','gfkdn','gfdk','fdjnk',2),(9,'','mmmmmmm','mmmmmm','0000-00-00','0000-00-00','mmmmmmmmm','mmmmmmmmmmmmm','llllllll','lllllllllllll','llllllll','kkkkkkkkkkkkk',2),(10,'','kkkkkkkkkkkkk','kkkkkkkkkkkk','0000-00-00','0000-00-00','kkkkkkkkk','kkkkkkkkkkkk','kkkkkkkkkkkk','kkkkkkkkkkkkkk','kkkkkkkk','kkkkkkkkkkkk',2),(11,'','lllllllllll','oooooooooo','0000-00-00','0000-00-00','kkkkkkkkkkk','kkkkkkkkkkk','kkkkkkkkkk','kkkkkkkkkkkk','kkkkkkkkkkk','mmmmmmmmm',2),(12,'','tttttttttt','tttttttttttttt','0000-00-00','0000-00-00','ccccccccccc','ccccccccccc','gggggggggggggg','tttttttttt','uuuuuuuuuuuuu','uuuuuuuuuuuuuu',2),(13,'','ya','tu','2018-02-25','2018-05-26','ni','3333','kkjkj','lkoij','ijkj','fgfr',2);

/*Table structure for table `pgf_area` */

DROP TABLE IF EXISTS `pgf_area`;

CREATE TABLE `pgf_area` (
  `pgf` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  KEY `PGFAREA_PGF` (`pgf`),
  KEY `PGFAREA_AREA` (`area`),
  CONSTRAINT `PGFAREA_AREA` FOREIGN KEY (`area`) REFERENCES `area` (`id_area`),
  CONSTRAINT `PGFAREA_PGF` FOREIGN KEY (`pgf`) REFERENCES `pgf` (`id_pgf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `pgf_area` */

insert  into `pgf_area`(`pgf`,`area`) values (7,6),(9,8),(10,9),(11,10),(12,11),(13,12);

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `roles` */

insert  into `roles`(`id_role`,`role`) values (1,'Administrador'),(5,'tutoras'),(6,'Psicologa'),(7,'Trabajo Social');

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `cedula` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `role` int(11) NOT NULL,
  `img` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `codigo` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `usuarios` */

insert  into `usuarios`(`id`,`nombres`,`apellidos`,`usuario`,`pass`,`email`,`cedula`,`role`,`img`,`estado`,`codigo`) values (4,'JUAN DIEGO','CALDERON LOBO','juan24','710f9d5d43fb39fb06facf99d677841a2e19c07b','juan2@gmail.com','0709826357',1,'user1.png',0,'5ba99aecbeed2'),(5,' PAULA SIFIA','SANCHEZ MARTINEZ','juan27','710f9d5d43fb39fb06facf99d677841a2e19c07b','juan29@gmail.com','0709826357',5,'user.png',0,'5ba99fe64d2f3');

/*Table structure for table `xprueba` */

DROP TABLE IF EXISTS `xprueba`;

CREATE TABLE `xprueba` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `xprueba` */

insert  into `xprueba`(`id`,`nombre`,`apellido`,`fecha`) values (1,'x','y','2018-09-24');

/* Function  structure for function  `PFC_FI` */

/*!50003 DROP FUNCTION IF EXISTS `PFC_FI` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `PFC_FI`(
    fecha_elaboracion_pfc VARCHAR(25),
    fecha_proxima_evaluacion_pfc VARCHAR(25),
    diagnostico_participativo_pfc VARCHAR(200),
    objetivo_general_pfc VARCHAR(200),
    objetivo_especificos_pfc VARCHAR(200),
    intervenciones_pfc INT,
    seguimientos_evaluaciones_pfc INT
    ) RETURNS int(11)
BEGIN
	DECLARE id_despues INT;
    DECLARE id_antes INT;
    
    SELECT id_pfc INTO id_antes FROM pfc ORDER BY id_pfc DESC LIMIT 1;
    INSERT INTO pfc 
    VALUES (
    NULL,fecha_elaboracion_pfc,fecha_proxima_evaluacion_pfc,
    diagnostico_participativo_pfc,objetivo_general_pfc,
    objetivo_especificos_pfc,intervenciones_pfc,
    seguimientos_evaluaciones_pfc
    );
    
    SELECT id_pfc INTO id_despues FROM pfc ORDER BY id_pfc DESC LIMIT 1;
    
    IF id_despues > id_antes THEN
    return 1;
    ELSE
    return 0;
    END IF;
    
    END */$$
DELIMITER ;

/* Procedure structure for procedure `DOC_PS` */

/*!50003 DROP PROCEDURE IF EXISTS  `DOC_PS` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DOC_PS`(
	buscar varchar(50),
	tipo_doc int
    )
BEGIN
    	SELECT
                p.id_documentos AS id,
                p.fecha_elaboracion AS elaboracion,
                p.proxima_evaluacion AS evaluacion,
                p.archivo,
                CONCAT(n.apellidos,' ',n.nombres) AS nombres,
                n.cedula
            FROM documentos p,ninas n,tipo_documento t
            WHERE n.id_nina=p.nina
            AND p.tipo_documento = t.id_tipo_documento
            and t.id_tipo_documento = tipo_doc
            AND n.cedula like concat('',buscar,'%');
    END */$$
DELIMITER ;

/* Procedure structure for procedure `INTERVENCIONES_PI` */

/*!50003 DROP PROCEDURE IF EXISTS  `INTERVENCIONES_PI` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `INTERVENCIONES_PI`(
    metas_i varchar(100),
    indicadores_i varchar(100),
    actividades_i varchar(100),
    tiempos_i varchar(25),
    recursos_i varchar(100),
    responsable_i varchar(100),
    pfc_i int
    )
BEGIN
	insert into intervenciones values (
	null,metas_i,indicadores_i,actividades_i,
	tiempos_i,recursos_i,responsable_i,pfc_i
	);
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `NINAS_PI` */

/*!50003 DROP PROCEDURE IF EXISTS  `NINAS_PI` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `NINAS_PI`(
	nombres_n varchar(50),
	apellidos_n varchar(50),
	cedula_n varchar(10),
	telefono_n varchar(10),
	email_n VARCHAR(25),
	ficha_ingreso_n varchar(50)
    )
BEGIN
	INSERT INTO ninas VALUES (
	NULL,
	nombres_n,
	apellidos_n,
	cedula_n,
	telefono_n,
	email_n,
	ficha_ingreso_n
	);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `PFC_PI` */

/*!50003 DROP PROCEDURE IF EXISTS  `PFC_PI` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `PFC_PI`(
    fecha_elaboracion_pfc varchar(25),
    fecha_proxima_evaluacion_pfc varchar(25),
    diagnostico_participativo_pfc varchar(200),
    objetivo_general_pfc varchar(200),
    objetivo_especificos_pfc varchar(200),
    parroquia_pfc int
    )
BEGIN
    declare id int default 0;
    insert into pfc 
    values (
    null,fecha_elaboracion_pfc,fecha_proxima_evaluacion_pfc,
    diagnostico_participativo_pfc,objetivo_general_pfc,
    objetivo_especificos_pfc,parroquia_pfc
    );
    select id_pfc into id from pfc order by id_pfc desc limit 1;
    select id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SEGUIMIENTOS_EVALUACIONES_PI` */

/*!50003 DROP PROCEDURE IF EXISTS  `SEGUIMIENTOS_EVALUACIONES_PI` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SEGUIMIENTOS_EVALUACIONES_PI`(
    actividad_se varchar(100),
    dificultad_se varchar(100),
    resultado_se varchar(100),
    observaciones_se varchar(100),
    pfc_se int
    
    )
BEGIN
    
    insert into seguimientos_evaluaciones values (
	null,actividad_se,dificultad_se,resultado_se,
	observaciones_se,pfc_se
    );
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
