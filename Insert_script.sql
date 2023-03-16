
INSERT INTO Albums(name, date) 
VALUES('Баста  3', 2010),
('Полигамность', 2018),
('Music to be murdered', 2022),
('The Metallica Blacklist', 2021),
('Здравcтсвуй, это я', 2000),
('Thunderstorm EP', 2020),
('50 cent: The Untold Story', 2019),
('WE ARE CHAOS', 2020),
('Nobody is Not Loved', 2021),
('Ecosystem', 2021);

INSERT INTO Tracks(name, time, album_id) 
VALUES('Урбан', '4:12', 1),
('Деньги', '3:19', 1),
('Олимпиада 80', '5:09', 1),
('Ростов', '4:33', 1),
('Урбан', '4:12', 1),
('Кинолента', '4:23', 1),
('Ходим по краю', '3:27', 1),
('Детка', '3:40', 1),
('Свобода', '3:44', 1),
('Россия', '4:10', 1),
('Театр', '5:21', 1),
('Обернись', '4:00', 1),
('Хэндз ап!', '4:03', 1),
('Отпускаю', '3:54', 1),
('8800', '2:25', 1),
('Один', '5:06', 1),
('Детка', '3:40', 1),
('Космонавт', '3:01', 2),
('Штампы', '3:08', 2),
('Дура', '3:49', 2),
('Полигамность', '2:53', 2),
('Алло', '2:53', 2),
('Чистое', '4:8', 2),
('На двоих', '3:37', 2),
('Alfred', '0:17', 3),
('Black Magic', '2:54', 3),
('Alfreds Theme', '5:39', 3),
('Tone Deaf', '4:50', 3),
('Book of Rhymes', '4:49', 3),
('Favorite Bitch', '3:56', 3),
('Guns Blazing', '3:16', 3),
('Gnat', '3:44', 3),
('The Warning', '4:22', 4),
('Mac DeMarco', '5:46', 4),
('Ghost', '3:51', 4),
('Juanes', '4:53', 4),
('Weezer', '5:34', 4),
('Royal blood', '5:28', 4),
('White Reaper', '5:22', 4),
('YB', '4:03', 4),
('Ай-яй-яй', '3:48', 5),
('Он не любит тебя', '4:14', 5),
('Киска любовь', '3:52', 5),
('Прости', '4:07', 5),
('I like', '5:29', 5),
('Не зови меня красивою', '5:15', 5),
('Парень', '3:55', 5),
('Баю-бай', '4:29', 5),
('Так тебе и надо', '3:47', 5),
('Песенка №3', '4:23', 5),
('Здравствуй, это я', '3:44', 5),
('Алёшка', '3:23', 5),
('Thunderstorm', '7:34', 6),
('The Awakening', '8:38', 6),
('Nothing Seems To Be', '9:18', 6),
('Titelbild', '7:42', 6),
('Keep your Eyes on yours', '4:05', 7),
('No, No!', '3:54', 7),
('Back 4 That', '3:34', 7),
('Gangsta Style', '3:42', 7),
('Its a Hit', '3:44', 7),
('My Baby', '3:16', 7),
('Bump Dat', '2:50', 7),
('No One on One', '3:04', 7),
('RED BLACK AND BLUE', '5:03', 8),
('WE ARE CHAOS', '4:00', 8),
('DONT CHASE THE DEAD', '4:17', 8),
('PAINT YOU WITH MY LIFE', '4:29', 8),
('HALF-WAY & ONE STEP FORWARD', '3:16', 8),
('INFINITE DARKNESS', '4:15', 8),
('PAINT YOU WITH MY LIFE', '4:29', 8),
('PERFUME', '3:33', 8),
('KEEP MY HEAD TOGETHER', '3:49', 8),
('SOLVE COAGULA', '4:22', 8),
('BROKEN NEEDLE', '5:23', 8),
('Ocean', '3:37', 9),
('Home', '3:41', 9),
('Your Loves Gives Me Gravity', '4:39', 9),
('The Center Will Not Hold', '3:50', 9),
('Out of Focus', '3:55', 9),
('Tuk Tuk', '4:13', 9),
('Never Sleep Again', '3:18', 9),
('Take Control', '4:00', 9),
('Kreatur der Nacht', '4:55', 9),
('Wadim', '4:47', 9),
('Prospect', '4:27', 9),
('Night Travel', '4:43', 9),
('Экосистема', '2:53', 10),
('Ecosystem', '3:14', 10),
('Ewigkeit', '2:14', 10),
('What about Ecosystem?', '2:25', 10);


INSERT INTO Artists(name) 
VALUES('Баста'),
('МакSим'),
('Metallica'),
('Marilyn Manson'),
('Solomun'),
('Мумий Тролль'),
('Boris Brejcha'),
('50 cent'),
('Eminem'),
('Руки вверх');

INSERT INTO genres (name) 
VALUES('Русский РЭП'),
('Industrial'),
('Trash Metall'),
('ПОП'),
('Hip-Hop'),
('House'),
('Techno'),
('Русский Рок');

INSERT INTO Collection (name) 
VALUES('The best'),
('Разное'),
('Танцы'),
('Rock is not dead'),
('Российская эстрада'),
('Сборная Рэпа');

UPDATE Collection
SET date = '17.12.2022'
WHERE id IN (1,2);

UPDATE Collection
SET date = '08.10.2017'
WHERE id IN (3,4);

UPDATE Collection
SET date = '6.06.2019'
WHERE id IN (5,6);

INSERT INTO CollectionTracks (collection_id, track_id) 
VALUES(1,2),(1,12),(1,17),(1,21),(1,20),(1,41),(1,51),(1,52),(1,56),(1,53),(1,60),(1,62),(1,68),(1,72),
(2,14),(2,47),(2,85),(2,39),(2,7),(2,15),(2,89),(2,90),
(3,76),(3,77),(3,78),(3,79),(3,80),(3,81),(3,82),(3,54),(3,55),(3,56),(3,57),
(4,65),(4,67),(4,69),(4,71),(4,73),(4,87),(4,89),(4,91),(4,34),(4,36),(4,38),
(5,2),(5,4),(5,8),(5,21),(5,23),(5,47),(5,48),
(6,10),(6,13),(6,28),(6,30),(6,32),(6,60),(6,63),(6,62);

INSERT INTO Albumsartists (album_id, artists_id) 
VALUES (1,1),(2,2),(4,3),(3,9),(5,10),(6,7),(7,8),(8,4),(9,5),(10,6);

INSERT INTO artistsgenres (artist_id, genre_id) 
VALUES (1,1), (1,5),(2,4),(3,3),(4,2),(5,6),(6,8),(7,7),(8,5),(9,5),(10,4);
