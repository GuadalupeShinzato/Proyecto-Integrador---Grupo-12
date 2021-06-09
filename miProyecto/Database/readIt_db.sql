DROP DATABASE IF EXISTS readit_db;
CREATE DATABASE readit_db;
USE readit_db;

CREATE TABLE users (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) not null,
last_name VARCHAR (100) not null,
email VARCHAR (250) not null,
nacimiento DATE NOT NULL,
username VARCHAR (100) not null,
password VARCHAR (250) not null
);

CREATE TABLE products (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(250) not null,
author VARCHAR (100) not null,
cover VARCHAR (250) not null,
publicacion DATE NOT NULL,
description TEXT not null,
users_id INT UNSIGNED not null,
FOREIGN KEY (users_id) REFERENCES users(id)
);

CREATE TABLE comments (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
comment VARCHAR(250) not null,
fecha_comment DATE not null,
products_id INT UNSIGNED not null,
users_id INT UNSIGNED not null,
FOREIGN KEY (products_id) REFERENCES products(id),
FOREIGN KEY (users_id) REFERENCES users(id)
);

INSERT INTO users VALUES (DEFAULT, 'Javier', 'Elizalde', 'jelizalde@udesa.edu.ar', '2001-07-21', 'jelizalde0', 'jelizalde0');
INSERT INTO users VALUES (DEFAULT, 'Gonzalo', 'Ocampos', 'gocampos@udesa.edu.ar', '1998-02-23', 'gocampos1', 'gocampos1');
INSERT INTO users VALUES (DEFAULT, 'Guadalupe', 'Shinzato', 'gshinzato@udesa.edu.ar', '2001-10-29', 'gshinzato2', 'gshinzato2');
INSERT INTO users VALUES (DEFAULT, 'Ezequiel', 'Lagomarsiano', 'elagomarsiano@udesa.edu.ar', '1995-04-15', 'elagomarsiano3', 'elagomarsiano3');
INSERT INTO users VALUES (DEFAULT, 'Sebastián', 'Rellihan', 'srelihhan@udesa.edu.ar', '2000-08-11', 'srelihhan4', 'srelihhan4');
INSERT INTO users VALUES (DEFAULT, 'Marcos', 'Galperín', 'mgalperin@mercadolibre.com.ar', '1971-05-27', 'mgalperin5', 'mgalperin5');
INSERT INTO users VALUES (DEFAULT, 'Alejandro', 'Vivone', 'avivone@udesa.edu.ar', '1981-03-14', 'avivone6', 'avivone6');

