/*Story 1*/

CREATE DATABASE my_database;
USE my_database;
CREATE TABLE users (
	id_user INT(255) UNSIGNED NOT NULL  AUTO_INCREMENT,
	email_user VARCHAR(50) NOT NULL UNIQUE,
	user_password VARCHAR(255) NOT NULL, 
	pseudo VARCHAR(18) NOT NULL UNIQUE  ,
	adress VARCHAR(100),
	postal_code INT(5),
	city VARCHAR(50),
	country VARCHAR(50),
	phone_number INT (10),
	home_phone_number INT (10),
	registration_date DATE,
	PRIMARY KEY (id_user) 
);

CREATE TABLE service (
	id_service INT (255) NOT NULL AUTO_INCREMENT,
	id_user INT(255) UNSIGNED NOT NULL,
	service_name_ VARCHAR (100) NOT NULL,
	service_description TEXT NOT NULL, 
	service_adress VARCHAR (100) NOT NULL, 
	service_postal_code INT (5) NOT NULL, 
	service_city VARCHAR (50) NOT NULL, 
	service_country VARCHAR (50) NOT NULL, 
	service_date_hour DATETIME NOT NULL, 
	further_information TEXT,
	PRIMARY KEY (id_service) 
);

CREATE TABLE user_service (
	id_user_service INT (255) UNSIGNED NOT NULL AUTO_INCREMENT,
	id_service INT (255) UNSIGNED NOT NULL,
	id_user INT (255) UNSIGNED NOT NULL,
	registration_date DATETIME NOT NULL,
	PRIMARY KEY (id_user_service)
);
CREATE TABLE message (
	id_message INT (255) UNSIGNED NOT NULL AUTO_INCREMENT,
	id_sender INT (255) UNSIGNED  NOT NULL,
	id_recipient INT (255) UNSIGNED NOT NULL,
	message_contents TEXT NOT NULL, 
	message_date_hour DATETIME NOT NULL,
	PRIMARY KEY (id_message)
);

/*Story 3 */

INSERT INTO users(email_user, user_password, pseudo, adress, postal_code, city, country, phone_number, home_phone_number, registration_date)
VALUES ('users1@email.fr','8faaadca35073b7adaea7e3553c8d377','Anys', 'rue', 75000,'Paris', 'France', 0606060606, 0505050505, NOW()),
	('users2@email.fr','8faaadca35073b7adaea7e3553c8d377','Pyere', 'rue', 75000,'Paris', 'France', 0606060606, 0505050505, NOW()),
	('users3@email.fr','8faaadca35073b7adaea7e3553c8d377','entonie', 'rue', 75000,'Paris', 'France', 0606060606,0505050505,NOW()),
	('users4@email.fr','8faaadca35073b7adaea7e3553c8d377','bastien', 'rue', 75000,'Paris', 'France', 0606060606,0505050505,NOW()),
	('users5@email.fr','8faaadca35073b7adaea7e3553c8d377','Bertrand', 'rue', 75000,'Paris', 'France', 0606060606,0505050505,NOW()),
	('users6@email.fr','8faaadca35073b7adaea7e3553c8d377','Etienne', 'rue', 75000,'Paris', 'France', 0606060606,0505050505,NOW()),
	('users7@email.fr','8faaadca35073b7adaea7e3553c8d377','Pascal', 'rue', 75000,'Paris', 'France', 0606060606,0505050505,NOW()),
	('users8@email.fr','8faaadca35073b7adaea7e3553c8d377','François', 'rue', 75000,'Paris', 'France', 0606060606,0505050505,NOW()),
	('users9@email.fr','8faaadca35073b7adaea7e3553c8d377','Nordine', 'rue', 75000,'Paris', 'France', 0606060606,0505050505,NOW()),
	('users10@email.fr','8faaadca35073b7adaea7e3553c8d377','eliaut', 'rue', 75000,'Paris', 'France', 0606060606,0505050505,NOW()),
	('users11@email.fr','8faaadca35073b7adaea7e3553c8d377','guli1', 'rue', 7500, 'Paris', 'France', 0606060606, 0505050505,NOW());

