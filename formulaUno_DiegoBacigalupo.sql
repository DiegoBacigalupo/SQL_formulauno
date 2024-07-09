CREATE DATABASE `formulauno` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;



CREATE TABLE `drivers_updated` (
  `Pos` int DEFAULT NULL,
  `Driver` text,
  `Nationality` text,
  `id_team` int DEFAULT NULL,
  `PTS` double DEFAULT NULL,
  `year` int DEFAULT NULL,
  `Code` text,
  `id_drivers` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_drivers`),
  KEY `id_team_idx` (`id_team`),
  CONSTRAINT `id_team` FOREIGN KEY (`id_team`) REFERENCES `teams` (`id_team`)
) ENGINE=InnoDB AUTO_INCREMENT=1661 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `fastest_laps_updated` (
  `Grand_Prix` varchar(255) DEFAULT NULL,
  `Driver` text,
  `id_team` int DEFAULT NULL,
  `Time` text,
  `year` int DEFAULT NULL,
  `Code` text,
  `id_fastest_laps` int NOT NULL AUTO_INCREMENT,
  `id_grandprix` int DEFAULT NULL,
  `id_driver` int DEFAULT NULL,
  PRIMARY KEY (`id_fastest_laps`),
  KEY `id_team_idx1` (`id_team`),
  KEY `id_grandprix_idx` (`id_grandprix`),
  KEY `id_driver_idx` (`id_driver`),
  CONSTRAINT `id_driver` FOREIGN KEY (`id_driver`) REFERENCES `id_drivers` (`id_driver`),
  CONSTRAINT `id_grandprix` FOREIGN KEY (`id_grandprix`) REFERENCES `grand_prix` (`id_grandprix`),
  CONSTRAINT `id_teams` FOREIGN KEY (`id_team`) REFERENCES `teams` (`id_team`)
) ENGINE=InnoDB AUTO_INCREMENT=1088 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `grand_prix` (
  `id_grandprix` int NOT NULL AUTO_INCREMENT,
  `grandprix_name` varchar(225) NOT NULL,
  PRIMARY KEY (`id_grandprix`),
  UNIQUE KEY `grandprix_name` (`grandprix_name`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `id_drivers` (
  `id_driver` int NOT NULL AUTO_INCREMENT,
  `driver_name` varchar(225) NOT NULL,
  PRIMARY KEY (`id_driver`),
  UNIQUE KEY `driver_name` (`driver_name`)
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `teams` (
  `id_team` int NOT NULL AUTO_INCREMENT,
  `team_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_team`),
  UNIQUE KEY `team_name` (`team_name`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `teams_updated` (
  `ï»¿Pos` int DEFAULT NULL,
  `PTS` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  `id_team` int DEFAULT NULL,
  `id_teams_updated` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_teams_updated`),
  KEY `id_team_idx` (`id_team`),
  KEY `id_teamm_idx` (`id_team`),
  CONSTRAINT `id_teamm` FOREIGN KEY (`id_team`) REFERENCES `teams` (`id_team`)
) ENGINE=InnoDB AUTO_INCREMENT=694 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `winners` (
  `Grand_Prix` varchar(255) DEFAULT NULL,
  `Date` text,
  `Winner` text,
  `Car` text,
  `Laps` int DEFAULT NULL,
  `Time` text,
  `Name Code` text,
  `id_winners` int NOT NULL AUTO_INCREMENT,
  `id_team` int DEFAULT NULL,
  `id_drivers_win` int DEFAULT NULL,
  `id_grandprix` int DEFAULT NULL,
  PRIMARY KEY (`id_winners`),
  KEY `id_teammm_idx` (`id_team`),
  KEY `id_drivers_idx` (`id_drivers_win`),
  KEY `id_grandprixx_idx` (`id_grandprix`),
  CONSTRAINT `id_grandprixx` FOREIGN KEY (`id_grandprix`) REFERENCES `grand_prix` (`id_grandprix`),
  CONSTRAINT `id_teammm` FOREIGN KEY (`id_team`) REFERENCES `teams` (`id_team`)
) ENGINE=InnoDB AUTO_INCREMENT=1108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
