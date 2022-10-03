
--Primary keys
ALTER TABLE employee ADD CONSTRAINT employee_pk PRIMARY KEY (employee_nr);

ALTER TABLE store ADD CONSTRAINT store_pk PRIMARY KEY (store_nr);

ALTER TABLE movie ADD CONSTRAINT movie_pk PRIMARY KEY (movie_nr);

ALTER TABLE member ADD CONSTRAINT member_pk PRIMARY KEY (member_nr);

ALTER TABLE movie_stock_status ADD CONSTRAINT movie_stock_status_pk PRIMARY KEY (movie_nr, store_nr);

ALTER TABLE reservation ADD CONSTRAINT reservation_pk PRIMARY KEY (member_nr, movie_nr);

ALTER TABLE rental ADD CONSTRAINT rental_pk PRIMARY KEY (member_nr, movie_nr, rental_date);

ALTER TABLE director ADD CONSTRAINT director_pk PRIMARY KEY (movie_nr, director_name);  --alternativt UNIQUE

ALTER TABLE actor ADD CONSTRAINT actor_pk PRIMARY KEY (movie_nr, actor_name);       --alternativt UNIQUE


--Foreign keys

--employee
ALTER TABLE employee ADD CONSTRAINT employee_manager_fk FOREIGN KEY (manager_nr) REFERENCES employee(employee_nr) ON UPDATE CASCADE; --employee can have a manager

ALTER TABLE employee ADD CONSTRAINT employee_store_fk FOREIGN KEY (store_nr) REFERENCES store(store_nr) ON UPDATE CASCADE; --FK 1:N

--member
ALTER TABLE member ADD CONSTRAINT member_store_fk FOREIGN KEY (store_nr) REFERENCES store(store_nr) ON UPDATE CASCADE; --FK 1:N

--movie_stock_status
ALTER TABLE movie_stock_status ADD CONSTRAINT movie_stock_status_store_fk FOREIGN KEY (store_nr) REFERENCES store(store_nr) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE movie_stock_status ADD CONSTRAINT movie_stock_status_movie_fk FOREIGN KEY (movie_nr) REFERENCES movie(movie_nr) ON UPDATE CASCADE ON DELETE CASCADE;

--reservation
ALTER TABLE reservation ADD CONSTRAINT reservation_member_fk FOREIGN KEY (member_nr) REFERENCES member(member_nr) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE reservation ADD CONSTRAINT reservation_movie_fk FOREIGN KEY (movie_nr) REFERENCES movie(movie_nr) ON UPDATE CASCADE ON DELETE CASCADE;

--rental
ALTER TABLE rental ADD CONSTRAINT rental_member_fk FOREIGN KEY (member_nr) REFERENCES member(member_nr) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE rental ADD CONSTRAINT rental_movie_fk FOREIGN KEY (movie_nr) REFERENCES movie(movie_nr) ON UPDATE CASCADE ON DELETE CASCADE;

--director
ALTER TABLE director ADD CONSTRAINT director_movie_fk FOREIGN KEY (movie_nr) REFERENCES movie(movie_nr) ON UPDATE CASCADE;

--actor
ALTER TABLE actor ADD CONSTRAINT actor_movie_fk FOREIGN KEY (movie_nr) REFERENCES movie(movie_nr) ON UPDATE CASCADE;