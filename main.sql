CREATE TABLE table1 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

CREATE TABLE table2 (
    id INT PRIMARY KEY,
    table1_id INT,
    address VARCHAR(50),
    FOREIGN KEY (table1_id) REFERENCES table1(id)
);

CREATE TABLE table3 (
    id INT PRIMARY KEY,
    table1_id INT,
    phone VARCHAR(50),
    FOREIGN KEY (table1_id) REFERENCES table1(id)
);

CREATE TABLE table4 (
    id INT PRIMARY KEY,
    table2_id INT,
    email VARCHAR(50),
    FOREIGN KEY (table2_id) REFERENCES table2(id)
);

CREATE TABLE table5 (
    id INT PRIMARY KEY,
    table3_id INT,
    city VARCHAR(50),
    FOREIGN KEY (table3_id) REFERENCES table3(id)
);

CREATE TABLE table6 (
    id INT PRIMARY KEY,
    table1_id INT,
    grade INT,
    FOREIGN KEY (table1_id) REFERENCES table1(id)
);

INSERT INTO table1 (id, name, age) VALUES
(1, 'Мария Конюшева', 12),
(2, 'Александр Петрик', 13),
(3, 'Владимир Вознесенский', 12),
(4, 'Никита Яровой', 13),
(5, 'Артур Медведев', 14);

INSERT INTO table2 (id, table1_id, address) VALUES
(1, 1, '123 ул. Пушкина'),
(2, 2, '456 ул. Есенина'),
(3, 3, '789 ул. Вольская'),
(4, 4, '101 ул. Маяковского'),
(5, 5, '111 ул. Русская');

INSERT INTO table3 (id, table1_id, phone) VALUES
(1, 1, '555-1234'),
(2, 2, '555-2345'),
(3, 3, '555-3456'),
(4, 4, '555-4567'),
(5, 5, '555-5678');

INSERT INTO table4 (id, table2_id, email) VALUES
(1, 1, 'mary@example.com'),
(2, 2, 'sasha@example.com'),
(3, 3, 'vova@example.com'),
(4, 4, 'nik@example.com'),
(5, 5, 'artur@example.com');

INSERT INTO table5 (id, table3_id, city) VALUES
(1, 1, 'Нижний Новгород'),
(2 ,2,'Москва'),
(3 ,3,'Рязань'),
(4 ,4,'Москва'),
(5 ,5,'Елабуга');

INSERT INTO table6 (id, table1_id, grade) VALUES
(1, 1, 5),
(2, 2, 4),
(3, 3, 3),
(4, 4, 5),
(5, 5, 4);
