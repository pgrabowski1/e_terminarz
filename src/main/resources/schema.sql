INSERT INTO doctor_title (type) VALUES ('dr med.');
INSERT INTO doctor_title (type) VALUES ('prof. dr med.');
INSERT INTO doctor_title (type) VALUES ('mgr');
INSERT INTO doctor_title (type) VALUES ('dr');

INSERT INTO user_role (description, role) VALUES ('pacjent', 'ROLE_USER');
INSERT INTO user_role (description, role) VALUES ('admin', 'ROLE_ADMIN');


INSERT INTO `hospital` VALUES (1,'Słowackiego 18','Aleksandrów Kujawski','','Powiatowy Szpital w Aleksandrowie Kujawskim sp. z o. o.'),(2,'Wiejska 9','Brodnica','','Zespół Opieki Zdrowotnej w Brodnicy'),(3,'I. Romanowskiej 2','Bydgoszcz','','Centrum Onkologii im. Prof. Franciszka Łukaszczyka w Bydgoszczy'),(10,'Seminaryjna 1','Bydgoszcz','','Kujawsko - Pomorskie Centrum Pulmonologii w Bydgoszczy'),(11,'Markwarta 4-6','Bydgoszcz','','Samodzielny Publiczny Wielospecjalistyczny Zakład Opieki Zdrowotnej MSW w Bydgoszczy'),(12,'Powstańców Warszawy 5','Bydgoszcz','','SPZOZ 10 Wojskowy Szpital Kliniczny z Polikliniką w Bydgoszczy'),(13,'M.Skłodowskiej-Curie 9','Bydgoszcz','','Szpital Uniwersytecki nr 1 im. dr Antoniego Jurasza w Bydgoszczy'),(14,'Ujejskiego 75','Bydgoszcz','','Szpital Uniwersytecki nr 2 im. dr Jana Biziela w Bydgoszczy'),(15,'Szpitalna 19','Bydgoszcz','','Wielospecjalistyczny Szpital Miejski im. dr E. Warmińskiego w Bydgoszczy'),(16,'Chodkiewicza 44','Bydgoszcz','','Wojewódzki Szpital Dziecięcy im.  dr J. Brudzińskiego w  Bydgoszczy');