INSERT INTO users(email_user,user_password,pseudo,registration_date)
VALUES ('users@email.fr','8faaadca35073b7adaea7e3553c8d377','michel',NOW());

/*Story 5 */

INSERT INTO service (id_user, service_name_, service_description, service_adress, service_postal_code, service_city, service_country, service_date_hour, further_information)
VALUES  (1, 'cuisine', 'je viens cuisiner un plat gastronomique chez vous', 'chez vous', 75000, 'Paris', 'France', '2019-10-08', 'Je suis cuisiner pro et je propose ce service pour faire profiter les gens de mon talent.'), 
		(2, 'ménage', "j'aime le ménage, surtout le balet", 'chez vous', 75000, 'Paris', 'France', '2019-10-08', "J'aime le ménage, c'est tout." ),
		(3, 'tondre la pelouse', "j'aime la pelouse", 'chez vous', 75000, 'Paris', 'France', '2019-10-10', "l'odeur de la pelouse coupée c'est mon kiffe." ),
		(4, 'booster overwatch', "je vous passe de bronze à silver ez", 'chez vous', 75000, 'Paris', 'France', '2019-10-12', "J'main torbjorn (only hammer)." ),
		(5, 'coiffeur', "j'aime les boulez a zero", 'chez vous', 75000, 'Paris', 'France', '2019-12-08', "je t'aime zimdine zimdane" ),
		(6, 'masseur', "j'aime masser les gens, surtout les pieds", 'chez vous', 75000, 'Paris', 'France','2019-12-28',"full stack pieds" ),
		(7, 'sortir le chien', "j'aime les chiens", 'chez vous', 75000, 'Paris', 'France', '2019-10-15', "Je vais promener votre chien." ),
		(1, 'peintre', "penitre en alternance aussi", 'chez vous', 75000, 'Paris', 'France', '2019-10-24', "J'utilise max 3 couleurs." ),
		(9, 'dératiseur', "seulement avec les dents", 'chez vous', 75000, 'Paris', 'France','2019-10-27', "un croc un mort." ),
		(12, 'abajour', "je ne cache pas trop la lumière", 'chez vous', 75000, 'Paris', 'France', '2019-10-08', "J'ai un record, rester immobile pendant 18 jours (wallah c chaud)." );

/*Story 6 */

ALTER TABLE service  ENGINE=INNODB;
ALTER TABLE users  ENGINE=INNODB;
ALTER TABLE service ADD FOREIGN KEY(id_user) REFERENCES users(id_user) ON DELETE CASCADE ON UPDATE CASCADE;

INSERT INTO user_service (id_service, id_user, registration_date)
VALUES  (1, 7, '2019-03-10'),
		(2, 1, '2019-03-10'),
		(3, 7, '2019-03-10'),
		(4, 2, '2019-03-10'),
		(5, 3, '2019-03-10'),
		(6, 4, '2019-03-10'),
		(7, 5, '2019-03-10'),
		(8, 6, '2019-03-10'),
		(9, 8, '2019-03-10'),
		(11, 12, '2019-03-10'),
		(9, 6, '2019-03-10'),
		(8, 2, '2019-03-10');

ALTER TABLE user_service ENGINE=INNODB;
ALTER TABLE user_service ADD FOREIGN KEY (id_service) REFERENCES service(id_service) ON DELETE CASCADE ON UPDATE CASCADE ;
ALTER TABLE user_service ADD FOREIGN KEY (id_user) REFERENCES users(id_user) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE message ENGINE=INNODB; 
ALTER TABLE message ADD FOREIGN KEY (id_sender) REFERENCES users(id_user) ON DELETE CASCADE ON UPDATE CASCADE ;
ALTER TABLE message ADD FOREIGN KEY (id_recipient) REFERENCES users(id_user) ON DELETE CASCADE ON UPDATE CASCADE ;