INSERT INTO products VALUES (DEFAULT, 'The Dictionary Of Lost Words', 'Pip Williams', '/images/Hardcode/foto1.jpeg', '2021-04-22', 'Esme is born into a world of words. Motherless and irrepressibly curious, she spends her childhood in the ‘Scriptorium’, a garden shed in Oxford where her father and a team of dedicated lexicographers are collecting words for the very first Oxford English Dictionary. Esme’s place is beneath the sorting table, unseen and unheard. One day a slip of paper containing the word ‘bondmaid’ flutters to the floor. Esme rescues the slip and stashes it in an old wooden case that belongs to her friend, Lizzie, a young servant in the big house. Esme begins to collect other words from the Scriptorium that are misplaced, discarded or have been neglected by the dictionary men', '2');
INSERT INTO products VALUES (DEFAULT, 'Go Tell the Bees that I am Gone', 'Diana Gabaldon', '/images/Hardcode/foto2.jpeg', '2021-04-22', 'Jamie Fraser and Claire Randall were torn apart by the Jacobite Rising in 1743, and it took them twenty years to find each other again. It is 1779 and Claire and Jamie are at last reunited with their daughter, Brianna, her husband, Roger, and their children on Fraser’s Ridge. Having the family together is a dream the Frasers had thought impossible.', '6');
INSERT INTO products VALUES (DEFAULT, 'Once Upon a Broken Heart', 'Stephanie Garber', '/images/Hardcode/foto3.jpeg', '2021-04-22', 'Once Upon a Broken Heart marks the launch of a new series about love, curses, and the lengths that people will go to for happily ever after from Stephanie Garber, the #1 New York Times bestselling author of Caraval. Evangeline Fox was raised in her beloved father’s curiosity shop, where she grew up on legends about immortals, like the tragic Prince of Hearts. She knows his powers are mythic, his kiss is worth dying for, and that bargains with him rarely end well.', '5');
INSERT INTO products VALUES (DEFAULT, 'The Crown of Gilded Bones', 'Jennifer L. Armentrout', '/images/Hardcode/foto4.jpeg', '2021-04-22', 'Poppy never dreamed she would find the love she is found with Prince Casteel. She wants to revel in her happiness but first they must free his brother and find hers. It is a dangerous mission and one with far-reaching consequences neither dreamed of. Because Poppy is the Chosen, the Blessed. The true ruler of Atlantia. She carries the blood of the King of Gods within her. By right the crown and the kingdom are hers.', '4');
INSERT INTO products VALUES (DEFAULT, 'Attack on Titan', 'Hajime Isayama', '/images/Hardcode/foto6.jpeg', '2021-04-22', 'Once hailed as humanity’s greatest hope, Eren has since become unrecognizable. With the Attack Titan now morphed into a grotesque, colossal skeleton of its former self, Eren continues to control the wave of Titans laying waste to the world, extinguishing countless homes, towns, and lives in their wake. In order to salvage what’s left of humanity, Mikasa, Armin, and the Survey Corps decide to confront Eren head-on. But to stop the Rumbling, they’ll have to dedicate much more than their hearts...', '1');
INSERT INTO products VALUES (DEFAULT, 'The christmas pig', 'J.K. Rowling', '/images/Hardcode/foto5.jpeg', '2021-04-22', 'Jack loves his childhood toy, Dur Pig. DP has always been there for him, through good and bad. Until one Christmas Eve something terrible happens – DP is lost. But Christmas Eve is a night for miracles and lost causes, a night when all things can come to life… even toys. And Jack’s newest toy – the Christmas Pig (DP’s replacement) – has a daring plan: Together they’ll embark on a magical journey to seek something lost, and to save the best friend Jack has ever known…', '7');
INSERT INTO products VALUES (DEFAULT, 'Freed', 'El James', '/images/Hardcode/foto7.jpeg', '2021-04-22', 'You are cordially invited to the wedding of the decade, when Christian Grey will make Anastasia Steele his wife. But is he really husband material? His dad is unsure, his brother wants to organize one helluva bachelor party, and his fiancée will not vow to obey...', '2');
INSERT INTO products VALUES (DEFAULT, 'The Good Sister', 'Sally Hepworth', '/images/Hardcode/foto8.jpeg', '2021-04-22', 'Fern Castle works in her local library. She has dinner with her twin sister Rose three nights a week. And she avoids crowds, bright lights and loud noises as much as possible. Fern has a carefully structured life and disrupting her routine can be...dangerous.', '3');
INSERT INTO products VALUES (DEFAULT, 'A Promised Land', 'Barack Obama ', '/images/Hardcode/foto10.jpg', '2021-04-22', 'In the stirring, highly anticipated first volume of his presidential memoirs, Barack Obama tells the story of his improbable odyssey from young man searching for his identity to leader of the free world, describing in strikingly personal detail both his political education and the landmark moments of the first term of his historic presidency—a time of dramatic transformation and turmoil.', '3');
INSERT INTO products VALUES (DEFAULT, 'Sooley', 'John Grisham', '/images/Hardcode/foto11.jpg', '2021-04-22', 'At just 17, Samuel “Sooley” Sooleymon joins his team in a basketball tournament in the United States. In a heartbreaking turn of events, he learns he cannot return home when civil war breaks out, tearing his family apart.', '5');

ALTER TABLE comments
MODIFY comment VARCHAR (500);

SELECT * FROM products;

INSERT INTO comments VALUES (DEFAULT, 'Muy buen libro, altamente recomendable!', '2001-07-21', 1, 1);
INSERT INTO comments VALUES (DEFAULT, 'Me pareció desagradable la forma en que decapitan a la protagonista', '2001-10-29', 1, 2);
INSERT INTO comments VALUES (DEFAULT, 'Encontré muy interesante la relación entre los personajes y la trama', '2021-02-26', 1, 3);
INSERT INTO comments VALUES (DEFAULT, 'Podría haber hecho más énfasis en las descripciones de los lugares, me gusta imaginarme una trama con un buen fondo', '2020-03-20', 1, 4);
INSERT INTO comments VALUES (DEFAULT, 'No me pareció interesante el desenlace de la historia', '2020-10-08', 1, 5);
INSERT INTO comments VALUES (DEFAULT, 'Excelentee libro, además me llegó en buen estado y a tiempo', '2021-04-22', 1, 6);
INSERT INTO comments VALUES (DEFAULT, 'Me vino fallado de fábrica! Le faltaron las páginas 3, 4 y 5', '2021-03-31', 1, 7);

INSERT INTO comments VALUES (DEFAULT, 'Muy buen libro, altamente recomendable!', '2001-07-21', 2, 1);
INSERT INTO comments VALUES (DEFAULT, 'Me pareció desagradable la forma en que decapitan a la protagonista', '2001-10-29', 2, 2);
INSERT INTO comments VALUES (DEFAULT, 'Encontré muy interesante la relación entre los personajes y la trama', '2021-02-26', 2, 3);
INSERT INTO comments VALUES (DEFAULT, 'Podría haber hecho más énfasis en las descripciones de los lugares, me gusta imaginarme una trama con un buen fondo', '2020-03-20', 2, 4);
INSERT INTO comments VALUES (DEFAULT, 'No me pareció interesante el desenlace de la historia', '2020-10-08', 2, 5);
INSERT INTO comments VALUES (DEFAULT, 'Excelentee libro, además me llegó en buen estado y a tiempo', '2021-04-22', 2, 6);
INSERT INTO comments VALUES (DEFAULT, 'Me vino fallado de fábrica! Le faltaron las páginas 3, 4 y 5', '2021-03-31', 2, 7);

