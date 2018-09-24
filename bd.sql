/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.29-MariaDB : Database - duenademi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`duenademi` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci */;

USE `duenademi`;

/*Table structure for table `cantones` */

DROP TABLE IF EXISTS `cantones`;

CREATE TABLE `cantones` (
  `id_cantones` int(11) NOT NULL AUTO_INCREMENT,
  `canton` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_cantones`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `cantones` */

insert  into `cantones`(`id_cantones`,`canton`) values (1,'machala'),(2,'arenillas'),(3,'atahualpa'),(4,'balsas'),(5,'chilla'),(6,'el guabo'),(7,'huaquillas'),(8,'las lajas'),(9,'marcabeli'),(10,'piñas'),(11,'portovelo');

/*Table structure for table `intervenciones` */

DROP TABLE IF EXISTS `intervenciones`;

CREATE TABLE `intervenciones` (
  `id_intervenciones` int(11) NOT NULL AUTO_INCREMENT,
  `metas` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `indicadores` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `actividades` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `tiempos` date NOT NULL,
  `recursos` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `responsable` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `pfc` int(11) NOT NULL,
  PRIMARY KEY (`id_intervenciones`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `intervenciones` */

insert  into `intervenciones`(`id_intervenciones`,`metas`,`indicadores`,`actividades`,`tiempos`,`recursos`,`responsable`,`pfc`) values (1,'metas','indicadores','actividades','0000-00-00','recursos','responsable',23),(2,'metas','indicadores','actividades','0000-00-00','recursos','responsable',23),(3,'1','2','3','0000-00-00','5','6',23),(4,'1','2','3','0000-00-00','5','6',23),(5,'7','8','9','0000-00-00','11','12',23);

/*Table structure for table `nina` */

DROP TABLE IF EXISTS `nina`;

CREATE TABLE `nina` (
  `id_nina` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_nina` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `direccion` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_nina`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `nina` */

insert  into `nina`(`id_nina`,`nombre_nina`,`fecha_nacimiento`,`direccion`,`telefono`) values (1,'Maria','2018-08-17','Ursesa','xxxxxxxx');

/*Table structure for table `parroquias` */

DROP TABLE IF EXISTS `parroquias`;

CREATE TABLE `parroquias` (
  `id_parroquias` int(11) NOT NULL AUTO_INCREMENT,
  `parroquia` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `canton` int(11) NOT NULL,
  PRIMARY KEY (`id_parroquias`),
  KEY `C_P` (`canton`),
  CONSTRAINT `C_P` FOREIGN KEY (`canton`) REFERENCES `cantones` (`id_cantones`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `parroquias` */

insert  into `parroquias`(`id_parroquias`,`parroquia`,`canton`) values (1,'el retiro',1),(2,'el cambio',1),(3,'la providencia',1),(4,'puerto bolivar',1),(5,'nueve de mayo',1),(6,'carbon',2),(7,'chacras',2),(8,'palmales',2),(9,'ayapamba',3),(10,'cordoncillo',3),(11,'milagro',3),(12,'san jose',3),(13,'san juan de cerro azul',3),(14,'paccha',3);

/*Table structure for table `permisos` */

DROP TABLE IF EXISTS `permisos`;

CREATE TABLE `permisos` (
  `id_permiso` int(11) NOT NULL AUTO_INCREMENT,
  `permiso` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `key` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_permiso`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `permisos` */

insert  into `permisos`(`id_permiso`,`permiso`,`key`) values (1,'Tareas de administracion','admin_access'),(2,'add news','new_news'),(3,'edit news','edit_news'),(4,'delete news','delete_news'),(5,'Dpto. de Talento Humano','admin_dptoTalHum'),(6,'Dpto. de Centro de Computo','admin_dptoCenCom');

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

insert  into `permisos_role`(`role`,`permiso`,`valor`) values (1,1,1),(1,2,1),(1,3,1),(1,4,1),(2,2,1),(2,3,1),(2,4,1),(2,5,1),(3,6,1);

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

/*Table structure for table `pfc` */

DROP TABLE IF EXISTS `pfc`;

CREATE TABLE `pfc` (
  `id_pfc` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_elaboracion` date NOT NULL,
  `fecha_proxima_evaluacion` date NOT NULL,
  `diagnostico_participativo` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `objetivo_general` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `objetivos_especificos` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `parroquias` int(11) NOT NULL,
  PRIMARY KEY (`id_pfc`),
  KEY `PCF_P` (`parroquias`),
  CONSTRAINT `PCF_P` FOREIGN KEY (`parroquias`) REFERENCES `parroquias` (`id_parroquias`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `pfc` */

insert  into `pfc`(`id_pfc`,`fecha_elaboracion`,`fecha_proxima_evaluacion`,`diagnostico_participativo`,`objetivo_general`,`objetivos_especificos`,`parroquias`) values (22,'2018-05-16','2018-06-16','Diagnostico','objetivo','objetivo general',1),(23,'2018-05-16','2018-06-16','Diagnostico','objetivo','objetivo general',1),(24,'2018-05-16','2018-06-16','Diagnostico','objetivo','objetivo general',1),(25,'2018-05-16','2018-06-16','Diagnostico','objetivo','objetivo general',1),(26,'2018-05-16','2018-06-16','Diagnostico','objetivo','objetivo general',1),(28,'2018-05-16','2018-06-16','Diagnostico','objetivo','objetivo general',1);

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `roles` */

insert  into `roles`(`id_role`,`role`) values (1,'Administrador'),(2,'TalentoHumano'),(3,'CentroDeComputo'),(4,'Usuario');

/*Table structure for table `seguimientos_evaluaciones` */

DROP TABLE IF EXISTS `seguimientos_evaluaciones`;

CREATE TABLE `seguimientos_evaluaciones` (
  `id_seguimientos_evaluaciones` int(11) NOT NULL,
  `actividad` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `dificultad` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `resultado` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `observaciones` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `pfc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_seguimientos_evaluaciones`),
  KEY `SE_P` (`pfc`),
  CONSTRAINT `SE_P` FOREIGN KEY (`pfc`) REFERENCES `pfc` (`id_pfc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `seguimientos_evaluaciones` */

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
