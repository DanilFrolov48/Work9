CREATE TABLE IF NOT EXISTS Врачи (
    ID_врач SERIAL PRIMARY KEY,
    Фамилия VARCHAR(50) NOT NULL,
    Имя VARCHAR(50) NOT NULL,
    Отчество VARCHAR(50) NOT NULL,
    Почта_Рабочая VARCHAR(100) NOT NULL UNIQUE,
    Стоимость_приема NUMERIC(10, 2) NOT NULL,
    Процент_отчисления_на_зарплату NUMERIC(5, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS Пациенты (
    ID_пациент SERIAL PRIMARY KEY,
    Фамилия VARCHAR(50) NOT NULL,
    Имя VARCHAR(50) NOT NULL,
    Отчество VARCHAR(50) NOT NULL,
    Телефон VARCHAR(15) NOT NULL UNIQUE,
    Дата_Рождения DATE NOT NULL,
    Адрес_Пациента VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS Специальность (
    ID_специальность SERIAL PRIMARY KEY,
    Название_Специальности VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Специализация_Врача (
    ID_врач_спец SERIAL PRIMARY KEY,
    ID_врач INT NOT NULL,
    ID_специальность INT NOT NULL,
    FOREIGN KEY (ID_врач) REFERENCES Врачи(ID_врач),
    FOREIGN KEY (ID_специальность) REFERENCES Специальность(ID_специальность)
);

CREATE TABLE IF NOT EXISTS Приемы (
    ID_прием SERIAL PRIMARY KEY,
    Дата_приема TIMESTAMP NOT NULL,
    ID_врач INT NOT NULL,
    ID_пациент INT NOT NULL,
    FOREIGN KEY (ID_врач) REFERENCES Врачи(ID_врач),
    FOREIGN KEY (ID_пациент) REFERENCES Пациенты(ID_пациент)
);

CREATE TABLE IF NOT EXISTS Квитанция_об_оплате (
    ID_квитанция SERIAL PRIMARY KEY,
    Способ_оплаты VARCHAR(50) NOT NULL,
    ID_прием INT NOT NULL,
    FOREIGN KEY (ID_прием) REFERENCES Приемы(ID_прием)
);

CREATE TABLE IF NOT EXISTS Зарплата_Врача (
    ID_зарплата SERIAL PRIMARY KEY,
    Год INT NOT NULL,
    Месяц INT NOT NULL,
    Зарплата_За_Месяц NUMERIC(10, 2) NOT NULL,
    ID_врач INT NOT NULL,
    FOREIGN KEY (ID_врач) REFERENCES Врачи(ID_врач)
);



INSERT INTO Специальность (Название_Специальности)
VALUES
('Терапевт'),
('Хирург'),
('Педиатр'),
('Невролог'),
('Кардиолог'),
('Офтальмолог'),
('Стоматолог'),
('Эндокринолог'),
('Дерматолог'),
('Ревматолог'),
('Аллерголог'),
('Гастроэнтеролог'),
('Гинеколог'),
('Иммунолог'),
('Инфекционист'),
('Нефролог'),
('Онколог'),
('Отоларинголог'),
('Пульмонолог'),
('Проктолог'),
('Психиатр'),
('Радиолог'),
('Травматолог'),
('Уролог'),
('Физиотерапевт'),
('Эндоскопист'),
('Эпидемиолог'),
('Анестезиолог'),
('Гематолог'),
('Микробиолог');

INSERT INTO Врачи (Фамилия, Имя, Отчество, Почта_Рабочая, Стоимость_приема, Процент_отчисления_на_зарплату)
VALUES
('Иванов', 'Иван', 'Иванович', 'ivanov1@clinic.com', 1000.00, 10.0),
('Петров', 'Петр', 'Петрович', 'petrov2@clinic.com', 1200.00, 12.0),
('Сидоров', 'Сидор', 'Сидорович', 'sidorov3@clinic.com', 1100.00, 11.0),
('Кузнецов', 'Алексей', 'Николаевич', 'kuznetsov4@clinic.com', 1300.00, 13.0),
('Попова', 'Мария', 'Александровна', 'popova5@clinic.com', 1150.00, 10.5),
('Соколова', 'Елена', 'Сергеевна', 'sokolova6@clinic.com', 1250.00, 12.5),
('Морозов', 'Дмитрий', 'Васильевич', 'morozov7@clinic.com', 1400.00, 14.0),
('Волкова', 'Ольга', 'Игоревна', 'volkova8@clinic.com', 950.00, 9.5),
('Федоров', 'Сергей', 'Михайлович', 'fedorov9@clinic.com', 1050.00, 10.5),
('Васильева', 'Анна', 'Дмитриевна', 'vasilyeva10@clinic.com', 1350.00, 13.5),
('Михайлова', 'Татьяна', 'Евгеньевна', 'mikhailova11@clinic.com', 1450.00, 14.5),
('Новиков', 'Виктор', 'Александрович', 'novikov12@clinic.com', 1250.00, 12.0),
('Кравцов', 'Николай', 'Павлович', 'kravtsov13@clinic.com', 1150.00, 11.5),
('Николаева', 'Наталья', 'Николаевна', 'nikolaeva14@clinic.com', 1300.00, 13.0),
('Семенов', 'Илья', 'Олегович', 'semenov15@clinic.com', 1200.00, 12.0),
('Сергеев', 'Владимир', 'Геннадьевич', 'sergeev16@clinic.com', 1100.00, 11.0),
('Зайцева', 'Екатерина', 'Владимировна', 'zaitseva17@clinic.com', 1000.00, 10.0),
('Павлова', 'Ирина', 'Анатольевна', 'pavlova18@clinic.com', 950.00, 9.5),
('Борисов', 'Борис', 'Борисович', 'borisov19@clinic.com', 1050.00, 10.5),
('Киселев', 'Александр', 'Федорович', 'kiselev20@clinic.com', 1150.00, 11.5),
('Макаров', 'Максим', 'Степанович', 'makarov21@clinic.com', 1250.00, 12.5),
('Андреева', 'Евгения', 'Андреевна', 'andreeva22@clinic.com', 1350.00, 13.5),
('Ковалева', 'Людмила', 'Аркадьевна', 'kovaleva23@clinic.com', 1450.00, 14.5),
('Ильин', 'Игорь', 'Львович', 'ilin24@clinic.com', 1000.00, 10.0),
('Григорьев', 'Григорий', 'Викторович', 'grigorev25@clinic.com', 1100.00, 11.0),
('Титов', 'Тимур', 'Владиславович', 'titov26@clinic.com', 1200.00, 12.0),
('Маслов', 'Михаил', 'Андреевич', 'maslov27@clinic.com', 1300.00, 13.0),
('Романов', 'Роман', 'Романович', 'romanov28@clinic.com', 1400.00, 14.0),
('Орлова', 'Олеся', 'Петровна', 'orlova29@clinic.com', 950.00, 9.5),
('Карпов', 'Константин', 'Станиславович', 'karpov30@clinic.com', 1050.00, 10.5);


INSERT INTO Пациенты (Фамилия, Имя, Отчество, Телефон, Дата_Рождения, Адрес_Пациента)
VALUES
('Смирнова', 'Александра', 'Петровна', '+79010000001', '1985-01-15', 'ул. Ленина, д.1'),
('Кузнецов', 'Алексей', 'Викторович', '+79010000002', '1990-02-20', 'ул. Пушкина, д.2'),
('Соколова', 'Мария', 'Игоревна', '+79010000003', '1978-03-25', 'ул. Гагарина, д.3'),
('Попов', 'Дмитрий', 'Александрович', '+79010000004', '1983-04-30', 'ул. Советская, д.4'),
('Волкова', 'Елена', 'Сергеевна', '+79010000005', '1992-05-05', 'ул. Мира, д.5'),
('Лебедев', 'Иван', 'Николаевич', '+79010000006', '1987-06-10', 'ул. Кузнецова, д.6'),
('Козлова', 'Ольга', 'Владимировна', '+79010000007', '1995-07-15', 'ул. Чапаева, д.7'),
('Новиков', 'Павел', 'Васильевич', '+79010000008', '1980-08-20', 'ул. Чехова, д.8'),
('Морозова', 'Наталья', 'Ильинична', '+79010000009', '1975-09-25', 'ул. Свердлова, д.9'),
('Петров', 'Сергей', 'Михайлович', '+79010000010', '1988-10-30', 'ул. Комсомольская, д.10'),
('Воробьева', 'Татьяна', 'Андреевна', '+79010000011', '1991-11-05', 'ул. Крупской, д.11'),
('Зайцев', 'Владимир', 'Олегович', '+79010000012', '1982-12-10', 'ул. Победы, д.12'),
('Соловьева', 'Ирина', 'Дмитриевна', '+79010000013', '1979-01-15', 'ул. Энтузиастов, д.13'),
('Борисов', 'Михаил', 'Федорович', '+79010000014', '1986-02-20', 'ул. Труда, д.14'),
('Яковлева', 'Светлана', 'Евгеньевна', '+79010000015', '1993-03-25', 'ул. Молодежная, д.15'),
('Григорьев', 'Никита', 'Борисович', '+79010000016', '1981-04-30', 'ул. Космонавтов, д.16'),
('Романова', 'Екатерина', 'Станиславовна', '+79010000017', '1989-05-05', 'ул. Звездная, д.17'),
('Орлов', 'Андрей', 'Викторович', '+79010000018', '1977-06-10', 'ул. Садовая, д.18'),
('Серова', 'Анна', 'Григорьевна', '+79010000019', '1994-07-15', 'ул. Парковая, д.19'),
('Максимов', 'Максим', 'Константинович', '+79010000020', '1984-08-20', 'ул. Новая, д.20'),
('Михайлова', 'Валерия', 'Романовна', '+79010000021', '1990-09-25', 'ул. Центральная, д.21'),
('Александров', 'Александр', 'Сергеевич', '+79010000022', '1983-10-30', 'ул. Северная, д.22'),
('Федорова', 'Вероника', 'Александровна', '+79010000023', '1987-11-05', 'ул. Южная, д.23'),
('Степанов', 'Степан', 'Денисович', '+79010000024', '1992-12-10', 'ул. Восточная, д.24'),
('Егорова', 'Евгения', 'Павловна', '+79010000025', '1985-01-15', 'ул. Западная, д.25'),
('Павлов', 'Виталий', 'Алексеевич', '+79010000026', '1978-02-20', 'ул. Строителей, д.26'),
('Козлов', 'Виктор', 'Леонидович', '+79010000027', '1991-03-25', 'ул. Лесная, д.27'),
('Крылова', 'Кристина', 'Олеговна', '+79010000028', '1986-04-30', 'ул. Полевая, д.28'),
('Дмитриев', 'Дмитрий', 'Иванович', '+79010000029', '1989-05-05', 'ул. Школьная, д.29'),
('Николаев', 'Петр', 'Николаевич', '+79010000030', '1979-06-10', 'ул. Солнечная, д.30');

INSERT INTO Специализация_Врача (ID_врач, ID_специальность)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(1, 5),
(2, 10),
(3, 15),
(4, 20),
(5, 25),
(6, 30),
(7, 1),
(8, 2),
(9, 3),
(10, 4);

INSERT INTO Приемы (Дата_приема, ID_врач, ID_пациент)
VALUES
('2023-10-01 09:00:00', 3, 12),
('2023-10-01 10:00:00', 5, 24),
('2023-10-01 11:00:00', 2, 7),
('2023-10-01 12:00:00', 8, 18),
('2023-10-02 09:00:00', 1, 30),
('2023-10-02 10:30:00', 7, 5),
('2023-10-02 11:30:00', 4, 22),
('2023-10-02 13:00:00', 6, 9),
('2023-10-03 09:15:00', 10, 15),
('2023-10-03 10:15:00', 9, 27),
('2023-10-03 11:45:00', 2, 3),
('2023-10-03 13:15:00', 5, 19),
('2023-10-04 09:30:00', 8, 11),
('2023-10-04 10:30:00', 1, 17),
('2023-10-04 11:00:00', 7, 29),
('2023-10-04 13:30:00', 3, 6),
('2023-10-05 09:45:00', 6, 21),
('2023-10-05 10:45:00', 4, 8),
('2023-10-05 12:15:00', 9, 14),
('2023-10-05 13:45:00', 10, 25),
('2023-10-06 09:00:00', 2, 2),
('2023-10-06 10:30:00', 5, 16),
('2023-10-06 11:30:00', 8, 28),
('2023-10-06 13:00:00', 1, 4),
('2023-10-07 09:15:00', 7, 20),
('2023-10-07 10:15:00', 3, 10),
('2023-10-07 11:45:00', 6, 26),
('2023-10-07 13:15:00', 4, 13),
('2023-10-08 09:30:00', 9, 1),
('2023-10-08 10:30:00', 10, 23);


INSERT INTO Квитанция_об_оплате (Способ_оплаты, ID_прием)
VALUES
('Банковская карта', 1),
('Наличные', 2),
('Онлайн оплата', 3),
('Мобильное приложение', 4),
('Банковская карта', 5),
('Наличные', 6),
('Онлайн оплата', 7),
('Мобильное приложение', 8),
('Банковская карта', 9),
('Наличные', 10),
('Онлайн оплата', 11),
('Мобильное приложение', 12),
('Банковская карта', 13),
('Наличные', 14),
('Онлайн оплата', 15),
('Мобильное приложение', 16),
('Банковская карта', 17),
('Наличные', 18),
('Онлайн оплата', 19),
('Мобильное приложение', 20),
('Банковская карта', 21),
('Наличные', 22),
('Онлайн оплата', 23),
('Мобильное приложение', 24),
('Банковская карта', 25),
('Наличные', 26),
('Онлайн оплата', 27),
('Мобильное приложение', 28),
('Банковская карта', 29),
('Наличные', 30);

INSERT INTO Зарплата_Врача (Год, Месяц, Зарплата_За_Месяц, ID_врач)
VALUES
(2023, 1, 50000.00, 3),
(2023, 2, 52000.00, 5),
(2023, 3, 48000.00, 10),
(2023, 4, 55000.00, 2),
(2023, 5, 53000.00, 8),
(2023, 6, 51000.00, 15),
(2023, 7, 54000.00, 7),
(2023, 8, 50000.00, 12),
(2023, 9, 52000.00, 4),
(2023, 10, 51000.00, 20),
(2023, 11, 53000.00, 1),
(2023, 12, 55000.00, 25),
(2024, 1, 56000.00, 17),
(2024, 2, 57000.00, 6),
(2024, 3, 58000.00, 19),
(2024, 4, 59000.00, 11),
(2024, 5, 60000.00, 22),
(2024, 6, 61000.00, 9),
(2024, 7, 62000.00, 14),
(2024, 8, 63000.00, 28),
(2024, 9, 64000.00, 16),
(2024, 10, 65000.00, 24),
(2024, 11, 66000.00, 13),
(2024, 12, 67000.00, 27),
(2023, 3, 52000.00, 18),
(2023, 6, 53000.00, 30),
(2023, 9, 54000.00, 21),
(2023, 12, 55000.00, 26),
(2024, 2, 56000.00, 23),
(2024, 5, 57000.00, 29);


--7
-- Запрос возвращает список врачей с их именами, фамилиями и суммарной стоимостью приёмов.
-- Он объединяет таблицы "Врачи" и "Приемы" по полю ID_врач, затем суммирует стоимость приёмов для каждого врача.

SELECT 
    Врачи.Имя,
    Врачи.Фамилия,
    COUNT(Приемы.ID_прием) * Врачи.Стоимость_приема AS Суммарная_стоимость_приёмов
FROM 
    Врачи
JOIN 
    Приемы ON Врачи.ID_врач = Приемы.ID_врач
GROUP BY 
    Врачи.ID_врач, Врачи.Имя, Врачи.Фамилия;

--8 
-- Этот запрос расширяет предыдущий, добавляя сортировку по суммарной стоимости приёмов врача в порядке убывания.

SELECT 
    Врачи.Имя,
    Врачи.Фамилия,
    COUNT(Приемы.ID_прием) * Врачи.Стоимость_приема AS Суммарная_стоимость_приёмов
FROM 
    Врачи
JOIN 
    Приемы ON Врачи.ID_врач = Приемы.ID_врач  -- Объединение таблиц "Врачи" и "Приемы" по идентификатору врача
GROUP BY 
    Врачи.ID_врач, Врачи.Имя, Врачи.Фамилия  -- Группировка по уникальному идентификатору врача, имени и фамилии
ORDER BY 
    Суммарная_стоимость_приёмов DESC;  -- Сортировка по суммарной стоимости приёмов в порядке убывания

--9
-- В этом запросе мы расширяем предыдущий, добавляя столбец со средней суммарной стоимостью приёмов врачей.
SELECT 
    Врачи.Имя,
    Врачи.Фамилия,
    COUNT(Приемы.ID_прием) * Врачи.Стоимость_приема AS Суммарная_стоимость_приёмов,
    ROUND(AVG(COUNT(Приемы.ID_прием) * Врачи.Стоимость_приема) OVER (),3) AS Средняя_суммарная_стоимость_приёмов
FROM 
    Врачи
JOIN 
    Приемы ON Врачи.ID_врач = Приемы.ID_врач  -- Объединяем таблицы "Врачи" и "Приемы" по идентификатору врача
GROUP BY 
    Врачи.ID_врач, Врачи.Имя, Врачи.Фамилия  -- Группируем данные по врачу
ORDER BY 
    Суммарная_стоимость_приёмов DESC;  -- Сортируем по убыванию суммарной стоимости приёмов


--10
WITH DoctorTotals AS (
    SELECT
        Врачи.ID_врач,         -- Идентификатор врача
        Врачи.Имя,             -- Имя врача
        Врачи.Фамилия,         -- Фамилия врача
        COUNT(Приемы.ID_прием) AS Количество_приёмов,   -- Количество приёмов у врача
        COUNT(Приемы.ID_прием) * Врачи.Стоимость_приема AS Суммарная_стоимость -- Общая стоимость всех приёмов врача
    FROM
        Врачи
    JOIN
        Приемы ON Врачи.ID_врач = Приемы.ID_врач  -- Объединяем таблицы "Врачи" и "Приемы" по идентификатору врача
    GROUP BY
        Врачи.ID_врач, Врачи.Имя, Врачи.Фамилия  -- Группируем данные по врачу
)

-- Теперь выбираем врача(ей) с максимальной суммарной стоимостью приёмов

SELECT
    Имя,
    Фамилия,
    Суммарная_стоимость
FROM
    DoctorTotals
WHERE
    Суммарная_стоимость = (SELECT MAX(Суммарная_стоимость) FROM DoctorTotals);  -- Условие на максимальную суммарную стоимость


--11
-- Определяем временную таблицу DoctorTotals с помощью CTE (Common Table Expression)
WITH DoctorTotals AS (
    -- Выбираем идентификатор врача, фамилию, имя, общую сумму стоимости приемов и максимальную общую сумму стоимости приемов среди всех врачей
    SELECT
        Врачи.ID_врач,                                       -- Уникальный идентификатор врача
        Врачи.Фамилия,                                       -- Фамилия врача
        Врачи.Имя,                                           -- Имя врача
        COUNT(Приемы.ID_прием) * Врачи.Стоимость_приема AS TotalAppointmentValue,                 -- Суммарная стоимость всех приемов данного врача
        MAX(COUNT(Приемы.ID_прием) * Врачи.Стоимость_приема) OVER () AS MaxTotalAppointmentValue  -- Максимальная суммарная стоимость приемов среди всех врачей
    FROM
        Врачи
        JOIN Приемы ON Врачи.ID_врач = Приемы.ID_врач        -- Соединяем таблицы Врачи и Приемы по ID_врач
    GROUP BY
        Врачи.ID_врач,                                       -- Группируем по идентификатору врача
        Врачи.Фамилия,                                       -- Группируем по фамилии врача
        Врачи.Имя                                            -- Группируем по имени врача                                           
)
-- Основной запрос: выбираем информацию о приемах врачей с максимальной суммарной стоимостью приемов
SELECT
    DoctorTotals.Фамилия,
    DoctorTotals.Имя,
    Приемы.ID_прием AS Номер_приема,                        -- Уникальный идентификатор приема
    Врачи.Стоимость_приема AS Стоимость_приема              -- Стоимость приема
FROM
    DoctorTotals
    JOIN Приемы ON DoctorTotals.ID_врач = Приемы.ID_врач    -- Соединяем временную таблицу DoctorTotals с таблицей Приемы по ID_врач
    JOIN Врачи ON DoctorTotals.ID_врач = Врачи.ID_врач      -- Присоединяем таблицу Врачи для получения стоимости приема
WHERE
    DoctorTotals.TotalAppointmentValue = DoctorTotals.MaxTotalAppointmentValue  -- Фильтруем только тех врачей, у которых общая сумма стоимости приемов равна максимальной
ORDER BY
    Врачи.Стоимость_приема ASC;                             -- Сортируем результаты по стоимости приема в порядке возрастания


--12
-- Определяем временную таблицу DoctorTotals с помощью CTE (Common Table Expression)
WITH DoctorTotals AS (
    -- Выбираем идентификатор врача, имя, фамилию и суммарную стоимость всех его приёмов
    SELECT
        Врачи.ID_врач,                                    -- Уникальный идентификатор врача
        Врачи.Имя,                                        -- Имя врача
        Врачи.Фамилия,                                    -- Фамилия врача
        COUNT(Приемы.ID_прием) AS NumAppointments,        -- Количество приёмов врача
        COUNT(Приемы.ID_прием) * Врачи.Стоимость_приема AS TotalAppointmentValue  -- Суммарная стоимость всех приёмов данного врача
    FROM
        Врачи
        JOIN Приемы ON Врачи.ID_врач = Приемы.ID_врач     -- Соединяем таблицы Врачи и Приемы по ID_врач
    GROUP BY
        Врачи.ID_врач,                                    -- Необходимо группировать по полям, которые не являются агрегатными функциями
        Врачи.Имя,
        Врачи.Фамилия),
-- Вычисляем среднюю суммарную стоимость приёмов среди всех врачей
AverageTotal AS (
    SELECT
        AVG(TotalAppointmentValue) AS AverageTotalAppointmentValue  -- Средняя суммарная стоимость приёмов врачей
    FROM
        DoctorTotals)
-- Основной запрос: выбираем информацию о врачах, чья суммарная стоимость приёмов превышает среднюю
SELECT
    DoctorTotals.Имя,                                        -- Имя врача
    DoctorTotals.Фамилия,                                    -- Фамилия врача
    DoctorTotals.TotalAppointmentValue,                      -- Суммарная стоимость приёмов врача
    ROUND(AverageTotal.AverageTotalAppointmentValue,3) AS AverageTotalAppointmentValue    -- Средняя суммарная стоимость приёмов всех врачей
FROM
    DoctorTotals,
    AverageTotal
WHERE
    DoctorTotals.TotalAppointmentValue > AverageTotal.AverageTotalAppointmentValue; -- Фильтруем только тех врачей, у которых суммарная стоимость приёмов превышает среднюю
    