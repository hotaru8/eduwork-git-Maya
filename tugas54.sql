-- MySQL Script generated by MySQL Workbench
-- Mon Mar 27 02:17:02 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema db_tugas54
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_tugas54
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_tugas54` ;
USE `db_tugas54` ;

-- -----------------------------------------------------
-- Table `db_tugas54`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_tugas54`.`users` ;

CREATE TABLE IF NOT EXISTS `db_tugas54`.`users` (
  `id` INT NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `nama` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `role` VARCHAR(45) NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `created_id` TIMESTAMP(12) NOT NULL,
  `updated_id` TIMESTAMP(12) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_tugas54`.`categories`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_tugas54`.`categories` ;

CREATE TABLE IF NOT EXISTS `db_tugas54`.`categories` (
  `id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `code` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `slug` VARCHAR(45) NOT NULL,
  `description` TEXT(100) NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `photo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_tugas54`.`product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_tugas54`.`product` ;

CREATE TABLE IF NOT EXISTS `db_tugas54`.`product` (
  `id` INT NOT NULL,
  `category_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `code` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `slug` VARCHAR(45) NOT NULL,
  `description` LONGTEXT NULL,
  `photo` VARCHAR(45) NOT NULL,
  `qty` DOUBLE NOT NULL,
  `unit` VARCHAR(45) NOT NULL,
  `price` DOUBLE NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;