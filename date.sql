CREATE DATABASE EducationDB; -- データベースの作成

USE EducationDB; -- データベースを選択

CREATE TABLE prefectures (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    slug VARCHAR(255)
);

CREATE TABLE areas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    slug VARCHAR(255),
    pref_id INT,
    FOREIGN KEY (pref_id) REFERENCES prefectures(id)
);

CREATE TABLE grades (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    slug VARCHAR(255)
);

CREATE TABLE brands (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    class_format VARCHAR(255),
    grade_ids VARCHAR(255) -- このフィールドは多対多のリレーションを表現するための一時的な解決策です。正しくは別テーブルを作成してリレーションを表現するべきです。
);

CREATE TABLE schools (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    address VARCHAR(255),
    area_id INT,
    FOREIGN KEY (area_id) REFERENCES areas(id)
);
