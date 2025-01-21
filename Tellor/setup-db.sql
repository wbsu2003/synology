-- setup-db.sql

-- 创建数据库
CREATE DATABASE IF NOT EXISTS tellordb;

-- 创建用户并授权
CREATE USER 'telloruser'@'localhost' IDENTIFIED BY 'tellorpasswd';
GRANT ALL PRIVILEGES ON tellordb.* TO 'telloruser'@'localhost';

-- 创建 boards 表
CREATE TABLE IF NOT EXISTS `boards` (
    `id` BINARY(16) NOT NULL,
    `name` VARCHAR(127) NOT NULL,
    `bgimg` VARCHAR(1023) CHARACTER SET ascii COLLATE ascii_bin,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 创建 lists 表
CREATE TABLE IF NOT EXISTS `lists` (
    `board` BINARY(16) NOT NULL,
    `id` BINARY(16) NOT NULL,
    `color` CHAR(6) CHARACTER SET ascii COLLATE ascii_bin,
    `name` VARCHAR(1023) NOT NULL,
    `ordr` INT(10) UNSIGNED NOT NULL,
    KEY `listsBoardIdx` (`board`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 创建 cards 表
CREATE TABLE IF NOT EXISTS `cards` (
    `board` BINARY(16) NOT NULL,
    `list` BINARY(16) NOT NULL,
    `id` BINARY(16) NOT NULL,
    `parent` CHAR(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
    `title` VARCHAR(1023) NOT NULL,
    `tags` VARCHAR(127) CHARACTER SET ascii COLLATE ascii_bin,
    `cdate` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    `mdate` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    `description` TEXT,
    KEY `cardsBoardIdx` (`board`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 创建 archive 表
CREATE TABLE IF NOT EXISTS `archive` (
    `board` BINARY(16) NOT NULL,
    `list` BINARY(16) NOT NULL,
    `id` BINARY(16) NOT NULL,
    `parent` CHAR(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
    `title` VARCHAR(1023) NOT NULL,
    `tags` VARCHAR(127) CHARACTER SET ascii COLLATE ascii_bin,
    `cdate` DATETIME NOT NULL,
    `mdate` DATETIME NOT NULL,
    `description` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- 创建 history 表
CREATE TABLE IF NOT EXISTS `history` (
    `board` BINARY(16) NOT NULL,
    `cardid` BINARY(16) NOT NULL,
    `type` BINARY(3) NOT NULL,
    `change_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    `patch` BLOB,
    INDEX `historyIdx` (`board`, `cardid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
