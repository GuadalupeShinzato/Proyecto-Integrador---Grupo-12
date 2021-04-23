CREATE TABLE users (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) not null,
last_name VARCHAR (100) not null,
email VARCHAR (250) not null,
username VARCHAR (100) not null,
password VARCHAR (250) not null
);

CREATE TABLE products (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(250) not null,
author VARCHAR (100) not null,
cover VARCHAR (250) not null,
description TEXT not null,
users_id INT UNSIGNED not null,
FOREIGN KEY (users_id) REFERENCES users(id)
);

CREATE TABLE comments (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
comment VARCHAR(250) not null,
product_id INT UNSIGNED not null,
users_id INT UNSIGNED not null,
fecha_comment DATE not null,
FOREIGN KEY (product_id) REFERENCES products(id),
FOREIGN KEY (users_id) REFERENCES users(id)
);

INSERT INTO users VALUES (DEFAULT, 'Javier', 'Elizalde', 'jelizalde@udesa.edu.ar', 'jelizalde21', 'jelizalde21');
INSERT INTO users VALUES (DEFAULT, 'Gonzalo', 'Ocampos', 'gocampos@udesa.edu.ar', 'gocampos1', 'gocampos1');
INSERT INTO users VALUES (DEFAULT, 'Guadalupe', 'Shinzato', 'gshinzato@udesa.edu.ar', 'gshinzato2', 'gshinzato2');
INSERT INTO users VALUES (DEFAULT, 'Ezequiel', 'Lagomarsiano', 'elagomarsiano@udesa.edu.ar', 'elagomarsiano3', 'elagomarsiano3');
INSERT INTO users VALUES (DEFAULT, 'Sebastián', 'Rellihan', 'srelihhan@udesa.edu.ar', 'srelihhan4', 'srelihhan4');
INSERT INTO users VALUES (DEFAULT, 'Marcos', 'Galperín', 'mgalperin@mercadolibre.com.ar', 'mgalperin5', 'mgalperin5');
INSERT INTO users VALUES (DEFAULT, 'Alejandro', 'Vivone', 'avivone@udesa.edu.ar', 'avivone6', 'avivone6');

INSERT INTO products VALUES (DEFAULT, 'The Dictionary Of Lost Words', 'Pip Williams', 'foto1.jpeg', 'Esme is born into a world of words. Motherless and irrepressibly curious, she spends her childhood in the ‘Scriptorium’, a garden shed in Oxford where her father and a team of dedicated lexicographers are collecting words for the very first Oxford English Dictionary. Esme’s place is beneath the sorting table, unseen and unheard. One day a slip of paper containing the word ‘bondmaid’ flutters to the floor. Esme rescues the slip and stashes it in an old wooden case that belongs to her friend, Lizzie, a young servant in the big house. Esme begins to collect other words from the Scriptorium that are misplaced, discarded or have been neglected by the dictionary men');
INSERT INTO products VALUES (DEFAULT, 'Go Tell the Bees that I am Gone', 'Diana Gabaldon', 'f2.1.jpeg', 'Jamie Fraser and Claire Randall were torn apart by the Jacobite Rising in 1743, and it took them twenty years to find each other again. It is 1779 and Claire and Jamie are at last reunited with their daughter, Brianna, her husband, Roger, and their children on Fraser’s Ridge. Having the family together is a dream the Frasers had thought impossible.');
INSERT INTO products VALUES (DEFAULT, 'Once Upon a Broken Heart', 'Stephanie Garber', 'f3.1.jpeg', 'Once Upon a Broken Heart marks the launch of a new series about love, curses, and the lengths that people will go to for happily ever after from Stephanie Garber, the #1 New York Times bestselling author of Caraval. Evangeline Fox was raised in her beloved father’s curiosity shop, where she grew up on legends about immortals, like the tragic Prince of Hearts. She knows his powers are mythic, his kiss is worth dying for, and that bargains with him rarely end well.');
INSERT INTO products VALUES (DEFAULT, 'The Crown of Gilded Bones', 'Jennifer L. Armentrout', '4.1.jpeg', 'Poppy never dreamed she would find the love she is found with Prince Casteel. She wants to revel in her happiness but first they must free his brother and find hers. It is a dangerous mission and one with far-reaching consequences neither dreamed of. Because Poppy is the Chosen, the Blessed. The true ruler of Atlantia. She carries the blood of the King of Gods within her. By right the crown and the kingdom are hers.');
INSERT INTO products VALUES (DEFAULT, 'Attack on Titan', 'Hajime Isayama', '6.jpeg', 'Once hailed as humanity’s greatest hope, Eren has since become unrecognizable. With the Attack Titan now morphed into a grotesque, colossal skeleton of its former self, Eren continues to control the wave of Titans laying waste to the world, extinguishing countless homes, towns, and lives in their wake. In order to salvage what’s left of humanity, Mikasa, Armin, and the Survey Corps decide to confront Eren head-on. But to stop the Rumbling, they’ll have to dedicate much more than their hearts...');
INSERT INTO products VALUES (DEFAULT, 'The christmas pig', 'J.K. Rowling', '5.1.jpeg', 'Jack loves his childhood toy, Dur Pig. DP has always been there for him, through good and bad. Until one Christmas Eve something terrible happens – DP is lost. But Christmas Eve is a night for miracles and lost causes, a night when all things can come to life… even toys. And Jack’s newest toy – the Christmas Pig (DP’s replacement) – has a daring plan: Together they’ll embark on a magical journey to seek something lost, and to save the best friend Jack has ever known…');
INSERT INTO products VALUES (DEFAULT, 'Freed', 'El James', '7.1.jpeg', 'You are cordially invited to the wedding of the decade, when Christian Grey will make Anastasia Steele his wife. But is he really husband material? His dad is unsure, his brother wants to organize one helluva bachelor party, and his fiancée will not vow to obey...');
INSERT INTO products VALUES (DEFAULT, 'The Good Sister', 'Sally Hepworth', '8.1.jpeg', 'Fern Castle works in her local library. She has dinner with her twin sister Rose three nights a week. And she avoids crowds, bright lights and loud noises as much as possible. Fern has a carefully structured life and disrupting her routine can be...dangerous.');
INSERT INTO products VALUES (DEFAULT, 'A Promised Land', 'Barack Obama ', '10.jpg', 'In the stirring, highly anticipated first volume of his presidential memoirs, Barack Obama tells the story of his improbable odyssey from young man searching for his identity to leader of the free world, describing in strikingly personal detail both his political education and the landmark moments of the first term of his historic presidency—a time of dramatic transformation and turmoil.');
INSERT INTO products VALUES (DEFAULT, 'Sooley', 'John Grisham', '11.jpg', 'At just 17, Samuel “Sooley” Sooleymon joins his team in a basketball tournament in the United States. In a heartbreaking turn of events, he learns he cannot return home when civil war breaks out, tearing his family apart. ');

ALTER TABLE comments
MODIFY comment VARCHAR (500);
