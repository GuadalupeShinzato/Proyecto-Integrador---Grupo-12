DROP DATABASE IF EXISTS readit_db;
CREATE DATABASE readit_db;
USE readit_db;

CREATE TABLE users (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) not null,
last_name VARCHAR (100) not null,
email VARCHAR (250) not null UNIQUE,
nacimiento DATE NOT NULL,
username VARCHAR (100) not null UNIQUE,
password VARCHAR (250) not null,
cover VARCHAR (250) not null,
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE products (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(250) not null,
author VARCHAR (100) not null,
cover VARCHAR (250) not null,
description TEXT not null,
users_id INT UNSIGNED not null,
FOREIGN KEY (users_id) REFERENCES users(id) ON DELETE CASCADE,
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE comments (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
comment VARCHAR(250) not null,
products_id INT UNSIGNED not null,
users_id INT UNSIGNED not null,
FOREIGN KEY (products_id) REFERENCES products(id) ON DELETE CASCADE,
FOREIGN KEY (users_id) REFERENCES users(id) ON DELETE CASCADE,
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users VALUES (DEFAULT, 'Javier', 'Elizalde', 'jelizalde@udesa.edu.ar','1998-02-23',  'jelizalde0', 'jelizalde0', 'fotodefault.jpeg', default, default);
INSERT INTO users VALUES (DEFAULT, 'Gonzalo', 'Ocampos', 'gocampos@udesa.edu.ar', '1998-02-23', 'gocampos1', 'gocampos1','fotodefault.jpeg', default, default);
INSERT INTO users VALUES (DEFAULT, 'Guadalupe', 'Shinzato', 'gshinzato@udesa.edu.ar','1998-02-23',  'gshinzato2', 'gshinzato2','fotodefault.jpeg', default, default);
INSERT INTO users VALUES (DEFAULT, 'Ezequiel', 'Lagomarsiano', 'elagomarsiano@udesa.edu.ar', '1995-04-15', 'elagomarsiano3', 'elagomarsiano3','fotodefault.jpeg', default, default);
INSERT INTO users VALUES (DEFAULT, 'Sebastián', 'Rellihan', 'srelihhan@udesa.edu.ar', '2000-08-11', 'srelihhan4', 'srelihhan4','fotodefault.jpeg', default, default);
INSERT INTO users VALUES (DEFAULT, 'Marcos', 'Galperín', 'mgalperin@mercadolibre.com.ar', '1971-05-27', 'mgalperin5', 'mgalperin5','fotodefault.jpeg', default, default);
INSERT INTO users VALUES (DEFAULT, 'Alejandro', 'Vivone', 'avivone@udesa.edu.ar', '1981-03-14', 'avivone6', 'avivone6','fotodefault.jpeg', default, default);

INSERT INTO products VALUES (DEFAULT, 'The Dictionary Of Lost Words', 'Pip Williams', 'foto1.jpeg',  'Esme is born into a world of words. Motherless and irrepressibly curious, she spends her childhood in the ‘Scriptorium’, a garden shed in Oxford where her father and a team of dedicated lexicographers are collecting words for the very first Oxford English Dictionary. Esme’s place is beneath the sorting table, unseen and unheard. One day a slip of paper containing the word ‘bondmaid’ flutters to the floor. Esme rescues the slip and stashes it in an old wooden case that belongs to her friend, Lizzie, a young servant in the big house. Esme begins to collect other words from the Scriptorium that are misplaced, discarded or have been neglected by the dictionary men', '2', default, default);
INSERT INTO products VALUES (DEFAULT, 'Go Tell the Bees that I am Gone', 'Diana Gabaldon', 'foto2.jpeg',  'Jamie Fraser and Claire Randall were torn apart by the Jacobite Rising in 1743, and it took them twenty years to find each other again. It is 1779 and Claire and Jamie are at last reunited with their daughter, Brianna, her husband, Roger, and their children on Fraser’s Ridge. Having the family together is a dream the Frasers had thought impossible.', '6', default, default);
INSERT INTO products VALUES (DEFAULT, 'Once Upon a Broken Heart', 'Stephanie Garber', 'foto3.jpeg',  'Once Upon a Broken Heart marks the launch of a new series about love, curses, and the lengths that people will go to for happily ever after from Stephanie Garber, the #1 New York Times bestselling author of Caraval. Evangeline Fox was raised in her beloved father’s curiosity shop, where she grew up on legends about immortals, like the tragic Prince of Hearts. She knows his powers are mythic, his kiss is worth dying for, and that bargains with him rarely end well.', '5', default, default);
INSERT INTO products VALUES (DEFAULT, 'The Crown of Gilded Bones', 'Jennifer L. Armentrout', 'foto4.jpeg',  'Poppy never dreamed she would find the love she is found with Prince Casteel. She wants to revel in her happiness but first they must free his brother and find hers. It is a dangerous mission and one with far-reaching consequences neither dreamed of. Because Poppy is the Chosen, the Blessed. The true ruler of Atlantia. She carries the blood of the King of Gods within her. By right the crown and the kingdom are hers.', '4', default, default);
INSERT INTO products VALUES (DEFAULT, 'Attack on Titan', 'Hajime Isayama', 'foto6.jpeg',  'Once hailed as humanity’s greatest hope, Eren has since become unrecognizable. With the Attack Titan now morphed into a grotesque, colossal skeleton of its former self, Eren continues to control the wave of Titans laying waste to the world, extinguishing countless homes, towns, and lives in their wake. In order to salvage what’s left of humanity, Mikasa, Armin, and the Survey Corps decide to confront Eren head-on. But to stop the Rumbling, they’ll have to dedicate much more than their hearts...', '1', default, default);
INSERT INTO products VALUES (DEFAULT, 'The christmas pig', 'J.K. Rowling', 'foto5.jpeg',  'Jack loves his childhood toy, Dur Pig. DP has always been there for him, through good and bad. Until one Christmas Eve something terrible happens – DP is lost. But Christmas Eve is a night for miracles and lost causes, a night when all things can come to life… even toys. And Jack’s newest toy – the Christmas Pig (DP’s replacement) – has a daring plan: Together they’ll embark on a magical journey to seek something lost, and to save the best friend Jack has ever known…', '7', default, default);
INSERT INTO products VALUES (DEFAULT, 'Freed', 'El James', 'foto8.jpeg',  'You are cordially invited to the wedding of the decade, when Christian Grey will make Anastasia Steele his wife. But is he really husband material? His dad is unsure, his brother wants to organize one helluva bachelor party, and his fiancée will not vow to obey...', '2', default, default);
INSERT INTO products VALUES (DEFAULT, 'The Good Sister', 'Sally Hepworth', 'foto9.jpeg',  'Fern Castle works in her local library. She has dinner with her twin sister Rose three nights a week. And she avoids crowds, bright lights and loud noises as much as possible. Fern has a carefully structured life and disrupting her routine can be...dangerous.', '3', default, default);
INSERT INTO products VALUES (DEFAULT, 'A Promised Land', 'Barack Obama ', 'foto10.jpg',  'In the stirring, highly anticipated first volume of his presidential memoirs, Barack Obama tells the story of his improbable odyssey from young man searching for his identity to leader of the free world, describing in strikingly personal detail both his political education and the landmark moments of the first term of his historic presidency—a time of dramatic transformation and turmoil.', '3', default, default);
INSERT INTO products VALUES (DEFAULT, 'Sooley', 'John Grisham', 'foto11.jpg',  'At just 17, Samuel “Sooley” Sooleymon joins his team in a basketball tournament in the United States. In a heartbreaking turn of events, he learns he cannot return home when civil war breaks out, tearing his family apart.', '5', default, default);

ALTER TABLE comments
MODIFY comment VARCHAR (500);

-- SELECT * FROM products;

INSERT INTO comments VALUES (DEFAULT, 'Muy buen libro, altamente recomendable!',  1, 1, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Me pareció desagradable la forma en que decapitan a la protagonista',  1, 2, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Encontré muy interesante la relación entre los personajes y la trama',  1, 3, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Podría haber hecho más énfasis en las descripciones de los lugares, me gusta imaginarme una trama con un buen fondo',  1, 4, default, default);
INSERT INTO comments VALUES (DEFAULT, 'No me pareció interesante el desenlace de la historia',  1, 5, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Excelentee libro, además me llegó en buen estado y a tiempo',  1, 6, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Me vino fallado de fábrica! Le faltaron las páginas 3, 4 y 5',  1, 7, default, default);

INSERT INTO comments VALUES (DEFAULT, 'Muy buen libro, altamente recomendable!',  2, 1, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Me pareció desagradable la forma en que decapitan a la protagonista',  2, 2, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Encontré muy interesante la relación entre los personajes y la trama',  2, 3, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Podría haber hecho más énfasis en las descripciones de los lugares, me gusta imaginarme una trama con un buen fondo',  2, 4, default, default);
INSERT INTO comments VALUES (DEFAULT, 'No me pareció interesante el desenlace de la historia',  2, 5, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Excelentee libro, además me llegó en buen estado y a tiempo',  2, 6, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Me vino fallado de fábrica! Le faltaron las páginas 3, 4 y 5',  2, 7, default, default);

INSERT INTO comments VALUES (DEFAULT, 'Muy buen libro, altamente recomendable!',  3, 1, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Me pareció desagradable la forma en que decapitan a la protagonista',  3, 2, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Encontré muy interesante la relación entre los personajes y la trama',  3, 3, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Podría haber hecho más énfasis en las descripciones de los lugares, me gusta imaginarme una trama con un buen fondo',  3, 4, default, default);
INSERT INTO comments VALUES (DEFAULT, 'No me pareció interesante el desenlace de la historia',  3, 5, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Excelentee libro, además me llegó en buen estado y a tiempo',  3, 6, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Me vino fallado de fábrica! Le faltaron las páginas 3, 4 y 5',  3, 7, default, default);

INSERT INTO comments VALUES (DEFAULT, 'Muy buen libro, altamente recomendable!',  4, 1, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Me pareció desagradable la forma en que decapitan a la protagonista',  4, 2, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Encontré muy interesante la relación entre los personajes y la trama',  4, 3, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Podría haber hecho más énfasis en las descripciones de los lugares, me gusta imaginarme una trama con un buen fondo',  4, 4, default, default);
INSERT INTO comments VALUES (DEFAULT, 'No me pareció interesante el desenlace de la historia',  4, 5, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Excelentee libro, además me llegó en buen estado y a tiempo',  4, 6, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Me vino fallado de fábrica! Le faltaron las páginas 3, 4 y 5',  4, 7, default, default);

INSERT INTO comments VALUES (DEFAULT, 'Muy buen libro, altamente recomendable!',  5, 1, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Me pareció desagradable la forma en que decapitan a la protagonista',  5, 2, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Encontré muy interesante la relación entre los personajes y la trama',  5, 3, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Podría haber hecho más énfasis en las descripciones de los lugares, me gusta imaginarme una trama con un buen fondo',  5, 4, default, default);
INSERT INTO comments VALUES (DEFAULT, 'No me pareció interesante el desenlace de la historia',  5, 5, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Excelentee libro, además me llegó en buen estado y a tiempo',  5, 6, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Me vino fallado de fábrica! Le faltaron las páginas 3, 4 y 5',  5, 7, default, default);

INSERT INTO comments VALUES (DEFAULT, 'Muy buen libro, altamente recomendable!',  6, 1, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Me pareció desagradable la forma en que decapitan a la protagonista',  6, 2, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Encontré muy interesante la relación entre los personajes y la trama',  6, 3, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Podría haber hecho más énfasis en las descripciones de los lugares, me gusta imaginarme una trama con un buen fondo',  6, 4, default, default);
INSERT INTO comments VALUES (DEFAULT, 'No me pareció interesante el desenlace de la historia',  6, 5, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Excelentee libro, además me llegó en buen estado y a tiempo',  6, 6, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Me vino fallado de fábrica! Le faltaron las páginas 3, 4 y 5',  6, 7, default, default);

INSERT INTO comments VALUES (DEFAULT, 'Muy buen libro, altamente recomendable!',  7, 1, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Me pareció desagradable la forma en que decapitan a la protagonista',  7, 2, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Encontré muy interesante la relación entre los personajes y la trama',  7, 3, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Podría haber hecho más énfasis en las descripciones de los lugares, me gusta imaginarme una trama con un buen fondo',  7, 4, default, default);
INSERT INTO comments VALUES (DEFAULT, 'No me pareció interesante el desenlace de la historia',  7, 5, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Excelentee libro, además me llegó en buen estado y a tiempo',  7, 6, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Me vino fallado de fábrica! Le faltaron las páginas 3, 4 y 5',  7, 7, default, default);

INSERT INTO comments VALUES (DEFAULT, 'Muy buen libro, altamente recomendable!',  8, 1, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Me pareció desagradable la forma en que decapitan a la protagonista',  8, 2, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Encontré muy interesante la relación entre los personajes y la trama',  8, 3, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Podría haber hecho más énfasis en las descripciones de los lugares, me gusta imaginarme una trama con un buen fondo',  8, 4, default, default);
INSERT INTO comments VALUES (DEFAULT, 'No me pareció interesante el desenlace de la historia',  8, 5, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Excelentee libro, además me llegó en buen estado y a tiempo',  8, 6, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Me vino fallado de fábrica! Le faltaron las páginas 3, 4 y 5',  8, 7, default, default);

INSERT INTO comments VALUES (DEFAULT, 'Muy buen libro, altamente recomendable!',  9, 1, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Me pareció desagradable la forma en que decapitan a la protagonista',  9, 2, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Encontré muy interesante la relación entre los personajes y la trama',  9, 3, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Podría haber hecho más énfasis en las descripciones de los lugares, me gusta imaginarme una trama con un buen fondo',  9, 4, default, default);
INSERT INTO comments VALUES (DEFAULT, 'No me pareció interesante el desenlace de la historia',  9, 5, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Excelentee libro, además me llegó en buen estado y a tiempo',  9, 6, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Me vino fallado de fábrica! Le faltaron las páginas 3, 4 y 5',  9, 7, default, default);

INSERT INTO comments VALUES (DEFAULT, 'Muy buen libro, altamente recomendable!',  10, 1, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Me pareció desagradable la forma en que decapitan a la protagonista',  10, 2, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Encontré muy interesante la relación entre los personajes y la trama',  10, 3, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Podría haber hecho más énfasis en las descripciones de los lugares, me gusta imaginarme una trama con un buen fondo',  10, 4, default, default);
INSERT INTO comments VALUES (DEFAULT, 'No me pareció interesante el desenlace de la historia',  10, 5, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Excelentee libro, además me llegó en buen estado y a tiempo',  10, 6, default, default);
INSERT INTO comments VALUES (DEFAULT, 'Me vino fallado de fábrica! Le faltaron las páginas 3, 4 y 5',  10, 7, default, default);