INSERT INTO comments VALUES (DEFAULT, 'Muy buen libro, altamente recomendable!', '2001-07-21', 3, 1);
INSERT INTO comments VALUES (DEFAULT, 'Me pareció desagradable la forma en que decapitan a la protagonista', '2001-10-29', 3, 2);
INSERT INTO comments VALUES (DEFAULT, 'Encontré muy interesante la relación entre los personajes y la trama', '2021-02-26', 3, 3);
INSERT INTO comments VALUES (DEFAULT, 'Podría haber hecho más énfasis en las descripciones de los lugares, me gusta imaginarme una trama con un buen fondo', '2020-03-20', 3, 4);
INSERT INTO comments VALUES (DEFAULT, 'No me pareció interesante el desenlace de la historia', '2020-10-08', 3, 5);
INSERT INTO comments VALUES (DEFAULT, 'Excelentee libro, además me llegó en buen estado y a tiempo', '2021-04-22', 3, 6);
INSERT INTO comments VALUES (DEFAULT, 'Me vino fallado de fábrica! Le faltaron las páginas 3, 4 y 5', '2021-03-31', 3, 7);

INSERT INTO comments VALUES (DEFAULT, 'Muy buen libro, altamente recomendable!', '2001-07-21', 4, 1);
INSERT INTO comments VALUES (DEFAULT, 'Me pareció desagradable la forma en que decapitan a la protagonista', '2001-10-29', 4, 2);
INSERT INTO comments VALUES (DEFAULT, 'Encontré muy interesante la relación entre los personajes y la trama', '2021-02-26', 4, 3);
INSERT INTO comments VALUES (DEFAULT, 'Podría haber hecho más énfasis en las descripciones de los lugares, me gusta imaginarme una trama con un buen fondo', '2020-03-20', 4, 4);
INSERT INTO comments VALUES (DEFAULT, 'No me pareció interesante el desenlace de la historia', '2020-10-08', 4, 5);
INSERT INTO comments VALUES (DEFAULT, 'Excelentee libro, además me llegó en buen estado y a tiempo', '2021-04-22', 4, 6);
INSERT INTO comments VALUES (DEFAULT, 'Me vino fallado de fábrica! Le faltaron las páginas 3, 4 y 5', '2021-03-31', 4, 7);

INSERT INTO comments VALUES (DEFAULT, 'Muy buen libro, altamente recomendable!', '2001-07-21', 5, 1);
INSERT INTO comments VALUES (DEFAULT, 'Me pareció desagradable la forma en que decapitan a la protagonista', '2001-10-29', 5, 2);
INSERT INTO comments VALUES (DEFAULT, 'Encontré muy interesante la relación entre los personajes y la trama', '2021-02-26', 5, 3);
INSERT INTO comments VALUES (DEFAULT, 'Podría haber hecho más énfasis en las descripciones de los lugares, me gusta imaginarme una trama con un buen fondo', '2020-03-20', 5, 4);
INSERT INTO comments VALUES (DEFAULT, 'No me pareció interesante el desenlace de la historia', '2020-10-08', 5, 5);
INSERT INTO comments VALUES (DEFAULT, 'Excelentee libro, además me llegó en buen estado y a tiempo', '2021-04-22', 5, 6);
INSERT INTO comments VALUES (DEFAULT, 'Me vino fallado de fábrica! Le faltaron las páginas 3, 4 y 5', '2021-03-31', 5, 7);

INSERT INTO comments VALUES (DEFAULT, 'Muy buen libro, altamente recomendable!', '2001-07-21', 6, 1);
INSERT INTO comments VALUES (DEFAULT, 'Me pareció desagradable la forma en que decapitan a la protagonista', '2001-10-29', 6, 2);
INSERT INTO comments VALUES (DEFAULT, 'Encontré muy interesante la relación entre los personajes y la trama', '2021-02-26', 6, 3);
INSERT INTO comments VALUES (DEFAULT, 'Podría haber hecho más énfasis en las descripciones de los lugares, me gusta imaginarme una trama con un buen fondo', '2020-03-20', 6, 4);
INSERT INTO comments VALUES (DEFAULT, 'No me pareció interesante el desenlace de la historia', '2020-10-08', 6, 5);
INSERT INTO comments VALUES (DEFAULT, 'Excelentee libro, además me llegó en buen estado y a tiempo', '2021-04-22', 6, 6);
INSERT INTO comments VALUES (DEFAULT, 'Me vino fallado de fábrica! Le faltaron las páginas 3, 4 y 5', '2021-03-31', 6, 7);

