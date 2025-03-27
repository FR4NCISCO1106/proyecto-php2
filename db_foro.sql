CREATE DATABASE IF NOT EXISTS php2_francho1106;

USE php2_francho1106;

CREATE TABLE IF NOT EXISTS tema (
  id INT NOT NULL AUTO_INCREMENT,
  titulo VARCHAR(30),
  contenido VARCHAR(100),
  autor VARCHAR(30),
  fecha DATE,
  hora TIME,
  categoria VARCHAR(30),
  pais VARCHAR(30),
  PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS respuesta (
  id INT NOT NULL AUTO_INCREMENT,
  id_tema INT NOT NULL,
  respuesta VARCHAR(100),
  autor VARCHAR(30),
  fecha DATE,
  pais VARCHAR(30),
  me_gusta VARCHAR(30),
  PRIMARY KEY(id),
  FOREIGN KEY(id_tema) REFERENCES tema(id)
);

INSERT INTO tema (titulo, contenido, autor , fecha, hora, categoria, pais)
VALUES ('V.F. Corporation', 'todas', 'Johnna', '2024-01-30', '1:26:14', 'Deportes', 'Peru'),
('Inter Parfums, Inc.', 'Package Goods/Cosmetics', 'Lorette', '2024-01-30', '15:38:04','Farandula', 'Italia');

INSERT INTO respuesta (id_tema, respuesta, autor, fecha, pais, me_gusta)
VALUES ('1', 'Major Banks', 'Wilhelm', '2025-01-13', 'Argentina', 'Si'),
('2', 'Biotechnology: Laboratory Analytical Instruments', 'Noemi', '2024-11-26', 'Brasil', 'Si'),