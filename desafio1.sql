DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.Artistas(
	artista_id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.Albuns(
	album_id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
  artista_id INT NOT NULL,
  lancamento YEAR NOT NULL,
  FOREIGN KEY(artista_id) REFERENCES Artistas (artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Musicas(
	musica_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  artista_id INT NOT NULL,
  album_id INT NOT NULL,
  duracao INT NOT NULL,
	FOREIGN KEY(album_id) REFERENCES Albuns (album_id),
  FOREIGN KEY(artista_id) REFERENCES Artistas (artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Planos(
	plano_id INT PRIMARY KEY AUTO_INCREMENT,
	tipo VARCHAR(50) NOT NULL,
  valor DECIMAL(5, 2) NOT NULL
)engine = InnoDB;

CREATE TABLE SpotifyClone.Usuarios(
	usuario_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  idade INT NOT NULL,
  data_assinatura DATE NOT NULL,
	plano_id INT NOT NULL,
  FOREIGN KEY(plano_id) REFERENCES Planos (plano_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Historico(
	musica_id INT NOT NULL,
	usuario_id INT NOT NULL,
  data_reproducao DATETIME,
  CONSTRAINT PRIMARY KEY(musica_id, usuario_id),
  FOREIGN KEY (musica_id) REFERENCES Musicas (musica_id),
  FOREIGN KEY (usuario_id) REFERENCES Usuarios (usuario_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Seguidores(
	artista_id INT NOT NULL,
	usuario_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY(artista_id, usuario_id),
  FOREIGN KEY (artista_id) REFERENCES Artistas (artista_id),
  FOREIGN KEY (usuario_id) REFERENCES Usuarios (usuario_id)
) engine = InnoDB;
    
INSERT INTO SpotifyClone.Artistas (nome)
VALUES
  ('Beyoncé'),
  ('Queen'),
  ('Elis Regina'),
  ('Baco Exu do Blues'),
  ('Blind Guardian'),
  ('Nina Simone');
    
INSERT INTO SpotifyClone.Planos (tipo, valor)
VALUES
  ('gratuito', 0.00),
  ('familiar', 7.99),
  ('universitário', 5.99),
  ('pessoal', 6.99);
    
INSERT INTO SpotifyClone.Albuns (nome, artista_id, lancamento)
VALUES
	('Renaissance', 1, 2022),
  ('Jazz', 2, 1978),
  ('Hot Space', 2, 1982),
  ('Falso Brilhante', 3, 1998),
	('Vento de Maio', 3, 2001),
  ('QVVJFA?', 4, 2003),
  ('Somewhere Far Beyond', 5, 2007),
	('I Put A Spell On You', 6, 2012);
   
INSERT INTO SpotifyClone.Musicas (nome, artista_id, album_id, duracao)
VALUES
	('BREAK MY SOUL', 1, 1, 279),
  ('VIRGO’S GROOVE', 1, 1, 369),
	('ALIEN SUPERSTAR', 1, 1, 116),
  ('Don’t Stop Me Now', 2, 2, 203),
  ('Under Pressure', 2, 3, 152),
	('Como Nossos Pais', 3, 4, 105 ),
	('O Medo de Amar é o Medo de Ser Livre', 3, 5, 207),
	('Samba em Paris', 4, 6, 267),
	('The Bard’s Song', 5, 7, 244),
  ('Feeling Good', 6, 8, 100);
    
INSERT INTO SpotifyClone.Usuarios (nome, idade, plano_id, data_assinatura)
VALUES
	('Barbara Liskov', 82, 1, DATE('2019-10-20')),
	('Robert Cecil Martin', 58, 1, DATE('2017-01-06')),
  ('Ada Lovelace', 37, 2, DATE('2017-12-30')),
	('Martin Fowler', 46, 2, DATE('2017-01-17')),
	('Sandi Metz', 58, 2, DATE('2018-04-29')),
  ('Paulo Freire', 19, 3, DATE('2018-02-14')),
	('Bell Hooks', 26, 3, DATE('2018-01-05')),
  ('Christopher Alexander', 85, 4, DATE('2019-06-05')),
  ('Judith Butler', 45, 4, DATE('2020-05-13')),
	('Jorge Amado', 58, 4, DATE('2017-02-17'));
    
INSERT INTO SpotifyClone.Historico (usuario_id, musica_id, data_reproducao)
VALUES
  (1, 8, '2022-02-28 10:45:55'),
  (1, 2, '2020-05-02 05:30:35'),
  (1, 10, '2020-03-06 11:22:33'),
  (2, 10, '2022-08-05 08:05:17'),
  (2, 7, '2020-01-02 07:40:33'),
  (3, 10, '2020-11-13 16:55:13'),
	(3, 2, '2020-12-05 18:38:30'),
  (4, 8, '2021-08-15 17:10:10'),
  (5, 8, '2022-01-09 01:44:33'),
  (5, 5, '2020-08-06 15:23:43'),
  (6, 7, '2017-01-24 00:31:17'),
  (6, 1, '2017-10-12 12:35:20'),
  (7, 4, '2011-12-15 22:30:49'),
  (8, 4, '2012-03-17 14:56:41'),
  (9, 9, '2022-02-24 21:14:22'),
  (10, 3, '2015-12-13 08:30:22');
  
INSERT INTO SpotifyClone.Seguidores (usuario_id, artista_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (4, 4),
  (5, 5),
  (5, 6),
  (6, 1),
  (6, 6),
  (7, 6),
  (9, 3),
  (10, 2);

    
   
    
    
   
    
    


    
   








	