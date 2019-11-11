-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema petdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `petdb` ;

-- -----------------------------------------------------
-- Schema petdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `petdb` DEFAULT CHARACTER SET utf8 ;
USE `petdb` ;

-- -----------------------------------------------------
-- Table `pet`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pet` ;

CREATE TABLE IF NOT EXISTS `pet` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `species` VARCHAR(45) NULL,
  `age` INT NULL,
  `location_state` VARCHAR(45) NULL,
  `description` VARCHAR(150) NULL,
  `gender` VARCHAR(1) NULL,
  `color` VARCHAR(30) NULL,
  `health` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;

SET SQL_MODE = '';
DROP USER IF EXISTS vent@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'vent'@'localhost' IDENTIFIED BY 'vent';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'vent'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `pet`
-- -----------------------------------------------------
START TRANSACTION;
USE `petdb`;
INSERT INTO `pet` (`id`, `name`, `species`, `age`, `location_state`, `description`, `gender`, `color`, `health`) VALUES (1, 'Luna', 'Rabbit', 1, 'Colorado', 'A rather curious Holland Lop', 'F', 'Black', 'Healthy');
INSERT INTO `pet` (`id`, `name`, `species`, `age`, `location_state`, `description`, `gender`, `color`, `health`) VALUES (2, 'Cosmos', 'Dog', 5, 'Florida', 'A sweet Great Dane who wishes to please', 'M', 'Black w/ gray spots', 'Healthy');
INSERT INTO `pet` (`id`, `name`, `species`, `age`, `location_state`, `description`, `gender`, `color`, `health`) VALUES (3, 'Henry', 'Cat', 3, 'California', 'A playful cat who can get really aggressive ', 'M', 'Brown', 'Sick');
INSERT INTO `pet` (`id`, `name`, `species`, `age`, `location_state`, `description`, `gender`, `color`, `health`) VALUES (4, 'Katana', 'Dog', 8, 'Florida', 'Katana is a very friendly Great Dane who is a very good girl', 'F', 'Harlequin', 'Severely sick');
INSERT INTO `pet` (`id`, `name`, `species`, `age`, `location_state`, `description`, `gender`, `color`, `health`) VALUES (5, 'Snow', 'Rat', 4, 'Colorado', 'Very skiddish rat who loves to hide', 'M', 'White', 'Sick');

COMMIT;

