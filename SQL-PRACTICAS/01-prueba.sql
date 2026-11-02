-- PRÁCTICA 01
-- Tema: Creación e inserción de datos
CREATE TABLE Artista (
    artistaID INT PRIMARY KEY not null UNIQUE,
    nombre VARCHAR(50),
    pais VARCHAR(50),
    fechaNacimiento DATE
);
CREATE TABLE Album (
    albumID INT PRIMARY KEY not null,
    titulo VARCHAR(255),
    artistaID INT REFERENCES Artista(artistaID),
    anioLanzamiento INT
);
CREATE TABLE Canciones (
    cancionID INT PRIMARY KEY,
    titulo VARCHAR(255),
    albumID INT,
    genero VARCHAR(50) default 'Pop',
    duracionSegundos INT,
    FOREIGN KEY (albumID) REFERENCES Album(albumID)
);
CREATE TABLE Ventas (
    ventaID INT,
    cancionID INT,
    fechaVenta DATE,
    cantidad INT default 1,
    precioUnitario DECIMAL(10, 2),
    PRIMARY KEY (ventaID),
    CONSTRAINT FK_Canciones FOREIGN KEY (cancionID) REFERENCES Canciones(cancionID)
);
ALTER TABLE Artista
ADD COLUMN comidaFavorita VARCHAR(40);
ALTER TABLE Artista DROP comidaFavorita;
drop table Ventas;
CREATE TABLE Ventas (
    ventaID INT,
    cancionID INT,
    fechaVenta DATE,
    cantidad INT default 1,
    precioUnitario DECIMAL(10, 2),
    PRIMARY KEY (ventaID),
    CONSTRAINT FK_Canciones FOREIGN KEY (cancionID) REFERENCES Canciones(cancionID)
);
drop table Ventas;
CREATE TABLE Ventas (
    ventaID INT,
    cancionID INT,
    fechaVenta DATE,
    cantidad INT default 1,
    precioUnitario DECIMAL(10, 2),
    PRIMARY KEY (ventaID),
    CONSTRAINT FK_Canciones FOREIGN KEY (cancionID) REFERENCES Canciones(cancionID)
);


insert into Artista (artistaID, nombre, pais, fechaNacimiento)
values (2, 'Michael Jackson', 'Estados Unidos', '1958-08-29'),
 (3, 'Queen', 'Reino Unido', '1970-04-10'),
 (4, 'Madonna', 'Estados Unidos', '1958-08-16'),
 (5, 'ABBA', 'Suecia', '1972-01-01');


select * FROM Artista;



-- Inserciones en Album
INSERT INTO Album (albumID, titulo, artistaID, anioLanzamiento) VALUES
(101, 'Abbey Road', 1, 1969),
(102, 'Thriller', 2, 1982),
(103, 'A Night at the Opera', 3, 1975),
(104, 'Like a Virgin', 4, 1984),
(105, 'Arrival', 5, 1976),
(106, 'Sgt. Pepper''s Lonely Hearts Club Band', 1, 1967);


select * FROM Album;

select * FROM Artista;


INSERT INTO Canciones (cancionID, titulo, albumID, genero, duracionSegundos) VALUES
(1001, 'Come Together', 101, 'Rock', 259),
(1002, 'Something', 101, 'Rock', 182),
(1003, 'Billie Jean', 102, 'Pop', 294),
(1004, 'Beat It', 102, 'Pop', 258),
(1005, 'Bohemian Rhapsody', 103, 'Rock', 355),
(1006, 'Another One Bites the Dust', 103, 'Rock', 236),
(1007, 'Like a Virgin', 104, 'Pop', 208),
(1008, 'Mamma Mia', 105, 'Pop', 215),
(1009, 'Dancing Queen', 105, 'Pop', 230),
(1010, 'Yesterday', 106, 'Rock', 125);
select * FROM Canciones; 

insert into Ventas (ventaID, cancionID, fechaVenta, cantidad, precioUnitario) VALUES
(5001, 1001, '2025-01-15', 2, 1.29),
(5002, 1003, '2025-01-16', 1, 1.59),
(5003, 1005, '2025-02-17', 3, 2.29),
(5004, 1007, '2025-02-18', 1, 3.29),
(5005, 1001, '2025-03-19', 1, 1.29),
(5006, 1004, '2025-03-20', 2, 1.29),
(5007, 1009, '2025-04-21', 1, 1.29);

select * FROM Ventas;

INSERT INTO Artista VALUES (6,'Oasis','Inglaterra', ' ');
select * FROM Artista;

INSERT INTO Artista VALUES (7,'David Bowie','Reino Unido', '1947-01-08');
select * FROM Artista;

delete from Artista 
    where artistaID = 7;

select * FROM Artista;


