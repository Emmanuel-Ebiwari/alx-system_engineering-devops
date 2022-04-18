-- Create database tyrell_corp
-- and table nexus6

CREATE DATABASE IF NOT EXISTS tyrell_corp;
USE tyrell_corp;
CREATE TABLE IF NOT EXISTS `nexus6` (
  `id` int NOT NULL AUTO_INCREMENT UNIQUE,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `tyrell_corp`.`nexus6` (`name`) VALUES ('Leon');