/* Story 7*/

INSERT INTO message( id_sender, id_recipient, message_contents, message_date_hour)
  VALUES (1, 2, 'bonjour je me nmme Anys et je suis intéressé par vos succuleux plats de pates accompagner des quelques lardons soupoudré de parmesans ', '2019-02-01'),
        (3, 4, "bonjour je me nomme entonie et je suis intéressé par pour que vous tondiez ma pelouse j'ai 1 hectar de verdure en plein paris", '2019-02-01'),
        (5, 6, 'bonjour je me nomme Bertrand et je suis intéressé  pour la meme coupe que le divin chauve chrichri jallet', '2019-02-01'),
        (7, 8, 'bonjour je me nomme Pascal et je suis intéressé pour pouvoir sortir mon petit pitbullinet ', '2019-02-01'),
        (10, 9, 'bonjour je me nomme Nordine et je suis intéressé par une session abat-jour deux 18heure pour 20€', '2019-02-18'),
        (1, 3, "bonjour je me nomme Anys et je suis intéressé par vos succuleux plats de pates accompagner des quelques lardons soupoudré de parmesans  ", '2019-02-01'),
        (2, 4, 'bonjour je me nomme Pyere et je suis intéressé par votre coup de balet ', '2019-02-01'),
        (3, 5, "bonjour je me nomme entonie et je suis intéressépour que vous tondiez ma pelouse j'ai 1 hectar de verdure en plein paris ", '2019-02-01'),
        (4, 6, 'bonjour je me nomme bastien et je suis intéressé par un massage du type chinois  pour 20€', '2019-02-18'),
        (5, 7, "bonjour je me nomme Bertrand et je suis intéressé pour la meme coupe que le divin chauve chrichri jallet ", '2019-02-01'),
        (8, 6, 'bonjour je me nomme Etienne  suis intéressé par un tableau de ma fille en trois couleur pour 999,99€', '2019-02-01'),
        (7, 9, 'bonjour je me nomme Pascal suis intéressé pour pouvoir sortir mon petit pitbullinet', '2019-02-01'),
        (8, 10, 'bonjour je me nomme François et je suis intéressé par un tableau de mon fils en trois couleur pour 9999,99€ ', '2019-02-11'),
        (1, 2, 'bonjour je me nomme Anys et je suis intéressé par vos succuleux plats de pates accompagner des quelques lardons soupoudré de parmesans ', '2019-02-01'),
        (2, 7, 'bonjour je suis Pyere et je suis  intéressé par votre coup de balet ', '2019-02-01'),
        (1, 10, 'bonjour je suis Anys et je intéressé par vos succuleux plats de pates accompagner des quelques lardons soupoudré de parmesans ', '2019-02-01'),
        (2, 9, 'bonjour je suis Pyere intéressé par votre coup de balet', '2019-02-01'),
        (3, 8, "bonjour je suis entonie et je suis intéressé par pour que vous tondiez ma pelouse j'ai 1 hectar de verdure en plein paris", '2019-02-01'),
        (4, 7, 'bonjour je suis bastien  intéressé pour un boost overwatch de silver to GM pls  ', '2019-02-01'),
        (5, 6, 'bonjour je suis Bertrand et est intéressé pour la meme coupe que le divin chauve chrichri jallet', '2019-02-14'),
        (6, 5, 'bonjour je suis intéressé par un massage du type chinois', '2019-02-22'),
        (7, 4, 'bonjour je suis intéressé pour pouvoir sortir mon petit pitbullinet ', '2019-02-01'),
        (8, 3, 'bonjour je me nomme François et je suis intéressé pour un tableau de ma fille pour 20€  ', '2019-02-01'),
        (9, 2, 'I NEED HELP NOW !!!!!! ', '2019-02-11'),
        (12, 1, 'bonjour je me nomme michel intéressé pour une session abat-jour de 8 heures ', '2019-02-21');

