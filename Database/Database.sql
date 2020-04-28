CREATE DATABASE  IF NOT EXISTS `carport`;


USE `carport`;


DROP TABLE IF EXISTS `requests`;
DROP TABLE IF EXISTS `accounts`;
DROP TABLE IF EXISTS `stockToCategory`;
DROP TABLE IF EXISTS `categories`;
DROP TABLE IF EXISTS `stock`;
DROP TABLE IF EXISTS `roof coating`;
DROP TABLE IF EXISTS `shed clothing`;

CREATE TABLE `stock` (
  `ref` VARCHAR(100) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `length` INT NOT NULL,
  `amount` INT NOT NULL,
  `unit` VARCHAR(45) NOT NULL,
  `price` INT NOT NULL,
  PRIMARY KEY (`ref`)
);

CREATE TABLE `roof coating` (
  `roofid` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `price` INT NOT NULL,
  PRIMARY KEY (`roofid`)
);

CREATE TABLE `shed clothing` (
  `shedid` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `price` INT NOT NULL,
  PRIMARY KEY (`shedid`)
);

CREATE TABLE `categories` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `stockToCategory` (
  `stockRef` VARCHAR(100) NOT NULL,
  `categoryId` INT NOT NULL,
  PRIMARY KEY (`stockRef`, `categoryId`),
  INDEX `categoryId_FK_idx` (`categoryId` ASC) VISIBLE,
  CONSTRAINT `stockRef_FK`
    FOREIGN KEY (`stockRef`)
    REFERENCES `stock` (`ref`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `categoryId_FK`
    FOREIGN KEY (`categoryId`)
    REFERENCES `categories` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE `accounts` (
	`email` VARCHAR(100) NOT NULL,
	`password` VARCHAR(100) NOT NULL,
	`role` ENUM('ADMIN', 'EMPLOYEE', 'CUSTOMER') NOT NULL DEFAULT 'CUSTOMER',
	`name` VARCHAR(100) NOT NULL,
	`address` VARCHAR(100) NOT NULL,
	`zipCity` VARCHAR(200) NOT NULL,
	`phone` VARCHAR(30) NOT NULL, 
	PRIMARY KEY (`email`)
);

CREATE TABLE `requests` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`roofid` INT NOT NULL,
	`shedid` INT default NULL,
	`width` INT NOT NULL,
	`length` INT NOT NULL,
	`shedWidth` INT NOT NULL,
	`shedLength` INT NOT NULL,
	`angle` INT NOT NULL, 
	`note` VARCHAR(500) NOT NULL, 
	`email` VARCHAR(100) NOT NULL,
	PRIMARY KEY(`id`),
	INDEX `emailFK_idx` (`email` ASC) VISIBLE,
	CONSTRAINT `emailFK`
		FOREIGN KEY (`email`)
		REFERENCES `accounts` (`email`)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT `shedidFK`
		FOREIGN KEY (`shedid`)
		REFERENCES `shed clothing` (`shedid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT `roofidFK`
		FOREIGN KEY (`roofid`)
		REFERENCES `roof coating` (`roofid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
);

