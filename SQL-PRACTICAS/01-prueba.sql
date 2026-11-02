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


UPDATE Artista 
set pais = 'Inglaterra'
WHERE pais = 'Reino Unido';
select * FROM Artista;

UPDATE Artista 
set pais = 'Reino Unido'
WHERE pais = 'Inglaterra';
select * FROM Artista;


UPDATE Artista 
set pais = 'Inglaterra'
WHERE pais = 'Reino Unido';
select * FROM Artista;



-- Consultar los países de los Artistas, sin repetidos.
select pais FROM Artista GROUP BY pais;

-- Mostrar los países de los Artistas, sin repetidos.
select distinct pais FROM Artista;

-- Devolver las primeras 5 canciones ordenadas por título de forma ascendente.
select * from Canciones order by titulo asc limit 5;


-- Consultar los artistas que son de Suecia.
select * from Artista where pais = 'Suecia';


-- Consultar los artistas que no tengan fecha de nacimiento. 
select * from Artista where fechaNacimiento is null;
select * from Artista where fechaNacimiento = '1970-04-10';
select * from Artista where fechaNacimiento = ' ';


select * from Artista ;

-- Consultar títulos de los álbumes cuyo título tenga menos de 10 caracteres y se hayan lanzado después de 1980.
select * from Album were 
-- Mostrar título y género de las canciones cuyo título no empiece con la letra “b”.

-- Contar la cantidad de canciones que son de género “Rock”.

-- Contar cuántos artistas hay por país, y mostrar sólo aquellos países para los que haya más de un artista 

-- Sumar la duración total de las canciones por género.

-- Calcular el monto total de ventas por canción.

-- Listar todos los álbumes de los artistas de Estado Unidos, ordenando por título de forma ascendente.

-- Encontrar los títulos y géneros de las canciones de un artista en particular (“The Beatles”).

-- Calcular el precio unitario promedio de las ventas.

-- Mostrar el nombre de cada álbum y cuantas canciones tiene cada uno, ordenados por la cantidad de canciones en forma descendente.

-- Mostrar los títulos de las canciones, con la fecha de venta y la cantidad, mostrando todas las canciones (hayan tenido o no ventas), y ordenado por la fecha de venta de manera descendente.