/* Story 8 */

SELECT DISTINCT id_sender, id_recipient
FROM  (SELECT id_sender, id_recipient, message_contents, message_date_hour FROM message GROUP BY id_recipient, id_sender, message_contents,message_date_hour
HAVING id_recipient=7 OR id_sender =7) as T
WHERE id_sender+1 != id_recipient;

/* Story 9 */

SELECT message_contents, message_date_hour , id_recipient , id_sender
FROM message 
WHERE (id_sender=5 AND id_recipient =6) OR (id_sender=6 AND id_recipient=5) 
ORDER BY message_date_hour DESC

/* Story 10 */

SELECT service.service_name_, user_service.id_user
FROM service

LEFT JOIN user_service ON user_service.id_service = service.id_service 
WHERE user_service.id_user IS NULL
ORDER BY service_date_hour ASC , service_city ASC;

/* Story 11*/

SELECT id_service ,service.id_user, service_name_, service_description, service_adress, service_postal_code, service_city, service_country, service_date_hour, further_information,pseudo,phone_number
FROM service, users 
WHERE id_service = 1 AND users.id_user= 1;

SELECT S.id_service, U.pseudo
FROM service as S
LEFT JOIN users as U
	ON U.id_user = S.id_user
WHERE S.id_service = 1;

/*Story 12 */

DELETE FROM service
WHERE id_service =2;

/* Story 13 */

DELETE FROM user_service
WHERE id_service=2;

/*Story 14 */

SELECT pseudo
FROM users
WHERE id_user=4
DELETE FROM users
WHERE id_user=4;

/*Story 15 */

SELECT id_message
FROM message
WHERE id_message =14;
DELETE FROM message
WHERE id_message = 14;

/*story 16 */

SELECT id_service ,service.id_user, service_name_, service_description, service_adress, service_postal_code, service_city, service_country, service_date_hour, further_information,email_user, pseudo, adress, postal_code, city, country, phone_number, home_phone_number, registration_date
FROM service, users 
WHERE service.id_user = 6 and users.id_user = 6
ORDER BY service_date_hour ASC , service_city ASC
LIMIT 1;

SELECT id_service ,S.id_user, service_name_, service_description, service_adress, service_postal_code, service_city, service_country, service_date_hour, further_information,email_user, pseudo, adress, postal_code, city, country, phone_number, home_phone_number, registration_date
FROM service as S 
LEFT JOIN users as U
 ON U.id_user = S.id_user
WHERE S.id_user=6;
ORDER BY service_date_hour ASC , service_city ASC

SELECT COUNT(user_service.id_user)
FROM user_service
WHERE id_user= 6;
SELECT id_service ,S.id_user, service_name_, service_description, service_adress, service_postal_code, service_city, service_country, service_date_hour, further_information,email_user, pseudo, adress, postal_code, city, country, phone_number, home_phone_number, registration_date
FROM service as S 
LEFT JOIN users as U
 ON U.id_user = S.id_user
WHERE S.id_user=6
ORDER BY service_date_hour ASC , service_city ASC;

/*Story 17 */

SELECT id_service ,S.id_user, service_name_, service_description, service_adress, service_postal_code, service_city, service_country, service_date_hour, further_information,email_user, pseudo, adress, postal_code, city, country, phone_number, home_phone_number, registration_date
FROM service as S 
LEFT JOIN users as U
 ON U.id_user = S.id_user
WHERE S.id_user=6
ORDER BY service_date_hour DESC
LIMIT 1;

/* Story 18 */

CREATE TABLE lateststory(
	id_lateststory INT(10) AUTO_INCREMENT,
	pseudo_utilisateur VARCHAR(18),
	mois INT(12),
	participation_totale INT(50),
	PRIMARY KEY (id_lateststory)
);

INSERT INTO lateststory(pseudo_utilisateur, mois, participation_totale)
VALUES ('guli1', 02, COUNT(user_service.id_user));
