CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Orders (
    OrderID SERIAL PRIMARY KEY,
    CustomerID INT NOT NULL, 
    OrderDate TIMESTAMP NOT NULL,
    TotalAmount NUMERIC(12, 2) NOT NULL,
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    UnitPrice NUMERIC(10, 2) NOT NULL
);

CREATE TABLE OrderDetails (
    OrderDetailID SERIAL PRIMARY KEY,
    OrderID INTEGER NOT NULL,
    ProductID INTEGER NOT NULL,
    Quantity INTEGER NOT NULL,
    UnitPrice NUMERIC(10, 2) NOT NULL,
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Customers (FirstName, LastName, Email) VALUES
('Иван', 'Иванов', 'ivan.ivanov@example.com'),
('Петр', 'Петров', 'petr.petrov@example.com'),
('Сергей', 'Смирнов', 'sergey.smirnov@example.com'),
('Алексей', 'Кузнецов', 'alexey.kuznetsov@example.com'),
('Дмитрий', 'Попов', 'dmitry.popov@example.com'),
('Михаил', 'Васильев', 'mikhail.vasilev@example.com'),
('Николай', 'Соколов', 'nikolay.sokolov@example.com'),
('Андрей', 'Михайлов', 'andrey.mikhailov@example.com'),
('Екатерина', 'Новикова', 'ekaterina.novikova@example.com'),
('Ольга', 'Федорова', 'olga.fedorova@example.com'),
('Анна', 'Морозова', 'anna.morozova@example.com'),
('Мария', 'Волкова', 'maria.volkova@example.com'),
('Татьяна', 'Алексеева', 'tatiana.alekseeva@example.com'),
('Наталья', 'Лебедева', 'natalia.lebedeva@example.com'),
('Елена', 'Семенова', 'elena.semenova@example.com'),
('Игорь', 'Егоров', 'igor.egorov@example.com'),
('Владимир', 'Павлов', 'vladimir.pavlov@example.com'),
('Роман', 'Козлов', 'roman.kozlov@example.com'),
('Константин', 'Степанов', 'konstantin.stepanov@example.com'),
('Виктория', 'Николаева', 'victoria.nikolaeva@example.com'),
('Юлия', 'Орлова', 'julia.orlova@example.com'),
('Алина', 'Андреева', 'alina.andreeva@example.com'),
('Полина', 'Макарова', 'polina.makarova@example.com'),
('Светлана', 'Зайцева', 'svetlana.zaitseva@example.com'),
('Кирилл', 'Соловьев', 'kirill.soloviev@example.com'),
('Максим', 'Борисов', 'maxim.borisov@example.com'),
('Александр', 'Крылов', 'alexander.krylov@example.com'),
('Василий', 'Григорьев', 'vasiliy.grigoriev@example.com'),
('Владислав', 'Мельников', 'vladislav.melnikov@example.com'),
('Евгений', 'Медведев', 'evgeny.medvedev@example.com');

INSERT INTO Products (ProductName, UnitPrice) VALUES
('Смартфон Apple iPhone 13', 79900),
('Ноутбук ASUS ZenBook 14', 69900),
('Планшет Samsung Galaxy Tab S7', 49900),
('Телевизор LG OLED55', 119900),
('Наушники Sony WH-1000XM4', 19900),
('Фитнес-браслет Xiaomi Mi Band 6', 3500),
('Часы Apple Watch Series 6', 39900),
('Монитор Dell UltraSharp 27"', 25900),
('Принтер HP LaserJet Pro', 15900),
('Кофеварка DeLonghi Magnifica', 29900),
('Микроволновая печь Samsung', 8900),
('Фотоаппарат Canon EOS M50', 54900),
('Игровая консоль Sony PlayStation 5', 49900),
('Видеокарта NVIDIA GeForce RTX 3080', 69900),
('Стиральная машина Bosch', 44900),
('Холодильник Samsung Side-by-Side', 79900),
('Электросамокат Xiaomi Mi Electric Scooter', 29900),
('Внешний жесткий диск Seagate 2TB', 5900),
('Смарт-колонка Яндекс.Станция', 9900),
('Проектор Epson EH-TW7000', 79900),
('Электрогриль Tefal OptiGrill', 12900),
('Камера GoPro HERO9', 39900),
('Роутер TP-Link Archer AX50', 7900),
('USB флеш-накопитель SanDisk 128GB', 1900),
('Мышь Logitech MX Master 3', 6900),
('Клавиатура Microsoft Surface', 4900),
('Сканер Epson Perfection V600', 24900),
('Видеоняня Philips Avent', 11900),
('Наушники Apple AirPods Pro', 24900),
('Геймпад Microsoft Xbox Series X', 5900);

INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1, '2023-10-01 10:15:00', 79900),
(2, '2023-10-02 12:30:00', 159800),
(3, '2023-10-03 15:45:00', 49900),
(4, '2023-10-04 09:20:00', 69900),
(5, '2023-10-05 14:50:00', 119900),
(6, '2023-10-06 11:35:00', 19900),
(7, '2023-10-07 16:40:00', 3500),
(8, '2023-10-08 13:25:00', 105800),
(9, '2023-10-09 17:55:00', 25900),
(10, '2023-10-10 10:05:00', 15900),
(11, '2023-10-11 12:15:00', 29900),
(12, '2023-10-12 14:25:00', 8900),
(13, '2023-10-13 16:35:00', 54900),
(14, '2023-10-14 11:45:00', 49900),
(15, '2023-10-15 13:55:00', 139800),
(16, '2023-10-16 15:05:00', 44900),
(17, '2023-10-17 09:15:00', 79900),
(18, '2023-10-18 11:25:00', 35800),
(19, '2023-10-19 13:35:00', 5900),
(20, '2023-10-20 15:45:00', 83700),
(21, '2023-10-21 17:55:00', 79900),
(22, '2023-10-22 10:00:00', 12900),
(23, '2023-10-23 12:10:00', 39900),
(24, '2023-10-24 14:20:00', 7900),
(25, '2023-10-25 16:30:00', 36800),
(26, '2023-10-26 09:40:00', 6900),
(27, '2023-10-27 11:50:00', 4900),
(28, '2023-10-28 14:00:00', 24900),
(29, '2023-10-29 16:10:00', 11900),
(30, '2023-10-30 18:20:00', 24900);

INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice) VALUES
(1, 1, 1, 79900),
(2, 2, 1, 69900),
(2, 5, 2, 19900),
(3, 3, 1, 49900),
(4, 4, 1, 69900),
(5, 5, 1, 119900),
(6, 6, 1, 19900),
(7, 6, 1, 3500),
(8, 1, 1, 79900),
(8, 8, 1, 25900),
(9, 9, 1, 15900),
(10, 10, 1, 29900),
(11, 11, 1, 8900),
(12, 12, 1, 54900),
(13, 13, 1, 49900),
(14, 14, 1, 69900),
(15, 2, 2, 69900),
(15, 5, 1, 19900),
(16, 15, 1, 44900),
(17, 16, 1, 79900),
(18, 17, 1, 29900),
(18, 24, 1, 5900),
(19, 18, 1, 5900),
(20, 20, 1, 79900),
(20, 18, 1, 5900),
(21, 21, 1, 12900),
(22, 22, 1, 39900),
(23, 23, 1, 7900),
(24, 24, 1, 1900),
(25, 25, 1, 6900),
(25, 26, 1, 4900),
(25, 28, 1, 24900),
(26, 25, 1, 6900),
(27, 26, 1, 4900),
(28, 27, 1, 24900),
(29, 28, 1, 11900),
(30, 29, 1, 24900);


--7
-- Запрос возвращает список клиентов с их именами, фамилиями и суммарной стоимостью заказов.
-- Он объединяет таблицы Customers и Orders по CustomerID и суммирует TotalAmount для каждого клиента.

SELECT Customers.FirstName, Customers.LastName, SUM(Orders.TotalAmount) AS TotalOrderValue
FROM Customers 
JOIN Orders ON Customers.CustomerID = Orders.CustomerID  -- Объединение таблиц Customers и Orders по общему полю CustomerID
GROUP BY Customers.CustomerID, Customers.FirstName, Customers.LastName;  -- Группировка по уникальному идентификатору, имени и фамилии клиента 

--8
-- Этот запрос расширяет предыдущий, добавляя сортировку по суммарной стоимости заказов в порядке убывания.

SELECT Customers.FirstName, Customers.LastName, SUM(Orders.TotalAmount) AS TotalOrderValue
FROM Customers 
JOIN Orders ON Customers.CustomerID = Orders.CustomerID  -- Объединение таблиц по CustomerID
GROUP BY Customers.CustomerID, Customers.FirstName, Customers.LastName  -- Группировка по уникальному идентификатору, имени и фамилии клиента
ORDER BY TotalOrderValue DESC;  -- Сортировка результатов по сумме заказов каждого клиента в порядке убывания

--9
-- Запрос дополняет предыдущий, добавляя столбец со средней суммарной стоимостью заказов всех клиентов.

SELECT
    Customers.FirstName,  -- Выбираем имя клиента из таблицы Customers
    Customers.LastName,   -- Выбираем фамилию клиента из таблицы Customers
    SUM(Orders.TotalAmount) AS TotalOrderAmount,  -- Вычисляем суммарную стоимость заказов данного клиента
    ROUND(AVG(SUM(Orders.TotalAmount)) OVER (), 3) AS AverageTotalOrderAmount   -- Вычисляем среднюю суммарную стоимость заказов по всем клиентам
FROM
    Customers 
JOIN
    Orders ON Customers.CustomerID = Orders.CustomerID   -- Объединение таблиц по CustomerID
GROUP BY
    Customers.CustomerID, Customers.FirstName, Customers.LastName  -- Группируем результаты по клиенту 
ORDER BY
    TotalOrderAmount DESC;   -- Сортируем список по убыванию суммарной стоимости заказов клиента

