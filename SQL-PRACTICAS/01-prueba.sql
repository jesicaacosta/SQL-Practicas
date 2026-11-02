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



