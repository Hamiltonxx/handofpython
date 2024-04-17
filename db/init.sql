CREATE DATABASE pydb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS user(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(64) NOT NULL,
    avatar VARCHAR(255),
    phone VARCHAR(32) NOT NULL,
    vericode VARCHAR(255),
    password VARCHAR(255),
    age INT,
    sex VARCHAR(8),
    grade VARCHAR(8),
    createtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS problem(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(64) NOT NULL,
    description TEXT,
    passrate DOUBLE,
    difficulty VARCHAR(8),
    tags VARCHAR(255),
    cid INT,
    chapter INT,
    codeinit TEXT,
    createtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS collection(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(64) NOT NULL,
    author INT,
    createtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS submission(
    id INT PRIMARY KEY AUTO_INCREMENT,
    pid INT,
    codes TEXT,
    userid INT,
    status VARCHAR(8),
    runtime INT,
    memory DOUBLE,
    createtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS vericode(
    id INT PRIMARY KEY AUTO_INCREMENT,
    code INT NOT NULL,
    phone varchar(16) NOT NULL,
    createtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO collection(name) VALUES('Python编程: 从入门到实践');

