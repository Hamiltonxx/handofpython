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

INSERT INTO collection(name) VALUES('Python编程: 从入门到实践');

INSERT INTO problem(title,description,cid,chapter,codeinit) VALUES('打印Hello World', '参考注释行,输入print语句,运行', 1, 1, '# print("Hello, World!")');
INSERT INTO problem(title,description,chapter,codeinit) VALUES('个性化消息', '用变量表示一个人的名字，并向其显示一条消息。显示的消息非常简单: 你好,黄恪瑾,你今天想学点Python吗?', 2, '');
INSERT INTO problem(title,description,chapter,codeinit) VALUES('删除人名中的空白', '用变量表示一个人的名字, 并在其开头和末尾都包含一些空白字符。分别使用函数lstrip(), rstrip() 和 strip()对人名进行处理, 并打印结果', 2, '## 不可改区域\nperson="\tAlbert Einstein\n\n"\n## 不可改区域\n\n## 用lstrip()\n\n##用rstrip()\n\n##用strip()\n');
INSERT INTO problem(title,description,chapter,codeinit) VALUES('文件扩展名', 'Python 提供了 removesuffix() 方法，其工作原理与 removeprefix() 很像。请将值给变量 filename 使用 removesuffix() 方法来显示不包含扩展名的文件名，并打印此文件名。', 2, '## 不可改区域\nfilename="python_notes.txt"\n## 不可改区域\n\n');