INSERT INTO `hospital_department` VALUES (1,'Oddział Chirurgii Ogólnej i Onkologicznej','',1),(2,'Blok Operacyjny i Oddział Intensywnej Terapii','',1),(3,'Oddział Wewnętrzny z Intensywną Opieką Kardiologiczną','',1),(4,'Oddział Ginekologiczno-Położniczy','',1),(5,'Oddział Pediatryczno-Neonatologiczny','',1),(6,'Oddział Rehabilitacyjny','',1),(7,'Oddział Psychiatryczny','',1),(8,'Zakład Opiekuńczo Leczniczy','',1),(9,'Szpitalny Oddział Ratunkowy','',3),(10,'Szpitalny Oddział Ratunkowy','',2),(11,'Oddział Wewnętrzny','',2),(12,'Oddział Chirurgii Ogólnej','',2),(13,'Oddział Urazowo-Ortopedyczny','',2),(14,'Oddział Anestezjologii i Intensywnej Terapii','',2),(15,'Oddział Położniczo-Ginekologiczny','',2),(16,'Oddział Dziecięcy','',2),(17,'Oddział Neonatologii','',2),(18,'Zakład Pielęgnacyjno-Opiekuńczy','',2),(19,'Oddział Rehabilitacji Ogólnoustrojowej','',2),(29,'Oddział Kliniczny Chirurgii Onkologicznej','',3),(30,'Oddział Kliniczny Chirurgii Klatki Piersiowej i Nowotworów','',3),(31,'Oddział Kliniczny Ginekologii Onkologicznej','',3),(32,'Oddział Kliniczny Nowotworów Piersi i Chirurgii Rekonstrukcyjnej','',3),(33,'Oddział Kliniczny Urologii Onkologicznej','',3),(34,'Oddział Intensywnej Terapii','',3),(35,'Oddział Kliniczny Onkologii','',3),(36,'Oddział Kliniczny Radioterapii','',3),(37,'Oddział Kliniczny Brachyterapii','',3),(38,'Oddział Anestezjologii i Intensywnej Terapii','',10),(39,'Oddział Chirurgii Klatki Piersiowej i Nowotworów','',10),(40,'Oddział Chorób Płuc, Gruźlicy i Sarkoidozy','',10),(41,'Oddział Onkologiczno-Pulmonologiczny z Chemioterapią','',10),(42,'Oddział Chorób Płuc i Niewydolności Oddychania z Pododdziałem NWM i Pododdziałem Zaburzeń Oddychania w Czasie Snu','',10),(43,'Oddział Diagnostyczno-Obserwacyjny Gruźlicy i Chorób Płuc','',10),(44,'Oddział Kliniczny Chorób Płuc, Nowotworów i Gruźlicy','',10),(45,'Oddział Kardiologiczny z Rehabilitacją Kardiologiczną i Pododdziałem Chorób Wewn.','',11),(46,'Oddział Położnictwa, Patologii Ciąży i Ginekologii','',11),(47,'Pododdział Neonatologiczny','',11),(48,'Oddział Chirurgii Ogólnej','',11),(49,'Pododdział Urologiczny','',11),(50,'Pododdział Ortopedyczny','',11),(51,'Oddział Neurologiczny i Rehabilitacji Neurologicznej','',11),(52,'Oddział Geriatrii','',11),(53,'Oddział Anestezjologii i Intensywnej Terapii','',11),(54,'Oddział Chirurgii Twarzowo-Szczękowej','',12),(55,'Oddział Kliniczny Otolaryngologiczny','',12),(56,'Oddział Kliniczny Anestezjologii i Intensywnej Terapii','',12),(57,'Oddział Kliniczny Urologii i Onkologii Urologicznej','',12),(58,'Oddział Kliniczny Dermatologiczny','',12),(59,'Oddział Kliniczny Okulistyczny','',12),(60,'Kliniczny Szpitalny Oddział Ratunkowy','',12),(61,'Oddział Kliniczny Ginekologiczny','',12),(62,'Oddział Kliniczny Anestezjologii i Intensywnej Terapii dla Dzieci','',13),(63,'I Oddział Kliniczny Anestezjologii i Intensywnej Terapii z Pododdziałem Kardioanestezjologii','',13),(64,'Oddział Kliniczny Chirurgii Ogólnej i Onkologicznej Dzieci i Młodzieży','',13),(65,'Oddział Kliniczny Ortopedii i Traumatologii Narządu Ruchu','',13),(66,'Oddział Medycyny Paliatywnej','',13),(67,'Oddział Anestezjologii i Intensywnej Terapii','',14),(68,'Klinika Okulistyki i Optometrii','',14),(69,'Klinika Ortopedii i Traumatologii Narządu Ruchu z Pododdziałem Reumoortopedii','',14),(70,'Oddział Kliniczny Medycyny Ratunkowej','',14),(71,'Klinika Reumatologii i Układowych Chorób Tkanki Łącznej','',14),(72,'Klinika Urologii','',14),(73,'Anestezjologia i Intensywna Terapia','',15),(74,'Centrum Rehabilitacji','',15),(75,'Chirurgia i Żywienie Kliniczne','',15),(76,'Choroby Wewnętrzne i Hepatologia','',15),(77,'Ginekologia, Położnictwo, Patologia Ciąży','',15),(78,'Neurologia','',15),(79,'Noworodki i Intensywna Terapia','',15),(80,'Oddział Kardiologii','',15),(81,'Ogólna Izba Przyjęć','',15),(82,'Okulistyka','',15),(83,'Oddział Anestezjologii i Intensywnej Terapii Dziecięcej','',16),(84,'Oddział Chirurgii Dziecięcej','',16),(85,'Oddział Neurochirurgii Dziecięcej','',16);

INSERT INTO `user` VALUES
(1,'stachu@gmail.com','Stanisław','Jones','{bcrypt}$2a$10$hOOAGVRCFPOIzX.Xb.wXJOtjwOs6rIu8habCb1iT4bgd6M8l5.wku',4),
(2,'admin@gmail.com','AdminName','AdminSurname','{bcrypt}$2a$10$.U8svwbeYfsr2SsRtS3GPeXCmPUT0ldhVgodNdVbVx8XVek/tG2cy',4),
(3,'johndoe@gmail.com','John','Doe','{bcrypt}$2a$10$MF4xFTG6K5FisyysDbDjxO5R8AW9W5GQFWUtcrWkraOhP8XeGYM56',1),
(4,'bob@gmail.com','Bob','Dobrowolski','{bcrypt}$2a$10$L8XKbNB3PPLK5xZJrOovc.HQgseZLLdJRpt4UqcQ9I1AI3EswA5T2',2),
(5,'jankowalski@gmail.com','Jan','Kowalski','{bcrypt}$2a$10$/k2G/zsDYUaUUqqU64uItuqx7vVJhpdSTBDKVnzM2wXB3AqfhNakW',4),
(6,'john@gmail.com','John','Cena','{bcrypt}$2a$10$GIdANRAkjeayaXNgco3UUeRQj1BLk.xEanC9.7KAKjVpU.60vWJ76',4),
(7,'janina@gmail.com','Janina','Ożogowska','{bcrypt}$2a$10$9gaFNaCAjT1zHhMtcu6jEuFD/ybW2ZLnDr5a9L3uCk7UScos/gbNy',4),
(8,'szymon@gmail.com','Szymon','Nowakowski','{bcrypt}$2a$10$dNiO8N82H/G.6/Etanw7JOKP.VF9IcXNitfmu7qRJBgw1kJ.N9Guy',4);


INSERT INTO user_roles VALUES (1,1),(2,2),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1);



INSERT INTO request_status (state_name) VALUES ('oczekiwanie na odpowiedź');
INSERT INTO request_status (state_name) VALUES ('zgoda');
INSERT INTO request_status (state_name) VALUES ('odmowa');