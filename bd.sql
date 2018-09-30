/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.25-MariaDB : Database - duenademi2
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

/*Table structure for table `ninas` */

DROP TABLE IF EXISTS `ninas`;

CREATE TABLE `ninas` (
  `id_nina` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `cedula` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `ficha_ingreso` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_nina`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `ninas` */

insert  into `ninas`(`id_nina`,`nombres`,`apellidos`,`cedula`,`telefono`,`email`,`ficha_ingreso`) values (7,' PAULA SIFIA','CALDERON LOBO','0709826357','0968521787','paulob@gmail.com','FICHA DE INGRESO.pdf');

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

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `roles` */

insert  into `roles`(`id_role`,`role`) values (1,'Administrador'),(2,'tutoras');

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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
