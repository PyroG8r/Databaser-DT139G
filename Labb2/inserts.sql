--inserts into table employee
INSERT INTO employee VALUES (1, 'Emil', 50000, NULL, 1);
INSERT INTO employee VALUES (2, 'Jonatan', 40000, 1, 1);
INSERT INTO employee VALUES (3, 'Ruben', 30000, 1, 1);
INSERT INTO employee VALUES (6, 'Isak', 50000, NULL, 2);

--inserts into table store
INSERT INTO store VALUES (1, 'Hemmakvall', 0702746598, 'Nacksta', 'Sundsvall', 49, 85353);
INSERT INTO store VALUES (2, 'Blockbuster', 0762488465, 'Street2', 'Sundsvall', 64, 85391);

--inserts into table movie
INSERT INTO movie VALUES (1, 'The Godfather', 175, 'Drama');
INSERT INTO movie VALUES (2, 'The Shawshank Redemption', 142, 'Drama');
INSERT INTO movie VALUES (3, 'The Dark Knight', 152, 'Action');
INSERT INTO movie VALUES (4, 'The Hateful Eight', 168, 'Western');
INSERT INTO movie VALUES (5, 'LOTR: The Return of the King', 201, 'Action');

--inserts into table member
INSERT INTO member VALUES (1, 'Greger', 'Adress83', '2018-01-01', 1);

--inserts into table movie_stock_status
INSERT INTO movie_stock_status VALUES (1, 1, 5, 1); -- ( movie_nr, store_nr, movie_stock, shelf_nr)
INSERT INTO movie_stock_status VALUES (1, 2, 0, 2);
INSERT INTO movie_stock_status VALUES (2, 1, 2, 6);
INSERT INTO movie_stock_status VALUES (2, 2, 4, 2);
INSERT INTO movie_stock_status VALUES (3, 1, 1, 3);
INSERT INTO movie_stock_status VALUES (4, 1, 0, 4);

--inserts into table reservation
INSERT INTO reservation VALUES (1, 1, '2022-10-31');

--inserts into table rental
INSERT INTO rental VALUES (1, 1, 2, 50, '2022-09-20', '2022-09-30');

--inserts into table director
INSERT INTO director VALUES (1, 'Francis Ford Coppola');
INSERT INTO director VALUES (2, 'Frank Darabont');
INSERT INTO director VALUES (3, 'Christopher Nolan');
INSERT INTO director VALUES (4, 'Quentin Tarantino');

--inserts into table movie_actor
INSERT INTO actor VALUES (1, 'Marlon Brando');
INSERT INTO actor VALUES (1, 'Al Pacino');
INSERT INTO actor VALUES (1, 'James Caan');
INSERT INTO actor VALUES (2, 'Tim Robbins');
INSERT INTO actor VALUES (2, 'Morgan Freeman');
INSERT INTO actor VALUES (3, 'Christian Bale');
INSERT INTO actor VALUES (3, 'Heath Ledger');
INSERT INTO actor VALUES (4, 'Samuel L. Jackson');
INSERT INTO actor VALUES (4, 'Kurt Russell');