--10
-- Определяем временную таблицу CustomerTotals с помощью CTE (Common Table Expression)
WITH CustomerTotals AS (
    SELECT 
        Customers.FirstName, -- Выбираем имя клиента
        Customers.LastName, -- Выбираем фамилию клиента
        SUM(Orders.TotalAmount) AS TotalAmount --Выбираем суммарную стоимость заказов для каждого клиента
    FROM 
        Customers
    JOIN 
        Orders ON Customers.CustomerID = Orders.CustomerID ---- Объединяем таблицы Customers и Orders по полю CustomerID
    GROUP BY 
        Customers.CustomerID, Customers.FirstName, Customers.LastName  -- Группируем результаты по клиенту 
)

---- Выбираем из временной таблицы клиентов с наибольшей суммарной стоимостью заказов

SELECT 
    FirstName, 
    LastName, 
    TotalAmount
FROM 
    CustomerTotals
--TotalAmount равен максимальному значению суммарной стоимости заказов среди всех клиентов
WHERE 
    TotalAmount = (SELECT MAX(TotalAmount) FROM CustomerTotals);

--11
-- Определяем временную таблицу CustomerTotals с помощью CTE (Common Table Expression)
WITH CustomerTotals AS (
    -- Выбираем идентификатор клиента, имя, фамилию, общую сумму заказов и максимальную общую сумму заказов среди всех клиентов
    SELECT
        Customers.CustomerID,           -- Уникальный идентификатор клиента
        Customers.FirstName,            -- Имя клиента
        Customers.LastName,             -- Фамилия клиента
        SUM(Orders.TotalAmount) AS TotalOrderValue,        -- Суммарная стоимость всех заказов данного клиента
        MAX(SUM(Orders.TotalAmount)) OVER () AS MaxTotalOrderValue  -- Максимальная суммарная стоимость заказов среди всех клиентов
    FROM
        Customers
        JOIN Orders ON Customers.CustomerID = Orders.CustomerID  -- Соединяем таблицы Customers и Orders по CustomerID
    GROUP BY
        Customers.CustomerID,          -- Группируем по идентификатору клиента
        Customers.FirstName,           -- Группируем по имени клиента
        Customers.LastName             -- Группируем по фамилии клиента
)
-- Основной запрос: выбираем информацию о заказах клиентов с максимальным общим объемом заказов
SELECT
    Orders.OrderID,                    -- Уникальный идентификатор заказа
    Orders.TotalAmount,                -- Сумма заказа
    CustomerTotals.FirstName,          -- Имя клиента
    CustomerTotals.LastName            -- Фамилия клиента
FROM
    CustomerTotals
    JOIN Orders ON CustomerTotals.CustomerID = Orders.CustomerID  -- Соединяем временную таблицу CustomerTotals с таблицей Orders по CustomerID
WHERE
    CustomerTotals.TotalOrderValue = CustomerTotals.MaxTotalOrderValue  -- Фильтруем только тех клиентов, у которых общая сумма заказов равна максимальной
ORDER BY
    Orders.TotalAmount ASC;            -- Сортируем результаты по сумме заказа в порядке возрастания

--12
-- Определяем временную таблицу CustomerTotals с помощью CTE (Common Table Expression)
WITH CustomerTotals AS (
    -- Выбираем идентификатор клиента, имя, фамилию и суммарную стоимость всех его заказов
    SELECT
        Customers.CustomerID,           -- Уникальный идентификатор клиента
        Customers.FirstName,            -- Имя клиента
        Customers.LastName,             -- Фамилия клиента
        SUM(Orders.TotalAmount) AS TotalOrderValue  -- Суммарная стоимость всех заказов данного клиента
    FROM
        Customers
        JOIN Orders ON Customers.CustomerID = Orders.CustomerID  -- Соединяем таблицы Customers и Orders по полю CustomerID
    GROUP BY
        Customers.CustomerID,          -- Группируем по идентификатору клиента
        Customers.FirstName,           -- Группируем по имени клиента
        Customers.LastName             -- Группируем по фамилии клиента
),
-- Вычисляем среднюю суммарную стоимость заказов среди всех клиентов
AverageTotal AS (
    SELECT
        AVG(TotalOrderValue) AS AverageTotalOrderValue  -- Средняя суммарная стоимость заказов клиентов
    FROM
        CustomerTotals
)
-- Основной запрос: выбираем информацию о клиентах, чья суммарная стоимость заказов превышает среднюю
SELECT
    CustomerTotals.FirstName,          -- Имя клиента
    CustomerTotals.LastName,           -- Фамилия клиента
    CustomerTotals.TotalOrderValue,    -- Суммарная стоимость заказов клиента
    ROUND(AverageTotal.AverageTotalOrderValue,3) AS AverageTotalOrderValue -- Средняя суммарная стоимость заказов клиентов
FROM
    CustomerTotals,
    AverageTotal
WHERE   -- Фильтруем только тех клиентов, у которых суммарная стоимость заказов превышает среднюю
    CustomerTotals.TotalOrderValue > AverageTotal.AverageTotalOrderValue; 
    