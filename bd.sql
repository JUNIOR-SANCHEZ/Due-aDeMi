/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.33-MariaDB : Database - duenademi2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`duenademi2` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci */;

USE `duenademi2`;

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
  CONSTRAINT `D_NNA` FOREIGN KEY (`nina`) REFERENCES `ninas` (`id_nina`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `descripciones` */

insert  into `descripciones`(`id_descripciones`,`vestimenta`,`salud`,`maltrato_fisico`,`pertenecia`,`observaciones_generales`,`nina`) values (1,'BLUSA AZUL CON PANTALON JEAN NEGRO','NO PRESENTA NINGUNA ENFERMEDAD','NO PRESENTA MALTRATO FISICO','NO INGRESA CON PERTENENCIAS ','CARACTER INTROVERTIDO',75);

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
  UNIQUE KEY `I_NNA` (`nina`),
  CONSTRAINT `I_NNA` FOREIGN KEY (`nina`) REFERENCES `ninas` (`id_nina`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `informantes` */

insert  into `informantes`(`id_informantes`,`nombres`,`apellidos`,`direccion`,`telefono`,`institucion`,`documento_ingreso`,`nina`) values (1,'LAURA NICOL','APOLO GUZMAN','MACHALA','0967687883','SAN JUAN BAUTISTA','WORD',75);

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

insert  into `ninas`(`id_nina`,`fecha_ingreso`,`nombres`,`apellidos`,`lugar_nacimiento`,`fecha_nacimiento`,`foto`,`cedula`,`telefono`,`direccion`,`tipo_medida`,`numero_medida`,`fecha_medida`,`organiacion_persona`) values (75,'2018-09-24','LAURA NICOL','APOLO GUZMAN','MACHALA','2003-02-21','upl_5ba927dc00115.jpg','0706674819','0967687883','MACHALA','25','25','2018-06-25','MARTHA AGUIRRE CALDERON');

/*Table structure for table `permisos` */

DROP TABLE IF EXISTS `permisos`;

CREATE TABLE `permisos` (
  `id_permiso` int(11) NOT NULL AUTO_INCREMENT,
  `permiso` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `key` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_permiso`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `permisos` */

insert  into `permisos`(`id_permiso`,`permiso`,`key`) values (1,'Tareas de administracion','admin_access'),(7,'Crear usuarios','add_user'),(8,'Desactivar usuarios','disabled_user');

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

insert  into `permisos_role`(`role`,`permiso`,`valor`) values (1,1,1),(1,2,1),(1,3,1);

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

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `roles` */

insert  into `roles`(`id_role`,`role`) values (1,'Administrador'),(5,'tutoras');

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `role` int(11) NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `codigo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `usuarios` */

insert  into `usuarios`(`id`,`nombres`,`apellidos`,`usuario`,`pass`,`email`,`phone`,`role`,`estado`,`direccion`,`codigo`) values (1,'','','SrtoLeon','5bae17944cfa8bd5587a430e4a48c9ec0ce68219','leon@leon.com',NULL,2,1,'2018-08-09',NULL),(2,'','','SartoSanchez','5bae17944cfa8bd5587a430e4a48c9ec0ce68219','sanchez@sanchez.com',NULL,3,1,'2018-08-09',NULL);

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
