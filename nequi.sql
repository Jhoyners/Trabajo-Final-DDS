
CREATE DATABASE Nequi
USE Nequi


CREATE TABLE Users (
	PIN INT PRIMARY KEY NOT NULL,
	Name Varchar(25) NOT NULL,
	Last_Name VARCHAR(25) NOT NULL,
	User_ID INT NOT NULL,
);

CREATE TABLE Withdrawals (
    PIN INT NOT NULL,
    Account_Number INT PRIMARY KEY NOT NULL,
    Value DECIMAL(10,2) NOT NULL,
    Date_Time DATETIME NOT NULL,
    FOREIGN KEY (PIN) REFERENCES Users(PIN)
);

CREATE TABLE Assists (
    Phone INT PRIMARY KEY NOT NULL,
    Assist_Date DATE NOT NULL,
    Account_Number INT NOT NULL,
	Address VARCHAR(20),
    FOREIGN KEY (Account_Number) REFERENCES Withdrawals(Account_Number)
);

CREATE TABLE Complaints (
    Complaint_ID INT PRIMARY KEY IDENTITY(1,1),
    Account_Number INT NOT NULL,
    Description VARCHAR(255) NOT NULL,
    FOREIGN KEY (Account_Number) REFERENCES Withdrawals(Account_Number)
);


INSERT INTO Users (PIN, Name, Last_Name, User_ID)
VALUES  (101, 'Pedro', 'Carter', 1),
		(102, 'Juana', 'Peruana', 2),
		(103, 'Tombo', 'Man', 3),
		(104, 'Emilia', 'Ano', 4),
		(105, 'Carlo', 'Prestona', 5),
		(106, 'Linda', 'Fea', 6),
		(107, 'Robert', 'Omarin', 7),
		(108, 'Maria', 'Sanadora', 8),
		(109, 'Patricia', 'Teran', 9),
		(110, 'James', 'Rodriguez', 10);
		SELECT * FROM Users;


INSERT INTO Withdrawals (PIN, Account_Number, Value, Date_Time)
VALUES  (101, 2001, 500.00, '2024-11-20 10:00:00'),
		(102, 2002, 300.00, '2024-11-20 11:30:00'),
		(103, 2003, 1000.00, '2024-11-20 12:45:00'),
		(104, 2004, 750.00, '2024-11-20 14:15:00'),
		(105, 2005, 250.00, '2024-11-20 15:30:00'),
		(106, 2006, 400.00, '2024-11-20 16:45:00'),
		(107, 2007, 150.00, '2024-11-20 18:00:00'),
		(108, 2008, 600.00, '2024-11-21 09:15:00'),
		(109, 2009, 200.00, '2024-11-21 10:30:00'),
		(110, 2010, 350.00, '2024-11-21 11:45:00');
		SELECT * FROM Withdrawals;


INSERT INTO Assists (Phone, Assist_Date, Account_Number, Address)
VALUES  (5551001, '2024-11-20', 2001, 'Parque de Bello'),
		(5551002, '2024-11-20', 2002, 'San Antonio'),
		(5551003, '2024-11-20', 2003, 'Cobe�as'),
		(5551004, '2024-11-20', 2004, 'Quibdo'),
		(5551005, '2024-11-20', 2005, 'Cesde'),
		(5551006, '2024-11-20', 2006, 'FrutaMAS'),
		(5551007, '2024-11-20', 2007, 'Atanasio Girardot'),
		(5551008, '2024-11-21', 2008, 'Fabricato'),
		(5551009, '2024-11-21', 2009, 'Los Molinos'),
		(5551010, '2024-11-21', 2010, 'San Diego');
		SELECT * FROM Assists;



INSERT INTO Complaints (Account_Number, Description)
VALUES 
    (2001, 'El cajero automático no entregó el dinero.'),
    (2002, 'Error en el valor descontado de la cuenta.'),
    (2003, 'Problema con la transacción, no fue registrada correctamente.'),
    (2004, 'El sistema mostró un error durante el retiro.'),
    (2005, 'El cajero estaba fuera de servicio y la transacción no se completó.'),
    (2006, 'El monto retirado no coincide con el solicitado.'),
    (2007, 'El tiempo de espera para procesar el retiro fue demasiado largo.'),
    (2008, 'El recibo del retiro no fue emitido correctamente.'),
    (2009, 'Problema con la conexión del cajero automático.'),
    (2010, 'La pantalla del cajero no mostraba la información correcta.');

SELECT * FROM Complaints;