INSERT INTO comments VALUES (DEFAULT, 'Muy buen libro, altamente recomendable!', '2001-07-21', 7, 1);
INSERT INTO comments VALUES (DEFAULT, 'Me pareció desagradable la forma en que decapitan a la protagonista', '2001-10-29', 7, 2);
INSERT INTO comments VALUES (DEFAULT, 'Encontré muy interesante la relación entre los personajes y la trama', '2021-02-26', 7, 3);
INSERT INTO comments VALUES (DEFAULT, 'Podría haber hecho más énfasis en las descripciones de los lugares, me gusta imaginarme una trama con un buen fondo', '2020-03-20', 7, 4);
INSERT INTO comments VALUES (DEFAULT, 'No me pareció interesante el desenlace de la historia', '2020-10-08', 7, 5);
INSERT INTO comments VALUES (DEFAULT, 'Excelentee libro, además me llegó en buen estado y a tiempo', '2021-04-22', 7, 6);
INSERT INTO comments VALUES (DEFAULT, 'Me vino fallado de fábrica! Le faltaron las páginas 3, 4 y 5', '2021-03-31', 7, 7);

INSERT INTO comments VALUES (DEFAULT, 'Muy buen libro, altamente recomendable!', '2001-07-21', 8, 1);
INSERT INTO comments VALUES (DEFAULT, 'Me pareció desagradable la forma en que decapitan a la protagonista', '2001-10-29', 8, 2);
INSERT INTO comments VALUES (DEFAULT, 'Encontré muy interesante la relación entre los personajes y la trama', '2021-02-26', 8, 3);
INSERT INTO comments VALUES (DEFAULT, 'Podría haber hecho más énfasis en las descripciones de los lugares, me gusta imaginarme una trama con un buen fondo', '2020-03-20', 8, 4);
INSERT INTO comments VALUES (DEFAULT, 'No me pareció interesante el desenlace de la historia', '2020-10-08', 8, 5);
INSERT INTO comments VALUES (DEFAULT, 'Excelentee libro, además me llegó en buen estado y a tiempo', '2021-04-22', 8, 6);
INSERT INTO comments VALUES (DEFAULT, 'Me vino fallado de fábrica! Le faltaron las páginas 3, 4 y 5', '2021-03-31', 8, 7);

INSERT INTO comments VALUES (DEFAULT, 'Muy buen libro, altamente recomendable!', '2001-07-21', 9, 1);
INSERT INTO comments VALUES (DEFAULT, 'Me pareció desagradable la forma en que decapitan a la protagonista', '2001-10-29', 9, 2);
INSERT INTO comments VALUES (DEFAULT, 'Encontré muy interesante la relación entre los personajes y la trama', '2021-02-26', 9, 3);
INSERT INTO comments VALUES (DEFAULT, 'Podría haber hecho más énfasis en las descripciones de los lugares, me gusta imaginarme una trama con un buen fondo', '2020-03-20', 9, 4);
INSERT INTO comments VALUES (DEFAULT, 'No me pareció interesante el desenlace de la historia', '2020-10-08', 9, 5);
INSERT INTO comments VALUES (DEFAULT, 'Excelentee libro, además me llegó en buen estado y a tiempo', '2021-04-22', 9, 6);
INSERT INTO comments VALUES (DEFAULT, 'Me vino fallado de fábrica! Le faltaron las páginas 3, 4 y 5', '2021-03-31', 9, 7);

INSERT INTO comments VALUES (DEFAULT, 'Muy buen libro, altamente recomendable!', '2001-07-21', 10, 1);
INSERT INTO comments VALUES (DEFAULT, 'Me pareció desagradable la forma en que decapitan a la protagonista', '2001-10-29', 10, 2);
INSERT INTO comments VALUES (DEFAULT, 'Encontré muy interesante la relación entre los personajes y la trama', '2021-02-26', 10, 3);
INSERT INTO comments VALUES (DEFAULT, 'Podría haber hecho más énfasis en las descripciones de los lugares, me gusta imaginarme una trama con un buen fondo', '2020-03-20', 10, 4);
INSERT INTO comments VALUES (DEFAULT, 'No me pareció interesante el desenlace de la historia', '2020-10-08', 10, 5);
INSERT INTO comments VALUES (DEFAULT, 'Excelentee libro, además me llegó en buen estado y a tiempo', '2021-04-22', 10, 6);
INSERT INTO comments VALUES (DEFAULT, 'Me vino fallado de fábrica! Le faltaron las páginas 3, 4 y 5', '2021-03-31', 10, 7);
