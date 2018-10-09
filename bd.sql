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

/*Table structure for table `actividades_area` */

DROP TABLE IF EXISTS `actividades_area`;

CREATE TABLE `actividades_area` (
  `id_actividad` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `responsable` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tiempo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `evaluacion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `observaciones` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_actividad`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `actividades_area` */

insert  into `actividades_area`(`id_actividad`,`descripcion`,`responsable`,`tiempo`,`evaluacion`,`observaciones`) values (3,'','','','',''),(4,'','','','',''),(5,'','','','',''),(6,'','','','',''),(7,'','','','',''),(10,'nn','nn','nnn','nn','nn'),(11,'descrip','tiempoo','responsable','evalua','observa');

/*Table structure for table `datos_area` */

DROP TABLE IF EXISTS `datos_area`;

CREATE TABLE `datos_area` (
  `id_area` int(11) NOT NULL AUTO_INCREMENT,
  `diagnostico_area` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `objetivo_area` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `evaluacion_global` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `actividad` int(11) NOT NULL,
  PRIMARY KEY (`id_area`),
  KEY `PGF_AREA_ACTIVI` (`actividad`),
  CONSTRAINT `PGF_AREA_ACTIVI` FOREIGN KEY (`actividad`) REFERENCES `actividades_area` (`id_actividad`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `datos_area` */

insert  into `datos_area`(`id_area`,`diagnostico_area`,`objetivo_area`,`evaluacion_global`,`actividad`) values (1,'','','',3),(2,'','','',4),(3,'','','',5),(4,'','','',6),(5,'','','',7),(8,'nnn','nnn','nnn',10),(9,'descripcionnn','objetivossss','evaluacion globas de todas areas',11);

/*Table structure for table `datos_pfc` */

DROP TABLE IF EXISTS `datos_pfc`;

CREATE TABLE `datos_pfc` (
  `id_pfc` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `canton` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `parroquia` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `num_familia_servicio` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `num_nna_servicio` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_elab` date NOT NULL,
  `fecha_eval` date NOT NULL,
  `nina` int(11) NOT NULL,
  `objetivos` int(11) NOT NULL,
  PRIMARY KEY (`id_pfc`),
  KEY `PFC_OBJ` (`objetivos`),
  CONSTRAINT `PFC_OBJ` FOREIGN KEY (`objetivos`) REFERENCES `obj_pfc` (`id_obj`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `datos_pfc` */

insert  into `datos_pfc`(`id_pfc`,`nombre`,`canton`,`parroquia`,`num_familia_servicio`,`num_nna_servicio`,`fecha_elab`,`fecha_eval`,`nina`,`objetivos`) values (23,'juan','machala','nueve de mayo','255','255','2018-02-25','2018-05-26',0,13),(24,'','','','','','0000-00-00','0000-00-00',0,14),(25,'kgfl','fdnkl','fbvjdk','vfd,m','fndj','2018-02-25','2018-05-26',0,15),(26,'df','dsd','sad','df','ds','2018-02-25','2018-05-26',0,16);

/*Table structure for table `datos_pgf` */

DROP TABLE IF EXISTS `datos_pgf`;

CREATE TABLE `datos_pgf` (
  `id_pgf` int(11) NOT NULL AUTO_INCREMENT,
  `familia` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `etnia` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `acogimiento` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_elaboracion` date NOT NULL,
  `proxima_evaluacion` date NOT NULL,
  `profesional` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `cedula` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `nina` int(11) NOT NULL,
  `diag_sit` int(11) NOT NULL,
  `obj_gene` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  PRIMARY KEY (`id_pgf`),
  KEY `D_N` (`nina`),
  KEY `PGF_DIAG` (`diag_sit`),
  KEY `PGF_OBJ` (`obj_gene`),
  KEY `PGF_AREA` (`area`),
  CONSTRAINT `PGF_AREA` FOREIGN KEY (`area`) REFERENCES `datos_area` (`id_area`),
  CONSTRAINT `PGF_DIAG` FOREIGN KEY (`diag_sit`) REFERENCES `diagnostico_situacion` (`id_diagnostico_situacion`),
  CONSTRAINT `PGF_NINA` FOREIGN KEY (`nina`) REFERENCES `ninas` (`id_nina`),
  CONSTRAINT `PGF_OBJ` FOREIGN KEY (`obj_gene`) REFERENCES `objetivo_general` (`id_objetivo`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `datos_pgf` */

insert  into `datos_pgf`(`id_pgf`,`familia`,`etnia`,`acogimiento`,`fecha_elaboracion`,`proxima_evaluacion`,`profesional`,`cedula`,`nina`,`diag_sit`,`obj_gene`,`area`) values (92,'ndnd','jcjcjc','jdjjd','0000-00-00','0000-00-00','ndnnd','ndnnd',7,6,2,1),(93,'nfnfnf','jfjfj','nfjnfnf','0000-00-00','0000-00-00','nfnnf','nfnf',7,7,3,2),(94,'nxn','jdjd','ndnd','0000-00-00','0000-00-00','dhdnd','jdndn',7,8,4,3),(95,'BDHD','JDDJ','DNHDHD','0000-00-00','0000-00-00','NJDJND','DJD',7,9,5,4),(96,'dd','ndndnd','dhdhdhd','0000-00-00','0000-00-00','ndndnd','jdjdjd',7,10,6,5),(99,'','vdvdvdv','bdvdbd','0000-00-00','0000-00-00','ppp','ppppp',7,13,9,8),(100,'','etnia','causa','0000-00-00','0000-00-00','profesional','cedula',7,14,10,9);

/*Table structure for table `descripciones` */

DROP TABLE IF EXISTS `descripciones`;

CREATE TABLE `descripciones` (
  `id_descripciones` int(11) NOT NULL AUTO_INCREMENT,
  `vestimenta` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `salud` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `maltrato_fisico` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `pertenecia` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `observaciones_generales` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `nina` int(11) NOT NULL,
  PRIMARY KEY (`id_descripciones`),
  UNIQUE KEY `D_NNA` (`nina`),
  CONSTRAINT `NNA_DESC` FOREIGN KEY (`nina`) REFERENCES `ninas` (`id_nina`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `descripciones` */

insert  into `descripciones`(`id_descripciones`,`vestimenta`,`salud`,`maltrato_fisico`,`pertenecia`,`observaciones_generales`,`nina`) values (1,'BLUSA AZUL CON PANTALON JEAN NEGRO','NO PRESENTA NINGUNA ENFERMEDAD','NO PRESENTA MALTRATO FISICO','NO INGRESA CON PERTENENCIAS ','CARACTER INTROVERTIDO',75);

/*Table structure for table `diagnostico_situacion` */

DROP TABLE IF EXISTS `diagnostico_situacion`;

CREATE TABLE `diagnostico_situacion` (
  `id_diagnostico_situacion` int(11) NOT NULL AUTO_INCREMENT,
  `familia` varchar(50) NOT NULL,
  `equipo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_diagnostico_situacion`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `diagnostico_situacion` */

insert  into `diagnostico_situacion`(`id_diagnostico_situacion`,`familia`,`equipo`) values (2,'rolando','romero'),(3,'rolando','romero'),(4,'rolando','romero'),(5,'rolando','romero'),(6,'ndnd','ndndnd'),(7,'nfnfnf','nfnfnf'),(8,'nxn','xnnx'),(9,'BDHD','NSNS'),(10,'dd','dddd'),(13,'nnn','nnnn'),(14,'de la familia','del equipo');

/*Table structure for table `informantes` */

DROP TABLE IF EXISTS `informantes`;

CREATE TABLE `informantes` (
  `id_informantes` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `institucion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `documento_ingreso` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `nina` int(11) NOT NULL,
  PRIMARY KEY (`id_informantes`),
  KEY `NNA_INFO` (`nina`),
  CONSTRAINT `NNA_INFO` FOREIGN KEY (`nina`) REFERENCES `ninas` (`id_nina`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `informantes` */

insert  into `informantes`(`id_informantes`,`nombres`,`apellidos`,`direccion`,`telefono`,`institucion`,`documento_ingreso`,`nina`) values (1,'LAURA NICOL','APOLO GUZMAN','MACHALA','0967687883','SAN JUAN BAUTISTA','WORD',75);

/*Table structure for table `intervenciones` */

DROP TABLE IF EXISTS `intervenciones`;

CREATE TABLE `intervenciones` (
  `id_intervenciones` int(11) NOT NULL AUTO_INCREMENT,
  `meta` varchar(100) NOT NULL,
  `indicador` varchar(100) NOT NULL,
  `actividad` varchar(100) NOT NULL,
  `tiempo` varchar(100) NOT NULL,
  `recurso` varchar(100) NOT NULL,
  `responsable` varchar(100) NOT NULL,
  `pfc` int(11) NOT NULL,
  PRIMARY KEY (`id_intervenciones`),
  KEY `PFC_INTE` (`pfc`),
  CONSTRAINT `PFC_INTE` FOREIGN KEY (`pfc`) REFERENCES `datos_pfc` (`id_pfc`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `intervenciones` */

insert  into `intervenciones`(`id_intervenciones`,`meta`,`indicador`,`actividad`,`tiempo`,`recurso`,`responsable`,`pfc`) values (20,'fgjlk\r\n','fjklds','fsd;lk','sjlkfmg','fskl','jkgf',23),(21,'jkfbse','hbfs','fsb','hfjs','dhj','fjhs',25),(22,'dfhjk','ydfui','fdhkjs','ydfsgh','hfdjb','dgsh',26);

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
  `organiacion_persona` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_nina`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `ninas` */

insert  into `ninas`(`id_nina`,`fecha_ingreso`,`nombres`,`apellidos`,`lugar_nacimiento`,`fecha_nacimiento`,`foto`,`cedula`,`telefono`,`direccion`,`tipo_medida`,`numero_medida`,`fecha_medida`,`organiacion_persona`) values (75,'2018-09-24','LAURA NICOL','APOLO GUZMAN','MACHALA','2000-02-21','upl_5ba927dc00115.jpg','0706674819','0967687883','MACHALA','25','25','2018-06-25','MARTHA AGUIRRE CALDERON');

/*Table structure for table `obj_pfc` */

DROP TABLE IF EXISTS `obj_pfc`;

CREATE TABLE `obj_pfc` (
  `id_obj` int(11) NOT NULL AUTO_INCREMENT,
  `diag_part` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `general` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `especificos` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_obj`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `obj_pfc` */

insert  into `obj_pfc`(`id_obj`,`diag_part`,`general`,`especificos`) values (13,'fdjk','vcbkj','fbjkds'),(14,'','',''),(15,'rif','fjbksd','fkjlsdb'),(16,'dshjk','dhkjs','djhs');

/*Table structure for table `objetivo_general` */

DROP TABLE IF EXISTS `objetivo_general`;

CREATE TABLE `objetivo_general` (
  `id_objetivo` int(10) NOT NULL AUTO_INCREMENT,
  `consensuado_familia` varchar(50) CHARACTER SET latin1 NOT NULL,
  `consensuado_equipo` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_objetivo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `objetivo_general` */

insert  into `objetivo_general`(`id_objetivo`,`consensuado_familia`,`consensuado_equipo`) values (1,'cc','rr'),(2,'neene','nebebe'),(3,'nfnfn','nfnfnf'),(4,'mm','mm'),(5,'BSBS','NSNBS'),(6,'dddd','dddd'),(9,'nnn','nnn'),(10,'consensuado familia','equipo consensuado');

/*Table structure for table `permisos` */

DROP TABLE IF EXISTS `permisos`;

CREATE TABLE `permisos` (
  `id_permiso` int(11) NOT NULL AUTO_INCREMENT,
  `permiso` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `key` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_permiso`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `permisos` */

insert  into `permisos`(`id_permiso`,`permiso`,`key`) values (1,'Tareas de administracion','admin_access'),(7,'Crear usuarios','add_user'),(8,'Desactivar usuarios','disabled_user'),(9,'Registrar nina','add_nina'),(10,'Registrar plan de fortalecimiento comunitario','add_pfc'),(11,'Agregar plan global familiar','add_pgf');

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

insert  into `permisos_role`(`role`,`permiso`,`valor`) values (1,1,1),(1,2,1),(1,3,1),(1,7,1),(1,8,1),(1,9,0),(1,10,0),(1,11,0),(5,4,1),(5,9,1),(5,10,1),(6,9,1);

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

insert  into `permisos_usuario`(`usuario`,`permiso`,`valor`) values (4,9,1),(4,10,1),(4,11,1);

/*Table structure for table `pfc` */

DROP TABLE IF EXISTS `pfc`;

CREATE TABLE `pfc` (
  `id_datos_generales` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `canton` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `parroquia` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `num_familia_servicio` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `num_nna_servicio` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `diag_part_comu` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `ob_general_plan` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `ob_especificos` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_elab` date NOT NULL,
  `fecha_eval` date NOT NULL,
  `nina` int(11) NOT NULL,
  PRIMARY KEY (`id_datos_generales`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `pfc` */

insert  into `pfc`(`id_datos_generales`,`nombre`,`canton`,`parroquia`,`num_familia_servicio`,`num_nna_servicio`,`diag_part_comu`,`ob_general_plan`,`ob_especificos`,`fecha_elab`,`fecha_eval`,`nina`) values (8,'juan','machala','nueve de mayo','255','255','','','','0000-00-00','0000-00-00',0),(9,'juan','machala','nueve de mayo','255','255','','','','0000-00-00','0000-00-00',0);

/*Table structure for table `responsables` */

DROP TABLE IF EXISTS `responsables`;

CREATE TABLE `responsables` (
  `id_responsables` int(11) NOT NULL AUTO_INCREMENT,
  `responsable` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `rol` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `pfc` int(11) NOT NULL,
  PRIMARY KEY (`id_responsables`),
  KEY `PFC_RESPONSABLE` (`pfc`),
  CONSTRAINT `PFC_RESPONSABLE` FOREIGN KEY (`pfc`) REFERENCES `datos_pfc` (`id_pfc`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `responsables` */

insert  into `responsables`(`id_responsables`,`responsable`,`rol`,`pfc`) values (3,'jhds hjvcd','dchjs',23),(4,'jhvc gfjhb','jcbn',23),(5,'gdfhj dyshj','ghd',26);

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `roles` */

insert  into `roles`(`id_role`,`role`) values (1,'Administrador'),(5,'tutoras'),(6,'Psicologa');

/*Table structure for table `seguimientos` */

DROP TABLE IF EXISTS `seguimientos`;

CREATE TABLE `seguimientos` (
  `id_seguimientos` int(11) NOT NULL AUTO_INCREMENT,
  `actividad` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `dificultad` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `resultado` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `observacion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `pfc` int(11) NOT NULL,
  PRIMARY KEY (`id_seguimientos`),
  KEY `PFC_SEGUI` (`pfc`),
  CONSTRAINT `PFC_SEGUI` FOREIGN KEY (`pfc`) REFERENCES `datos_pfc` (`id_pfc`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `seguimientos` */

insert  into `seguimientos`(`id_seguimientos`,`actividad`,`dificultad`,`resultado`,`observacion`,`pfc`) values (12,'fkhjsn','fjkds','sdfjk','sfdkj',23),(13,'dfkhjsn','sdjk','fsjhk','hfjs',23),(14,'ydusfhj','tdfysg','tfdgh','dfgsh',26);

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
